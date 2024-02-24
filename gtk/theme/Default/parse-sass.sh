#! /bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t compact"

echo Generating the css...

sassc $SASSC_OPT Default-dark.scss gtk-contained-dark.css
sassc $SASSC_OPT Default-hc-dark.scss gtk-contained-dark.css
sassc $SASSC_OPT Default-hc.scss gtk-contained-hc.css
sassc $SASSC_OPT Default-light.scss gtk-contained-light.css
