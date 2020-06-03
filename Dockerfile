FROM  centos:7
RUN   yum install epel-release -y
RUN   yum install maria-db bind-utils nc -y
COPY  run.sh /tmp
COPY  ratings.sql /tmp
COPY  shipping.sql /tmp
CMD   sh /tmp/run.sh
