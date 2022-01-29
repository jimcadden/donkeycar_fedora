FROM registry.fedoraproject.org/fedora:latest as baseimg
USER 0
WORKDIR /

RUN yum install -y git vim wget bzip2 
RUN chmod 777 /tmp

ADD micromamba.sh /tmp
RUN bash /tmp/micromamba.sh

ADD donkeycar.sh /tmp
RUN bash /tmp/donkeycar.sh

ADD gym-donkeycar.sh /tmp
RUN bash /tmp/gym-donkeycar.sh

ADD mycar.sh /tmp
RUN bash /tmp/mycar.sh

RUN micromamba clean --all --yes 
