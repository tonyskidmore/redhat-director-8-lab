#!/bin/bash
RC=0
ansible $1 -m ping
if [ $? -eq 0 ]
then
   echo "success"
else
   echo "failure"
   RC=1
fi
exit $RC