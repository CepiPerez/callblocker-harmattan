#!/bin/sh

if [ "$(pidof callerx)" ]
then
  echo "callerx alreadey running!"
else
  exec /opt/CallBlocker/bin/callerx &
fi

exit

