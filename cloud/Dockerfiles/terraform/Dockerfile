# Dockerfile that installs terraform, packer and aws-cli

FROM alpine:edge

RUN apk update && apk upgrade && apk add curl openssh-server sudo 

RUN adduser -S -h /home/pacman -s /bin/ash -D -G root -u 1000 pacman

RUN echo '%wheel ALL=(ALL) ALL' > /etc/sudoers.d/wheel

RUN adduser pacman wheel

RUN ssh-keygen -A && echo 'pacman:changeme' | chpasswd

RUN release=`curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest | grep tag_name | cut -d: -f2 | tr -d \"\,\v | awk '{$1=$1};1'` && wget https://releases.hashicorp.com/terraform/${release}/terraform_${release}_linux_amd64.zip && unzip terraform_${release}_linux_amd64.zip && rm terraform_${release}_linux_amd64.zip

RUN mv terraform /usr/bin/terraform 

RUN apk del curl

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
