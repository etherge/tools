#!/bin/bash
# Install git 2.0 in CentOS
yum install curl-devel expat-devel gettext-devel openssl-devel zlib-devel -yy
yum install  gcc perl-ExtUtils-MakeMaker -yy
yum remove git -yy
cd /usr/src
wget https://www.kernel.org/pub/software/scm/git/git-2.0.5.tar.gz
tar xzf git-2.0.5.tar.gz
cd git-2.0.5
make prefix=/usr/local/git all
make prefix=/usr/local/git install
echo "export PATH=$PATH:/usr/local/git/bin" >> /etc/bashrc
ln -s /usr/local/git/bin/git /usr/bin/git
