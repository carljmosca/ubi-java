FROM registry.access.redhat.com/ubi7/ubi:7.7-214

RUN yum install -y java-11-openjdk-11.0.5.10-0.el7_7.x86_64 openssl

COPY /root/ /

RUN chmod g=u /etc/passwd

ENV JAVA_OPTS=-Djava.security.egd=file:/dev/./urandom

ENTRYPOINT ["/entrypoint.sh"]