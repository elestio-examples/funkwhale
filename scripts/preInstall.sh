set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./data
mkdir -p ./dir
mkdir -p ./media
mkdir -p ./music
mkdir -p ./static
mkdir -p ./frontend
chown -R 1000:1000 ./data
chown -R 1000:1000 ./dir
chown -R 1000:1000 ./media
chown -R 1000:1000 ./music
chown -R 1000:1000 ./static
chown -R 1000:1000 ./frontend
