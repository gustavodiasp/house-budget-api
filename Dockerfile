#Copy ruby image
from ruby:3.2.8

#Search for updates, install them without cmd confirmation and install mysql client
RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y default-mysql-client libmysqlclient-dev \
  && rm -rf /var/lib/apt/lists/*
