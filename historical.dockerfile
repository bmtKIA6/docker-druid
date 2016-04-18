FROM java:8-jdk

RUN mkdir /opt/druid
WORKDIR /opt/druid

CMD java `cat conf/druid/historical/jvm.config | xargs` -cp conf/druid/_common:conf/druid/historical:lib/* io.druid.cli.Main server historical

