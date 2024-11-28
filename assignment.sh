# List the contents of the home directory
ls ~

# Change the current directory to /var/log and list its contents
cd /var/log && ls

# Find and display the path to the bash executable
which bash

# Find the current shell
echo $SHELL

# Create a directory named linux_fundamentals in your home directory
mkdir ~/linux_fundamentals

# Create a subdirectory named scripts inside linux_fundamentals
mkdir ~/linux_fundamentals/scripts

# Create an empty file named example.txt
touch ~/linux_fundamentals/example.txt

# Copy example.txt to the scripts directory
cp ~/linux_fundamentals/example.txt ~/linux_fundamentals/scripts/

# Move example.txt to a backup directory
mkdir ~/linux_fundamentals/backup
mv ~/linux_fundamentals/example.txt ~/linux_fundamentals/backup/

# Change permissions of example.txt
chmod 644 ~/linux_fundamentals/backup/example.txt

# Verify the permission changes
ls -l ~/linux_fundamentals/backup/example.txt

# Create a file named example.txt in your home directory
touch ~/example.txt

# Change the owner of example.txt
sudo chown student ~/example.txt

# Change the group of example.txt
sudo chgrp students ~/example.txt

# Verify the changes
ls -l ~/example.txt


# Create a directory named project
mkdir ~/project

# Create a file named report.txt
touch ~/project/report.txt

# Set permissions for report.txt
chmod 644 ~/project/report.txt

# Set permissions for the project directory
chmod 755 ~/project

# Verify the changes
ls -ld ~/project
ls -l ~/project/report.txt

# Create a new user named developer
sudo useradd -m -d /home/developer_home -s /bin/sh developer

# Verify the new user's information
id developer

# Change the username to devuser
sudo usermod -l devuser developer

# Add devuser to a group named devgroup
sudo groupadd devgroup
sudo usermod -aG devgroup devuser

# Set the password for devuser
echo "devuser:devpass" | sudo chpasswd

# Verify the changes
id devuser


# Create a symbolic link
ln -s ~/original.txt ~/softlink.txt

# Delete the original file and verify
rm ~/original.txt
ls -l ~/softlink.txt

# Create a hard link
ln ~/datafile.txt ~/hardlink.txt

# Check inode numbers
ls -i ~/datafile.txt ~/hardlink.txt

# Delete the original file and verify
rm ~/datafile.txt
ls -l ~/hardlink.txt

# Find all .txt files
find ~ -type f -name "*.txt"


# Update the repository cache
sudo apt update

# Install the tree package
sudo apt install -y tree

# Install gcloud CLI
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt install -y apt-transport-https ca-certificates gnupg
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg
sudo apt update && sudo apt install -y google-cloud-sdk






