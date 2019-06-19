# VPN Installer for Florida Polytechnic University

Small, simple scripts for install the Florida Polytechnic University's VPN Client for accessing the Ember lab. If you're already on their network, no need for the VPN Client to be running. In remote scenarios, the VPN is necessary. I recommend creating an alias in you `.bashrc` or `.zshrc` file to the `vpn_conect.sh` script so you can connect quicker and easier. See below on how to o that.

## Notes

*Tested and tried only for **Ubuntu 18.04** LTS System and for **Ubuntu 19.04** System.*

Package being installed: **GlobalProtect App for Linux from Paloalto Networks**

Docs used for reference [here](https://docs.paloaltonetworks.com/globalprotect/4-1/globalprotect-app-user-guide/globalprotect-app-for-linux/download-and-install-the-globalprotect-app-for-linux.html#) from Paloalto Networks.

## Setting up alias

1. You need to have the repo on your local machine: `git clone https://github.com/Luckey-Elijah/floridapoly_vpn_installer.git`

2. And then in your home directory,  edit the `.bashrc` or `.zshrc` file (depends on what shell you are using): `echo "alias flpoly_vpn='/path/to/vpn_conect.sh'" >> .bashrc` or `echo "alias flpoly_vpn='path/to/vpn_conect.sh'" >> ~/.zshrc`

3. Restart shell session. Now when running `flpoly_vpn` you will either connect or disconnect from the 

## Questions?

Send an email to me via [eluckey2472@floridapoly.edu](mailto:eluckey2472@floridapoly.edu) for any questions.