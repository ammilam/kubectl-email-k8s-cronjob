#! /bin/bash

#!/bin/sh

docker build -t dockerhub.artifactory.davita.com/cwow-grafana/test-email-cronjob:3.1 -f Dockerfile . --no-cache
docker push dockerhub.artifactory.davita.com/cwow-grafana/test-email-cronjob:3.1
