FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update; \
  apt-get install -y gcc python-dev libkrb5-dev; \
  apt-get install python3-pip -y; \
  pip3 install --upgrade pip; \
  pip3 install --upgrade virtualenv; \
  pip3 install pywinrm[kerberos]; \
  apt install krb5-user -y; \
  pip3 install pywinrm; \
  pip3 install jmspath; \
  pip3 install requests; \
  pip3 install ansible; \
  pip3 install ansible-tower-cli; \
# Recomendada  
  pip3 install awx; \
  pip3 install awxkit; \
  pip3 install sphinx sphinxcontrib-autoprogram

#otrso paquetes qur por ahora no se esrtaria necesitando
# pip3 install setuptools_rust
# pip3 install wheel
# pip3 install docker-compose 
# apt install  git gcc  ansible nodejs gettext  lvm2 bzip2 python3-pip wget nano

#Version Vieja
# cd ~
#  git clone -b 17.1.0 https://github.com/ansible/awx.git


  