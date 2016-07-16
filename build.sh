#!/bin/bash -ex

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/pkgconfig:/Library/Frameworks/Mono.framework/Versions/4.4.1/lib/pkgconfig
export PATH=/Library/Frameworks/Mono.framework/Commands:$PATH
export AS="as -arch i386"
export CC="cc -arch i386 -framework CoreFoundation -lobjc -liconv"

xbuild /p:Configuration=Release HelloWorld.sln
rm -f ../HelloWorld
mkbundle -z bin/Release/*.exe -o ../HelloWorld --static --deps 
