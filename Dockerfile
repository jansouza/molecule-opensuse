ARG VERSION=15.4

FROM opensuse/leap:${VERSION}

RUN echo ${VERSION}

# Install Python
RUN zypper -n install git sudo python3-pip curl tar unzip gzip rsync fuse-devel; zypper clean