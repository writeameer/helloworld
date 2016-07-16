#!/bin/bash -ex

os=`uname -s`
release_folder="../Release"
file_name="${release_folder}/HelloWorld_${os}"

if [ "$os" = "Darwin" ];
then
    export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/lib/pkgconfig:/Library/Frameworks/Mono.framework/Versions/4.4.1/lib/pkgconfig
    export PATH=/Library/Frameworks/Mono.framework/Commands:$PATH
    export AS="as -arch i386"
    export CC="cc -arch i386 -framework CoreFoundation -lobjc -liconv"
fi

xbuild /p:Configuration=Release HelloWorld.sln
rm -rf ${release_folder}
mkdir -p ${release_folder}
mkbundle -z bin/Release/*.exe -o ${file_name} --static --deps 

ls -la ${file_name}
