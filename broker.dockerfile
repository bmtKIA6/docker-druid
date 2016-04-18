FROM java:8-jdk

RUN mkdir /opt/druid
WORKDIR /opt/druid

CMD java `cat conf/druid/broker/jvm.config | xargs` -cp conf/druid/_common:conf/druid/broker:lib/* io.druid.cli.Main server broker
