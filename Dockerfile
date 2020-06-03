FROM  centos:7
RUN   yum install epel-release -y
RUN   yum install maria-db bind-utils nc -y
COPY  run.sh /
CMD   sh /run.sh
