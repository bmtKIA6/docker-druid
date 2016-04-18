FROM java:8-jdk

RUN mkdir /opt/druid
WORKDIR /opt/druid

CMD java `cat conf/druid/coordinator/jvm.config | xargs` -cp conf/druid/_common:conf/druid/coordinator:lib/* io.druid.cli.Main server coordinator
