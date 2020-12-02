#! /bin/bash -e

BODY=$(kubectl get pods -o wide)
sendEmail -f test@davita.com \
-t andrew.milam@davita.com \
-s mmnlb.davita.com:25 \
-u "Test email with cc and bcc recipients" \
-m "These are the pods having problems:\n  \n$BODY" \
-o tls=no