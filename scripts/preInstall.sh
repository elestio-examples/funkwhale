set env vars
set -o allexport; source .env; set +o allexport;

# mkdir -p ./funkwhale



DJANGO_SECRET_KEY=$(openssl rand -base64 45)

cat << EOT >> ./.env

DJANGO_SECRET_KEY=${DJANGO_SECRET_KEY}
EOT
