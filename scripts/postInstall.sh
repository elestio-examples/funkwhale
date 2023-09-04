set -o allexport; source .env; set +o allexport;

docker-compose run --rm api funkwhale-manage migrate

docker-compose exec -T api sh -c "funkwhale-manage createsuperuser --noinput --username=admin --email=${ADMIN_EMAIL}"
docker-compose exec -T api sh -c "funkwhale-manage shell <<EOF
from django.contrib.auth import get_user_model

User = get_user_model()
user = User.objects.get(username='admin')
user.set_password('${ADMIN_PASSWORD}')
user.save()
EOF"