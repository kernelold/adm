#!/bin/sh
SSH_DAEMON="/usr/bin/ssh"
SSH_DAEMON_OPTS="-2 -N -f -L"
LOCAL_PREF="10051:<YOUR_LOCAL_OPENSHIFT_IP>:30051"
REMOTE_PREF="<USER>@<YOUR_SERVER>.rhcloud.com"
CONNECT=" $SSH_DAEMON $SSH_DAEMON_OPTS $LOCAL_PREF $REMOTE_PREF"
#
if ps auxww | grep "$CONNECT" | grep -vc "grep" ; then
   $CONNECT
   exit 0;
else
  exit 0;
fi
