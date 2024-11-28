# 🌟 Linux Fundamentals Assignment  

Welcome to the **Linux Fundamentals Assignment** repository! This guide will walk you through the essential Linux commands required for file system navigation, user management, permissions, links, and package installation. Let's dive into the exciting world of Linux! 🐧

---

## 📁 1. Setup the Repository  

### **Initialize a Git Repository:**
```bash
git init linux_fundamentals  
cd linux_fundamentals
```

### **Create the Directory Structure:**
```bash
mkdir screenshots  
touch README.md assignment.sh
```

All commands for this assignment are stored in `assignment.sh`, and screenshots are in the `screenshots` folder.

---

## 🛠 2. Commands and Screenshots  

### 🔍 **File System Navigation**  

#### **List the contents of the home directory:**  
```bash
ls ~
```

#### **Change to `/var/log` and list its contents:**  
```bash
cd /var/log && ls
```

#### **Find the path to the bash executable:**  
```bash
which bash
```

#### **Find the current shell:**  
```bash
echo $SHELL
```

---

### 📂 **File and Directory Operations**  

#### **Create directories and files:**  
```bash
mkdir ~/linux_fundamentals  
mkdir ~/linux_fundamentals/scripts  
touch ~/linux_fundamentals/example.txt  
```

#### **Copy `example.txt` to the `scripts` directory:**  
```bash
cp ~/linux_fundamentals/example.txt ~/linux_fundamentals/scripts/
```

#### **Move `example.txt` to `backup`:**  
```bash
mkdir ~/linux_fundamentals/backup  
mv ~/linux_fundamentals/example.txt ~/linux_fundamentals/backup/
```

---

### 🔑 **Permissions**  

#### **Change permissions of `example.txt`:**  
```bash
chmod 644 ~/linux_fundamentals/backup/example.txt
```

#### **Verify permission changes:**  
```bash
ls -l ~/linux_fundamentals/backup/example.txt
```

---

### ✏️ **File Modification**  

#### **Create and change ownership of `example.txt`:**  
```bash
touch ~/example.txt  
sudo chown student ~/example.txt  
sudo chgrp students ~/example.txt
```

#### **Verify ownership changes:**  
```bash
ls -l ~/example.txt
```

---

### 🏗 **Ownership**  

#### **Set permissions for `project` and `report.txt`:**  
```bash
mkdir ~/project  
touch ~/project/report.txt  
chmod 644 ~/project/report.txt  
chmod 755 ~/project  
ls -ld ~/project  
ls -l ~/project/report.txt
```

---

### 👤 **User Add/Modify**  

#### **Create and modify a user:**  
```bash
sudo useradd -m -d /home/developer_home -s /bin/sh developer  
id developer  
sudo usermod -l devuser developer  
sudo groupadd devgroup  
sudo usermod -aG devgroup devuser  
echo "devuser:devpass" | sudo chpasswd  
id devuser
```

---

### 🔗 **Hard and Soft Links**  

#### **Create and verify links:**  
```bash
ln -s ~/original.txt ~/softlink.txt  
rm ~/original.txt  
ls -l ~/softlink.txt  

ln ~/datafile.txt ~/hardlink.txt  
ls -i ~/datafile.txt ~/hardlink.txt  
rm ~/datafile.txt  
ls -l ~/hardlink.txt  
find ~ -type f -name "*.txt"
```

---

### 📦 **Package Installation**  

#### **Install packages:**  
```bash
sudo apt update  
sudo apt install -y tree  

echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list  
sudo apt install -y apt-transport-https ca-certificates gnupg  
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo tee /usr/share/keyrings/cloud.google.gpg  
sudo apt update && sudo apt install -y google-cloud-sdk
```

---

🎉 **Feel free to explore and improve! Contribute by sharing feedback, submitting PRs, or just using the code. Happy Linux-ing!** 🐧
