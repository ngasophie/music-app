# Install

clone repo

move to xampp/htdocs

.env

composer install --ignore-platform-reqs

php artisan migrate

php artisan passport:install

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

songs:(get) {{url}}/songs       
(**20 songs/page**)

song:(get) {{url}}/song/{id}

albums:(get) {{url}}/albums

album:(get) {{url}}/album-songs/{album_id}

tìm bài hát theo thể loại:(get) {{url}}/songs-genre/{genre_id}

tìm bài hát theo từ khóa:(get) {{url}}/songs-search?search={{keyword}}

when test by postman you must send access token: click tab authorization select bearer and paste token ,

do it for route user/logout/favouritelist/playlist

edit user-info:     (post) {{url}}/api/user/edit-profile/{id} **[id của user]** **[request->username (hoặc/và) phone (hoặc/và) displayName]**

add favorite:       (post) {{url}}/api/user/add-favoritelist **[request->id, song_id]**

delete favorite:    (post) {{url}}/api/user/delete-favoritelist **[request->id, song_id]**



