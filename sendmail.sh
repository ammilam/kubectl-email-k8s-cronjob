#! /bin/bash -e

BODY=$(kubectl get pods -A -o wide| egrep -v "(Running|Complete)")
sendEmail -f test@davita.com \
-t andrew.milam@davita.com \
-s mmnlb.davita.com:25 \
-u "Helllooooo, I am a cronjob with bad k8s news!" \
-m "These are the pods having problems:\n  \n$BODY" \
-o tls=no