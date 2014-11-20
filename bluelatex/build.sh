#!/bin/bash
# build script to prepare bluelatex debian package build
# cleans previous build if needed

# version to build
VERSION="1.0.3"


# you shouldn't need to modify these
DIR="bluelatex-${VERSION}"
ARCHIVE="bluelatex_${VERSION}.orig.tar.gz"


rm ${DIR}/ -rf
tar xzf ${ARCHIVE}
if [ ! -d ${DIR} ]; then
	mv bluelatex-${VERSION} $DIR;
fi
cp -a debian ${DIR}/

echo "to do build the package, launch the following :"
echo ""
echo "cd ${DIR}"
echo "debuild -us -uc"


