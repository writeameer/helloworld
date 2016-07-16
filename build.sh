xbuild /p:Configuration=Release HelloWorld.sln
rm -f ../HelloWorld
mkbundle -z bin/Release/*.exe -o ../HelloWorld --static --deps 
