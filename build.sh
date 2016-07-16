xbuild /p:Configuration=Release HelloWorld.sln
mkbundle bin/Release/*.exe -o ../HelloWorld --static --deps -z
