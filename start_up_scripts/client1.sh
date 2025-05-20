#!/bin/bash
# Update and install basic tools
apt update && apt install -y net-tools curl samba

# Set up a Samba shared folder
mkdir -p /srv/shared
chmod 777 /srv/shared

cat <<EOF > /etc/samba/smb.conf
[global]
workgroup = WORKGROUP
server string = Samba Server
security = user
map to guest = Bad User

[Shared]
path = /srv/shared
browsable = yes
writable = yes
guest ok = yes
EOF

systemctl restart smbd
