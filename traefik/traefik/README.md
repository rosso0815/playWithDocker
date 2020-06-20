# PODMAN

```
#!/bin/bash

podname="gitea"
version="1.9"
publish_ip="192.168.0.110"

podman pod rm -f ${podname}

podman pod create --name ${podname} --hostname ${podname} -p ${publish_ip}:3000:3000

podman run -d --name ${podname}-svc --hostname ${podname}-svc --expose 3000 --pod ${podname} -e TZ="Europe/Budapest" \
 -v /srv/${podname}:/data gitea/gitea:${version}



