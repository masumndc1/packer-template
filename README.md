# packer-template
Template for packer to build automated image

## How to run template from this repository.
# Creating lxc/lxd image.
We assume the target node has git and packer already installed.
1. Clone this repo into the lxd node where image will be build.
2. pwd to lxd directory in the repository
3. Next we need to findout fingerprint of the image we want to dowload. Dont download image for virtual-machine.
4. `sudo lxc image list images: centos | grep -i centos/7` for centos7 image.
5. Similarly find fingerprint for ubuntu/centos/archlinux/others lxd image.
6. Download that centos7 image to local image directory
```
sudo lxc image copy images:f603184f60a0 local: --alias centos7-base
```
7. Do same for centos8 
```
sudo lxc image copy images:d6f1ddce4258 local: --alias centos8-base
```
8. And same for others like archlinux
```
sudo lxc image copy images:5308133149fd local: --alias archlinux-base
```
9. And same for ubuntu16/18/20 
```
sudo lxc image copy images:9dcbcd968453 local: --alias ubuntu-xenial
sudo lxc image copy images:208453f095e0 local: --alias ubuntu-bionic
sudo lxc image copy images:c8d5f27751e6 local: --alias ubuntu-focal
```
10. Now you can run template to build lxd image.
11. Ubuntu `sudo packer build ubuntu16/18/20.json`
12. CentOS7 `sudo packer build centos7.json`
13. CentOS8 `sudo packer build centos8.json`
14. Archlinux`sudo packer build archlinux.json`

# Creating VM for esxi. 
## Running packer is vital on from where we are running this command.
For centos7. 
1. pwd.   
```/Users/mac/Documents/github/packer-template/vm/centos/centos-7```
2. ls.   
```centos-7-x86_64-ansible.json```
3. Now run. 
```packer build -only=esxi-iso centos-7-x86-64-ansible.json```

For Freebsd12.
1. pwd.
```/Users/mac/Documents/github/packer-template/vm/freebsd```
2. ls.  
```build_all.bat  build_all.sh  freebsd-12.0-release-ansible.json  install.sh```
3. Now run. 
```packer build -only=esxi-iso freebsd-12.0-release-ansible.json```

## more from
https://github.com/upperstream/packer-templates
