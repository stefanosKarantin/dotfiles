#!/usr/bin/env bash

function print-version-if-exists {
  if which $1 > /dev/null 2>&1; then echo "$1 $($1 ${2:---version} | sed 's/[^0-9]*//')" ; fi
}

function print-version-of-gnome-apps {
  if which nautilus > /dev/null 2>&1; then echo "nautilus $(nautilus --version |& grep GNOME | sed 's/[^0-9]*//')"; fi

  for prb in \
  gnome-shell \
  gnome-terminal \
  gedit \
  gnome-builder \
  gnome-calendar \
  gnome-control-center \
  gnome-software \
  gnome-books \
  gnome-system-monitor
  do
    print-version-if-exists $prb | column -t
  done
}


print-version-of-gnome-apps | column -t
