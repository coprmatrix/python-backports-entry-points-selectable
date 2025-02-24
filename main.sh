#!/bin/bash -x
cd "${outdir:-.}"
pyp2conf backports.entry_points_selectable
sed  's/"docs",//g;s/"testing",//g;' -i *.conf
conf2spec *.conf
sed 's/-l \.\.\./"\*" +auto/g' -i *.spec
