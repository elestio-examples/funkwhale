set -o allexport; source .env; set +o allexport;

sleep 30s;

docker-compose run --rm api funkwhale-manage migrate

echo -e "root\n${ADMIN_PASSWORD}\n${ADMIN_EMAIL}" | docker-compose exec -T api sh -c "funkwhale-manage fw users create --superuser"