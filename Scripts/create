#!/bin/bash

maindir=`cat ~/.settings`

OPTS=`getopt -o b: --long help: -n 'parse-options' -- "$@"`

if [ $? != 0 ] ; then echo "Failed parsing options." >&2 ; exit 1; fi

eval set -- "$OPTS"

HELP=false
BOOST=false

while true; do
	case "$1" in
		-b)
			BOOST=true;
			shift ;
			;;
		--help)
			HELP=true;
			shift ;
			;;
		--)
			shift;
			break;
			;;
		*)
			break;
			;;
	esac
done

echo HELP= $HELP
echo BOOST=$BOOST

name=$1
shift
echo "The name of the project is $name"

function make_new
{
	cp -a $maindir/Home/cpp_project $1
	if [ $? != 0 ] ; then echo "Failed to copy" >&2 ; exit 1; fi
	cd $1
	sed -i -e 's/NewProject/'"$1"'/' CMakeLists.txt
	git init
	git add -A .
	git commit -m 'Initial commit'
	git checkout -b work

}
make_new $name

