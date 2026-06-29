#silent
c       comment selection
	TMPFILE=`mktemp ${MC_TMPDIR:-/tmp}/up.XXXXXX` || exit 1
	echo "/*" > $TMPFILE
	cat %b >> $TMPFILE
	echo "\n*/" >> $TMPFILE
	cat $TMPFILE > %b
	rm -f $TMPFILE