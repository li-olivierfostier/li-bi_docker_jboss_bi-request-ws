FROM ofostier/jboss-as-711
MAINTAINER Olivier FOSTIER <ofostier@gmail.com>

ARG STANDALONE_CONF_PASSWD

RUN echo "PASSWD : $STANDALONE_CONF_PASSWD"

ADD bi-request-ws.war /opt/jboss-as-7.1.1.Final/standalone/deployments/bi-request-ws.war

RUN mv /opt/jboss-as-7.1.1.Final/standalone/configuration/standalone.xml /opt/jboss-as-7.1.1.Final/standalone/configuration/standalone.xml.sav

ADD standalone.xml /opt/jboss-as-7.1.1.Final/standalone/configuration/standalone.xml
# configuration
#RUN sed -i -r 's/DTM_BI_PWD/a0TU3VH/' \
RUN sed -i -r "s/DTM_BI_PWD/$STANDALONE_CONF_PASSWD/" \
    /opt/jboss-as-7.1.1.Final/standalone/configuration/standalone.xml

RUN more /opt/jboss-as-7.1.1.Final/standalone/configuration/standalone.xml

COPY connectors/oracle /opt/jboss-as-7.1.1.Final/modules/com/oracle
COPY connectors/mysql /opt/jboss-as-7.1.1.Final/modules/com/mysql


