FROM ruby:2.4.3-stretch



RUN gem install wordmove

RUN apt-get update
RUN apt-get install -y \
  locales \
  vim \
  openssh-server \
  curl \
  rsync \
  mysql-client
RUN apt-get clean

RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8


WORKDIR /home
CMD ["/bin/bash"]
