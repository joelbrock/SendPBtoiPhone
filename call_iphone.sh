#!/bin/bash

# Edit these lines
# ----------------------

# Your pushover user key
user=""
# Your API token (get one here: https://pushover.net/apps/build )
token=""
# The name of your mobile device to send to
device=""

# ----------------------
# Dont edit these lines

no=`pbpaste`
msg="$no"
tel="tel://$no"

curl -s \
  -F "token=$token" \
  -F "device=$device" \
  -F "user=$user" \
  -F "message=$msg" \
  -F "url=$tel" \
  -F "url_title=Click to call" \
  https://api.pushover.net/1/messages.json