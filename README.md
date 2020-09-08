# packer-template
Template for packer to build automated image

## How to run template from this repository.
We assume the target node has git and packer already installed.
1. Clone this repo into the lxd node where image will be build.
2. pwd to lxd directory in the repository
3. run `sudo packer build ubuntu16.json`

### Only for CentOS/Archlinux/Otherlinux
```
Currently centos and archlinux has multiple images on same name.
Therefore, we need to find out the fingerprints of the image.
Run following to find the fingerprint(only centos/archlinux not ubuntu).
```
> `sudo lxc image list images: centos | grep -i centos/7`
```
And from the output select fingerprint of container not VM.
Download that centos7 image to local image directory
```
> `sudo lxc image copy images:f603184f60a0 local: --alias centos7-base`
```
Do same for centos8 
```
> `sudo lxc image copy images:d6f1ddce4258 local: --alias centos8-base`
```
And same for others like archlinux
```
> `sudo lxc image copy images:5308133149fd local: --alias archlinux-base`

4. Now run `sudo packer build centos7.json`
5. Do same for centos8.
`sudo packer build centos8.json`
6. And for archlinux.
`sudo packer build archlinux.json`
