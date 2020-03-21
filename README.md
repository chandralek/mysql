## Manual Steps to Install MySQL 

As per the Application need we are choosing MySQL 5.7 version.

1. Download and Extract MySQL 

```

# wget https://downloads.mysql.com/archives/get/p/23/file/mysql-5.7.28-1.el7.x86_64.rpm-bundle.tar 
# tar -xf mysql-5.7.28-1.el7.x86_64.rpm-bundle.tar 

```

2. Install MySQL  

```

# yum install mysql-community-client-5.7.28-1.el7.x86_64.rpm \
              mysql-community-common-5.7.28-1.el7.x86_64.rpm \
              mysql-community-libs-5.7.28-1.el7.x86_64.rpm \
              mysql-community-server-5.7.28-1.el7.x86_64.rpm -y 

```

## Automated Script to Install MySQL 

```
# curl -s https://raw.githubusercontent.com/linuxautomations/labautomation/master/tools/mysql/install-5.7.sh | bash
```