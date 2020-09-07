#!/bin/bash

apt-get update -y
apt-get install -y sudo
useradd -s /bin/bash -m masum
mkdir /home/masum/.ssh
cat > /home/masum/.ssh/authorized_keys <<EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJt+Juw38seaM2uGbtMjSgtZND4t225YeaJtLMfViQ7zTcXWvCtAjMmryrNGwqHyiZdjnvueMnT7fnDvNxJuUzWUYG+E7W3pIV3PVzh7l7q7Ozzo/CcG5DIQdMWU2xhbGaZ6l8OzGLzBc8lVqJoQXAqbUaBuMLFpE68kz7C/xJsE6EzAs9033ag95i7YYD0A2PRWxzxOuQ615rqOqzf/0NdcLathwQa9ocKhx7oGvMYnvXIm7pk/jDg65AzV2zshD7YYznEdpBvVM5cX1f3Ef61DwwKi8L4CE3M8cxuptOWX/u0l67/NkNVUTd/vmKYFxNfD6YwDUEI7+bHIsAH/Zb masum@ubuntu
EOF
cat > /etc/sudoers.d/10_masum <<EOF
masum ALL=(ALL) NOPASSWD: ALL
EOF
#apt-get install -y ansible
