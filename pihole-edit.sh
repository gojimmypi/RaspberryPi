#!/bin/bash


# allow
# see also https://raw.githubusercontent.com/anudeepND/whitelist/master/domains/whitelist.txt

pihole -w clients1.google.com
pihole -w clients2.google.com
pihole -w clients3.google.com
pihole -w clients4.google.com
pihole -w clients5.google.com
pihole -w clients6.google.com

pihole -w github.com
pihole -w github.io

pihole -w android.clients.google.com
pihole -w reminders-pa.googleapis.com firestore.googleapis.com
pihole -w googleapis.l.google.com
pihole -w www.msftncsi.com
pihole -w t.co
pihole -w stackoverflow.com
pihole -w aliexpress.com
pihole -w sourceforge.net
pihole -w dmd.metaservices.microsoft.com

# block

pihole -b www.facebook.com
pihole -b mqtt-mini.facebook.com
pihole -b edge-mqtt.facebook.com
pihole -b d3bi8llp3ktkjs.cloudfront.net
pihole -b rum8.perf.linkedin.com

