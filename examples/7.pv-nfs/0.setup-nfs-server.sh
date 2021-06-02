# Install NFS Server
yum update -y
yum install -y nfs-utils
systemctl enable rpcbind
systemctl enable nfs-server
systemctl enable nfs-lock
systemctl enable nfs-idmap
systemctl start rpcbind
systemctl start nfs-server
systemctl start nfs-lock
systemctl start nfs-idmap

# Config NFS Server
#vi /etc/exports
#/data/mydata  *(rw,sync,no_subtree_check,insecure)

cat >> "/etc/exports" << EOF
/data/mydata  *(rw,sync,no_subtree_check,insecure)
EOF

# Make shared directory
mkdir -p /data/mydata
chmod -R 777 /data/mydata

# Restart and check service
systemctl stop nfs-server
systemctl start nfs-server
systemctl status nfs-server

# export and check config
exportfs -rav
exportfs -v
showmount -e
