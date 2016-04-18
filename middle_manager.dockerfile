FROM java:8-jdk

RUN mkdir /opt/druid
WORKDIR /opt/druid

CMD java `cat conf/druid/middleManager/jvm.config | xargs` -cp conf/druid/_common:conf/druid/middleManager:lib/* io.druid.cli.Main server middleManager

