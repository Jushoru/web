**css, check.php, db.php, index.html, shop.sql** - в совокупности представляют собой web-страницу, на которой пользователь может оставить данные о себе – фамилия, имя, отчество, адрес для физической доставки товара, телефон, адрес электронной почты. Товары покупатель выбирает из выпадающего списка. Есть поле для комментария. Данные, введенные в форму, обрабатываются php скриптом и заносятся в таблицу БД MySQL Server - "shop.sql".

**wp_project_files** - содержит два файла "check.php" и "user-new.php", предназначенных для вставки в проект wordpress в папку "wp-admin", а также файл с кастомной таблицей БД MySQL "wp_password.sql", которая должна быть размещена в БД проекта wordpress. 
В движке wordpress используется форма для авторизации пользователей – пользователь вводит логин и пароль.  Логин и хэш от пароля записываются в таблицу БД MySQL. Вставка файлов описанных ранее позволяет перенаправить запись логина и пароля в отдельную таблицу в БД MySQL - "wp_password.sql".  При этом пароль записывается как в исходном, так и в инвертированном состоянии (инвертируются биты байт пароля). Добавление пользователя происходит по следующему адресу: <http://authorization/wp-admin/user-new.php>.
p.s. По сути user-new.php, представляет файл созданного wordpress проекта с одним лишь изменением, а именно, в теге form: ```<form action="check.php" method="post" name="createuser" id="createuser" class="validate" novalidate="novalidate" ... >``` (строка 505) был добавлен атрибут action со значением "check.php", это позволяет перенаправить POST запрос c формы в файл check.php.

**server.py** - представляет собой web-сервер. При запуске кода необходимо задать порт, на котором будет работать сервер. При обращении вида http://127.0.0.1:888/ где 888 – заданный порт, сервер должен возвращает содержимое файла index.html, находящегося в том же каталоге, что и исполняемый файл написанной программы-сервера.