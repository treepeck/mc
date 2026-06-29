f       Go Code formatting
        TMPFILE=`mktemp ${MC_TMPDIR:-/tmp}/up.XXXXXX` || exit 1
        cp %b $TMPFILE
        gofmt -w $TMPFILE
        cp $TMPFILE %b
        rm -f $TMPFILE