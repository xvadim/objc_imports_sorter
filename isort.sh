#! /bin/sh
#
# isort.sh
# Copyright (C) 2015 Vadym Khokhlov
#
# Reads input which should be block of Obj-C's import statements and sorts in the next order:
#
# @import Module;
#
# #import <Third>
# #import <Party>
# #import <Modules>
#
# #import "Projects"
# #import "Modules"

tempfoo=`basename $0`
ORIG_FN=`mktemp ${TMPDIR:-'/tmp/'}${tempfoo}.XXXXXX`

cat /dev/stdin > $ORIG_FN

grep '@import' $ORIG_FN | sort | uniq
echo
grep '#import *<' $ORIG_FN | sort | uniq
echo
grep '#import *"' $ORIG_FN | sort | uniq

rm $ORIG_FN
