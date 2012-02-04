# oneless.js

Creates a single JS file that contains the less compiler. This one JS file is
for running in Node:

    node oneless.js main.less > main.css

## Prerequisites

1) Do a clone of less.js in this directory, but call it "less":

    git clone https://github.com/cloudhead/less.js.git less

2) Have closure compiler available, and runnable via a shell script at
`~/scripts` such that the following command works:

    ~/scripts/closure.sh input.js output.js

## Creating oneless.js

Just run `update.sh`, but note the closure compiler location used above. You may
need to edit update.sh and change the command for closure compiler for the
compression to work correctly.
