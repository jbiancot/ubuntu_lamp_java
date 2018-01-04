FROM jbiancot/ubuntu_lamp

RUN apt-get -qq update

RUN apt-get -y install software-properties-common python-software-properties

RUN apt-get -y install unzip

RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/cache/oracle-jdk8-installer

RUN apt-get clean all
  
RUN wget -q https://services.gradle.org/distributions/gradle-4.4.1-bin.zip \
    && unzip gradle-4.4.1-bin.zip -d /opt \
    && rm gradle-4.4.1-bin.zip

ENV GRADLE_HOME /opt/gradle-3.3
ENV PATH $PATH:/opt/gradle-3.3/bin
