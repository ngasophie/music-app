# Install

clone repo

move to xampp/htdocs

composer install

php artisan migrate

php artisan serve: --> {{url}}

# laravel/passport
if your project already exists:

composer install

# router for front-end

register:(post) {{url}/api/auth/register

login :(post) {{url}}/api/auth/login

logout:(post) {{url}}/api/auth/logout

user:(get) {{url}}/api/auth/user

favouritelist:(get) {{url}}/api/user/favourite-list

playlist:(get) {{url}}/api/user/play-list

when test by postman you must send access token: click tab authorization select bearer and paste token ,

do it for all route except register and login



