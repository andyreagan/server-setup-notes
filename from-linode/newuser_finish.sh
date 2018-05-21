##################
# final steps

. .env
export APP_NAME=quokkalabs

# copy that config over there
mv /home/${APP_NAME}/uwsgi/config /etc/uwsgi/${APP_NAME}.ini
# let them own it still
chown ${APP_NAME}:www-data /etc/uwsgi/{$APP_NAME}.ini
# and link it back
ln -s /home/${APP_NAME}/uwsgi/config /etc/uwsgi/${APP_NAME}.ini

# link the nginx
ln -s /etc/nginx/sites-available/${APP_NAME} /home/${APP_NAME}/nginx.conf
nginx -s reload


