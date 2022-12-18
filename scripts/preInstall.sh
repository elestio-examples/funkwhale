set env vars
set -o allexport; source .env; set +o allexport;

mkdir -p ./data
mkdir -p ./dir
mkdir -p ./media
mkdir -p ./music
mkdir -p ./static
mkdir -p ./frontend
chown -R 600:600 ./data
chown -R 600:600 ./dir
chown -R 600:600 ./media
chown -R 600:600 ./music
chown -R 600:600 ./static
chown -R 600:600 ./frontend
