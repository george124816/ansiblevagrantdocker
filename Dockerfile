FROM ubuntu:latest

RUN apt update && apt install  openssh-server sudo iproute2 -y

RUN useradd -rm -d /home/vagrant -s /bin/bash -g root -G sudo -u 1000 vagrant 

COPY authorized_keys /home/vagrant/.ssh/

RUN  echo 'vagrant:vagrant' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
