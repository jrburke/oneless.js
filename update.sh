#!/bin/bash

#./volo.js create less cloudhead/less.js

SRC=less/lib/less

cat wrap.start $SRC/parser.js\
 $SRC/functions.js $SRC/colors.js $SRC/tree/*.js $SRC/tree.js\
 func.start $SRC/index.js func.end func.start less/bin/lessc func.end wrap.end > oneless.js

# Strip out the node executable part from lessc
sed -e 's@\#\!/usr/bin/env node@@' oneless.js > oneless-temp.js

# Compress it
~/scripts/closure.sh oneless-temp.js oneless-min.js

# Add in copyright and node executable stuff.
cat exec.prefix less/build/header.js oneless-min.js > oneless.js

chmod +x oneless.js

# Clean up
rm oneless-temp.js
rm oneless-min.js

