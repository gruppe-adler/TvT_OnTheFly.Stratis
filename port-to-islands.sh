#!/bin/bash

# change this to your local cpbo path
cpbo_path="$1" || "./cpbo.exe"


### AS AS USER, DONT EDIT BELOW THIS LINE ###


if [[ ! -f $cpbo_path ]]; then
	echo "warning: cpbo path not found, will not build pbo files!"
	exit 1
fi


head=`git reflog --decorate -1`

# if possible, use current tag...
version=`echo $head | grep -o -E 'tag: \w+' | sed -e 's/tag: //'`
if [[ $version == "" ]]; then
	# ...if not, use commit hash
	version=`echo $head | grep --color=never -o -E '^[0-9a-f]+'`
fi

if [[ $version = "" ]]; then
	echo "cant find tag OR commit hash. are you sure we're having a .git directory here?"
	exit 2
fi

islands=(
	Altis
	Bornholm
	Chernarus
	Chernarus_Summer
	FDF_Isle1_a
	Gorgona
	IsolaDiCapraia
	Panthera3
	Sara_dbe1
	Shapur_BAF
	Stratis
	Thirsk
	Woodland_ACR
	Zargabad
	clafghan
	fata
	saru
	takistan
	xcam_prototype
)

missionname="TvT_OnTheFly_$version"

cwd=`pwd`

builddir="$cwd/../tmp-build"
tmpdir="$builddir/$tmpdir"

cp -r ./ $tmpdir
rm $tmpdir/*.sh
rm $tmpdir/*.bat
rm -r $tmpdir/.*

for island in "${islands[@]}"; do
	islanddir="$builddir/$missionname"
	mv $tmpdir $islanddir
	echo "building for $island...";
	($cpbo_path -y -p $islanddir && echo "done") || echo "fail o.O"
	mv $islanddir $tmpdir

done

echo "done packing. clean up..."
rm -r $tmpdir
echo "plz see $builddir for pbo files"
sleep 2
