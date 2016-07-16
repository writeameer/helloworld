xbuild /p:Configuration=Release HelloWorld.sln
rm -f ../HelloWorld
mkbundle bin/Release/*.exe -o ../HelloWorld --static --deps -z
