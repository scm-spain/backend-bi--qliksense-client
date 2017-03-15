name=$1.$2
echo 'Creating '$name' package'

zip -r ../bin/$name.zip ../app/
echo 'zipped app code'

aws s3api put-object --bucket data-bi-repos-dev --key qliksense/api/$name/$name.zip --body ../bin/$name.zip
echo 'uploaded '$name'.zip to qliksense/api/'$name'/'