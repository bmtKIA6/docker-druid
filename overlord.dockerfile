FROM java:8-jdk

RUN mkdir /opt/druid
WORKDIR /opt/druid

CMD java `cat conf/druid/overlord/jvm.config | xargs` -cp conf/druid/_common:conf/druid/overlord:lib/* io.druid.cli.Main server overlord

