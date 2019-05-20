# setup folders
mkdir ~/Downloads/extract_vpn_temp/

# get the file and place in temp folder
wget https://github.com/Luckey-Elijah/floridapoly_vpn_installer/blob/master/PanGPLinux-4.1.9-c3.tgz -P ~/Downloads/extract_vpn_temp/

# extract file 
tar -xvf PanGPLinux-4.1.9-c3.tgz -C ~/Downloads/extract_vpn_temp

# install the package
echo "\n+--- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---+"
echo "| Please type your password to continue the installation. |"
echo "+--- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---+\n"
sudo dpkg -i ~/Downloads/extract_vpn_temp/GlobalProtect_deb-4.1.9.0-2.deb

# cleanup
echo "\n+--- ---- ---- ---+"
echo "| Cleaning up...  |"
echo "+--- ---- ---- ---+\n"
rm -rf ~/Downloads/extract_vpn_temp/

# run VPN
echo "\n+-- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- --+"
echo "|   Starting VPN Client. Connecting to vpn.floridapoly.edu   |"
echo "|   user: yourname1234              password: yourpassword   |"
echo "+-- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- --+\n"
globalprotect connect -p vpn.floridapoly.edu