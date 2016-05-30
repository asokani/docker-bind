#!/bin/bash
for ZONE in `find /etc/bind/zones -type f -name "*.zone"`
do
  DOMAIN=`echo $ZONE | rev | cut -d'/' -f1 | rev`
  DOMAIN_NAME=`echo $DOMAIN | sed -e 's/\.zone$//g'`
  echo $DOMAIN_NAME
done