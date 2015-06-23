## -*- docker-image-name: "armbuild/scw-app-ansible:latest" -*-
FROM armbuild/scw-distrib-ubuntu:trusty
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install ansible
RUN apt-get -q update \
 && apt-get -y -q upgrade \
 && apt-get install --no-install-recommends -y software-properties-common \
 && apt-add-repository ppa:ansible/ansible \
 && apt-get update \
 && apt-get install -y ansible \
 && apt-get clean


RUN printf "[local]\nlocalhost" > /etc/ansible/hosts


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
