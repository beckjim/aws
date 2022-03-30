OLDPWD=`pwd`
TMPDIR=`mktemp -d`
cd $TMPDIR
echo downloading latest awscliv2 zip package
curl -s "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -q awscliv2.zip
sudo ./aws/install --update


rm -rf $TMPDIR
cd $OLDPWD

echo downloading latest eksctl package
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
