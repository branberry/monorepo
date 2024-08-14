# ensures that we always use the latest version of the script
if [ -f build-site.sh ]; then
  rm build-site.sh
fi 

curl https://raw.githubusercontent.com/mongodb/docs-worker-pool/netlify-poc-prefix/scripts/build-site.sh -o build-site.sh 
sh build-site.sh

if [[ -v "${PATH_PREFIX}" ]]; then
 cd snooty/public && mkdir ${PATH_PREFIX} && mv * ${PATH_PREFIX}
fi
