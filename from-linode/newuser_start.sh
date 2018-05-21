. .env
export APP_NAME=quokkalabs
echo "create database ${APP_NAME}" | mysql --user=root --password=${DJ_DB_PASSWORD}
useradd -d /home/${APP_NAME} -G www-data -m -U -s /bin/bash ${APP_NAME}

su ${APP_NAME}

# export APP_NAME=cmplxsys
cd
mkdir .ssh && chmod 700 .ssh && touch .ssh/authorized_keys
mkdir $USER.git
cd $USER.git
git init --bare
cd ..
mkdir ${APP_NAME}
cd ${APP_NAME}
virtualenv pyenv
cd ..
mkdir uwsgi

# get the environment settings
cp /usr/share/nginx/.env.sample .env
echo "edit /home/${APP_NAME}/.env"

# get the uwsgi config
cp /usr/share/nginx/config.base.sample uwsgi/config.base
echo "edit /home/${APP_NAME}/uwsgi/config.base"

# get the nginx config
cp /usr/share/nginx.conf.sample nginx.conf
echo "edit /home/${APP_NAME}/nginx.conf"

exit

cat ~/.ssh/authorized_keys >> /home/${APP_NAME}/.ssh/authorized_keys



