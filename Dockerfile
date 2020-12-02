FROM debian:stable-slim
COPY sendmail.sh .
RUN apt-get update && apt-get install -y sendemail libio-socket-ssl-perl ca-certificates && apt-get clean && rm -r /var/lib/apt/lists/*
EXPOSE 25
USER root
ENTRYPOINT [ "./sendmail.sh" ]