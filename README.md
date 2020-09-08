# packer-template
Template for packer to build automated image

## Currently centos and archlinux has multiple image on same name.
## Therefore, we need to find out the fingerprints of the image.
## Run following to find the fingerprint(only for centos/archlinux).
`sudo lxc image list images: | grep -i centos
## And from the output select fingerprint of container not VM.

## How to run template from this repository.
We assume the target node has git and packer already installed.
1. Clone this repo into the lxd node where image will be build.
2. pwd to lxd directory in the repository
3. run `sudo packer build ubuntu16.json`

