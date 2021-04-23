# Install

clone repo

move to xampp/htdocs

composer install

php artisan migrate

php artisan serve: --> {{url}}

# laravel/passport

composer install

# router for front-end

register:(post) {{url}/api/auth/register

login :(post) {{url}}/api/auth/login

logout:(post) {{url}}/api/auth/logout

user:(get) {{url}}/api/auth/user

favouritelist:(get) {{url}}/api/user/favourite-list

favouritelist:(get) {{url}}/api/user/play-list

when test by postman you must send access token: click tab authorization select bearer and paste token except route register



