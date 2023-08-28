FROM tomcat:9-jdk8-corretto
LABEL Auther=Karthi
LABEL WG=WG7610
RUN yum install shadow-utils -y
RUN adduser -h /gameoflife -s /bin/sh -D gameoflife
USER gameoflife
WORKDIR /gameoflife
ADD https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/gameoflife.war /gameoflife/gameoflife.war
COPY --chown=gameoflife:gameoflife /gameoflife/gameoflife.war /usr/local/tomcat/webapps/

EXPOSE 8080

