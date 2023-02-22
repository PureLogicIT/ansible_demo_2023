# Configure SSH config
```
Host awsjump
    Hostname 3.234.48.79
    User ubuntu
Host pl_rhel_demo2 192.168.254.174
    Hostname 192.168.254.174
    ProxyJump awsjump
    User ec2-user
    IdentityFile  /home/jlevac/keys/rhkey
Host pl_rhel_demo0 192.168.254.151
    Hostname 192.168.254.151
    ProxyJump awsjump
    User ec2-user
    IdentityFile  /home/jlevac/keys/rhkey
Host pl_rhel_demo1 192.168.254.137
    Hostname 192.168.254.137
    ProxyJump awsjump
    User ec2-user
    IdentityFile  /home/jlevac/keys/rhkey
```
