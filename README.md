# donkeycar_fedora
DonkeyCar container based on fedora:latest 


```
docker run --privileged -v /opt/vc/lib:/opt/vc/lib -v /dev/i2c-1:/dev/i2c-1 -it --rm docker.io/jcaddenibm/donkeycar_fedora:arm64 /bin/bash
```
