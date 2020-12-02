#! /bin/bash -e

BODY=$(kubectl get pods -A -o wide| egrep -v "(Running|Complete)")
sendEmail -f k8s_is_sad_alert@davita.com \
-t andrew.milam@davita.com \
-t SunilSagar.Uppala@davita.com \
-s mmnlb.davita.com:25 \
-u " Helllooooo, I am a cronjob with bad [sea1sbx] k8s news!" \
-m "These are the pods having problems:\n  \n$BODY" \
-o tls=no