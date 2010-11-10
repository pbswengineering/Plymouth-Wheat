#!/bin/bash

echo -e '\n  WHEAT PLYMOUTH THEME SETUP\n'
THIS_SCRIPT_DIR=$(dirname "$0")

echo '  Copying theme files...'
sudo rm -fr /lib/plymouth/themes/wheat
sudo cp -r "$THIS_SCRIPT_DIR/wheat" /lib/plymouth/themes/wheat

echo '  Configuring Wheat as default theme...'
sudo update-alternatives --install /lib/plymouth/themes/default.plymouth default.plymouth /lib/plymouth/themes/wheat/wheat.plymouth 100
sudo update-alternatives --set default.plymouth /lib/plymouth/themes/wheat/wheat.plymouth

echo '  Updating initramfs...'
sudo update-initramfs -u

echo
echo '  Installation completed!'
echo
