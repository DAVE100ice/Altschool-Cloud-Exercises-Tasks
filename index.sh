# Exercise:

#a.)Create 3 groups – admin, support & engineering and add the admin group to sudoers. 
# b.)Create a user in each of the groups. 
# c.)Generate SSH keys for the user in the admin group

# a.) Submit the contents of /etc/passwd, /etc/group, /etc/sudoers


 # a.) Creating the groups
 sudo groupadd admin 

 sudo groupadd support

 sudo groupadd engineering

# To open the Sudoers file
 #sudo visudo

# Then We Navigate to the part of the file where user privileges are defined. 
 # %admin ALL:(ALL:ALL)

# For the Creating the User
sudo useradd admins

sudo useradd supports

sudo useradd engineerings

# Then to add the User to the Various Groups

usermod -aG admin admins

usermod -aG support supports

usermod -aG engineering engineerings

# Generate SSH keys for the user in the admin group

 # sudo su admins

 # ssh-keygen 