# Pull base image.
FROM ubuntu:18.04

# LABELS
LABEL maintainer="me@girisaurav.com.np"
LABEL name="Ubuntu18NP"
LABEL version="0"

# Timezone for Nepal
ENV TIMEZONE Asia/Kathmandu

# Adding Nepal Repo
ADD sources.list /etc/apt/

# Updating aptitude repository
RUN DEBIAN_FRONTEND=noninteractive apt-get update -yqq && \
    echo "Aptitude Updated"

#Set Working Dir
WORKDIR '~/'

RUN /bin/bash