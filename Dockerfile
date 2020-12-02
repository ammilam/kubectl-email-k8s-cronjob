FROM bitnami/kubectl:1.18-debian-10
USER root
RUN apt-get update && apt-get install -y sendemail libio-socket-ssl-perl ca-certificates && apt-get clean
EXPOSE 25
ENTRYPOINT [ "sh" ]
