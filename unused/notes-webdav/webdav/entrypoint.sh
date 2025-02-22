#!/bin/bash
set -x

if [[ -n "$USERNAME" ]] && [[ -n "$PASSWORD" ]]
then
        htpasswd -bc /etc/nginx/htpasswd $USERNAME $PASSWORD
        echo Done.
else
    echo Using no auth.
        sed -i 's%auth_basic "Restricted";% %g' /etc/nginx/conf.d/default.conf
        sed -i 's%auth_basic_user_file htpasswd;% %g' /etc/nginx/conf.d/default.conf
fi

groupadd -g ${PGID} container-user
useradd -u ${PUID} -g ${PGID} container-user

sed -i "s/user.*/user container-user;/g" /etc/nginx/nginx.conf

exec nginx -g "daemon off;"