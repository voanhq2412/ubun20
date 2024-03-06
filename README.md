# Ubuntu_setup

This Repo includes predefined settings and scripts for setting up Ubuntu 20.

- Theme
- App installation script
- Programming env setup

---

**Installation Options**

- Minimal Installation
- Download Updates
- Install third-party software

Partitioning:

- Root (ext4, at least 25 GB)
- Swap (swap, double size of RAM)
- EFI (efi, 100 MB)
- Home (ext, the remaining)

---

**Initial Setup**

1. ```
   sudo apt -y install git
   ```

2. Login Github, setup SSH key and clone this repo

   ```
   https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
   ```

3. ```
   bash apps.sh
   bash themes.sh
   ```

---

**NVidia Driver Setup for Linux**

1. Run:

   ```
   lspci -k | grep -EA3 'VGA|3D|Display' 
   ```

   ... to check whether drivers have been installed; the output should include something like *Kernel driver in use: i915* for your Intel GPU, and *Kernel driver in use: nvidia* for Nvidia GPU. If not, then complete the remaining steps.
2. Blacklist the Nouveau drivers (these are default drivers for Nvidia on Linux)

```
 sudo nano /etc/modprobe.d/blacklist.conf
```

3. Insert:

   ```
   blacklist nouveau
   blacklist lbm-nouveau
   options nouveau modeset=0
   alias nouveau off
   alias lbm-nouveau off
   ```

4. Install Intell Drivers (if you have intel Drivers)

   ```
   sudo apt-get install mesa-utils && sudo apt-get install intel-microcode
   ```

5. Install NVidia Drivers from 'Software & Updates' then

   ```
   sudo update-initramfs -u
   ```

More details:

[https://askubuntu.com/questions/61396/how-do-i-install-the-nvidia-drivers](https://askubuntu.com/questions/61396/how-do-i-install-the-nvidia-drivers)

[https://medium.com/bigdatarepublic/gpu-machine-learning-on-linux-fa972dd77cf2](https://medium.com/bigdatarepublic/gpu-machine-learning-on-linux-fa972dd77cf2)

---

**Gnome Extensions** (Need to set up Chrome and sync extensions first)
[https://extensions.gnome.org/extension/3906/remove-app-menu/](https://extensions.gnome.org/extension/3906/remove-app-menu/)
[https://extensions.gnome.org/extension/3960/transparent-top-bar-adjustable-transparency/](https://extensions.gnome.org/extension/3960/transparent-top-bar-adjustable-transparency/)
[https://extensions.gnome.org/extension/744/hide-activities-button/](https://extensions.gnome.org/extension/744/hide-activities-button/)

---

**Python Setup**

1. Install python & virtualenv:

   ```
   bash python.sh
   ```

2. start virtual env:

   ```
   source py37/bin/activate
   ```

3. stop virtual env:

   ```
   deactivate
   ```

---

**Ruby Setup**

```
   bash ruby.sh
```

---

**Julia Setup**

```
   sudo snap install julia --classic
```

---
---
---

**Common Git commands**

Clone repo

```
git clone "..."
```

Git add file/changes

```
git add "..."
```

Git add everything

```
git add .
```

Commit

```
git commit -m "comment"
```

Revert previous 3 commits

```
git reset HEAD~3
```

List all branches

```
git branch
```

Switch branch

```
git checkout "branch name"
```

Create branch

```
git checkout -b "new branch name"
```

Upload changes to github

```
git push
```

Delete branch locally

```
git branch -D localBranchName
```

Delete branch remotely

```
git push origin --delete remoteBranchName
```

Rename currrent branch

```
git branch -m "newname"
```

Update local branch

```
git fetch
git pull origin "branch_name"
```

Fetching another person's remote branch
etc. git fetch {git_repo} {their branch}:{new branch name}

```
git fetch git@github.com:Propertypricetag/ppt_data.git cc/supplydemand_chart:quocanh/sdc
```

or

```
git branch + Double tab
```

Update current branch based on master

```
git checkout master
git pull
git checkout my_working_branch
git rebase master
```

**Connect to server and file transfer**

1. Connect to AWS EC2:

   ```
   ssh -i "private_key.pem" ec2-user@"EC2 public ip"
   ```

2. Copy local file to server:

   ```
   scp -i "private_key.pem" -r 'local_file' ec2-user@"EC2 public ip":"path_to_copy_to"
   ```

3. Copy file from server to local:

   ```
   scp -i "private key id_ed..." -r ubuntu@umvnrobots:~/zork/current/log/agho.log ~/Documents
   ```

4. Change permission of file:

   ```
   sudo chmod -R 777 "file/dir"
   ```
5. Create screen to run code uninterrupted
   ```
   screen -S 'instance_name'
   screen -x 'instance_name'
   ```

---
---

**Process management**

To check which process using which port

```
   lsof -i
```

To check memory consumption
```
   top (then Shift + M)
```

To kill process

```
   kill 'PID'
```

To force kill by keyword

```
   pkill -9 -f chrome
```

To copy text from nano, run the following then copy from the terminal rather than copy straight from within nano.

```
   cat file.txt
```
---


**Run Jupyter from remote server with GUI on local**
[https://ljvmiranda921.github.io/notebook/2018/01/31/running-a-jupyter-notebook/](https://ljvmiranda921.github.io/notebook/2018/01/31/running-a-jupyter-notebook/)

1. On remoteuser@remotehost, run headless jupyter through port XXXX

   ```
   jupyter notebook --no-browser --port=XXXX
   ```

2. On localuser@localhost, forward via ssh

   ```
   ssh -N -f -L localhost:YYYY:localhost:XXXX remoteuser@remotehost
   ```

3. On local browser, go to

   ```
   localhost:YYYY
   ```
