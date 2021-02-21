
https://blog.kilian.io/server-setup/


docker run --network=master  -it centos:centos7 /bin/bash


docker run --network=localhost  --rm alpine cat /etc/resolv.conf


https://passingcuriosity.com/2013/dnsmasq-dev-osx/


docker network create home




laptop
    static ip
    192.168.0.100

dnsmasq
    .pfistera



dig testing.home @192.168.0.100

http://traefik.home:8080/dashboard


http://whoami.home


{
  "debug" : true,
  "experimental" : false,
  "dns": [ "192.168.0.100" ],
}

for i in $( ls -d1 */ ) ; do ( cd $i && docker-compose down ) ; done
