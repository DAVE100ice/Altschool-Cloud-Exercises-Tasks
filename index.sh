#!/bin/bash
# Create 3 groups – admin, support & engineering and add the admin group to sudoers. 
# Create a user in each of the groups. 
# Generate SSH keys for the user in the admin group


 # To Create the groups
 sudo groupadd admin
 sudo groupadd support
 sudo groupadd engineering

 # Add the admin group to the sudoers file:
 sudo visudo
 %admin ALL=(ALL:ALL) ALL 

 # Create a user in each of the groups: For the admin group:
 sudo useradd -m -G admin 
 sudo useradd -m -G support
 sudo useradd -m -G engineering 

 # Generate SSH keys for the user in the admin group 
 sudo su admin_user
 # Generate an SSH key pair :
 ssh-keygen -t rsa

 # After that we will You will be prompted to enter a location for the SSH key pair you can press Enter to accept the default location and set a passphrase 


