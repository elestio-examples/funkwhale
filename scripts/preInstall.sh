set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./data
mkdir -p ./dir
chown -R 1000:1000 ./data
chown -R 1000:1000 ./dir
