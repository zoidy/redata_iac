## Description
Configures a freshly created Ubuntu Focal Droplet with XRDP to enable graphical login via any RDP client via an SSH tunnel. SSH access to the Droplet itself is via key authentication only. This is useful for data curation as it is possible to view/edit large datasets (e.g., geospatial data) more easily. It is also possible to edit the curation report remotely.

## Configure
Edit ```install-RDP_GUI-Ubuntu-Droplet-template.yml``` and follow the instructions therein. 

- You will need to know the host/IP address of the Droplet and put it in the ```<host>``` variable. 
- You will also need to specify a username/password you wish to use to log in to the system with (password login is only available once connected via SSH tunnel) and put that in the ```<user>```/```<password>``` variable. 
- Finally you will need your private and public SSH keys to create the tunnel and connect to the curation shared drive via SSHFS.

See the template for more detailed instructions and additional variables.

## Connecting from Windows
1. Download ```ssh.exe``` from https://github.com/PowerShell/Win32-OpenSSH and put it in the ```CurationRemoteConnectFiles``` folder
2. Edit ```curation-remote-connect.cmd``` and change the ```<user>``` and ```<host>``` placeholders to the values you used previously.
3. Double click the ```CurationRemoteConnect``` shortcut. This will create an ssh tunnel to the Droplet and launch the built-in Windows Remote Desktop client using the pre-configured Default.rdp profile.
