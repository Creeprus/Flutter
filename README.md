ПРАКТИЧЕСКАЯ РАБОТА №3
Тема: Реализовать регистрацию и авторизацию пользователя.
Цель работы: 
Изучить как работает процесс вёрстки на Flutter
Ход работы:

Для реализации регистрации с переадресацией в зависимости от роли следует отредактировать модели:

![image](https://user-images.githubusercontent.com/92712690/201197235-ef841c5a-5b84-4b85-bd4c-77ff0bc69b79.png)

Рисунок 26 - Роли

![image](https://user-images.githubusercontent.com/92712690/201197262-855c1802-3aee-433d-afea-e84d0d6b666a.png)

Рисунок 27 - Связь один к одному

Далее следует создать репозиторий в папке domain

![image](https://user-images.githubusercontent.com/92712690/201197327-8d792965-336b-499a-b553-e5527e278e41.png)

Рисунок 28 – Репозиторий

![image](https://user-images.githubusercontent.com/92712690/201197375-263489e6-f2e8-43e9-aca5-8c5d99814241.png)

Рисунок 29 - Реализация регистрации

![image](https://user-images.githubusercontent.com/92712690/201197405-175b2651-1162-4742-8d79-505c7277b0a9.png)

Рисунок 30 - Реализация логина

Теперь следует сделать usecase

![image](https://user-images.githubusercontent.com/92712690/201197551-034cd206-c0c4-424a-aeeb-d3362dbaac35.png)

Рисунок 31 - Параметры usecase

![image](https://user-images.githubusercontent.com/92712690/201197587-94610c54-3bf2-4d6c-98ca-001fb7c46a71.png)

Рисунок 32 - Методы usecase

Для более удобной переадресации на страницы будет использоваться этот класс

![image](https://user-images.githubusercontent.com/92712690/201197619-1ea6ee3d-bfcb-4927-909d-cbb0fd9ee180.png)

Рисунок 33 – Переадресация

Теперь в вёрстке регистрация реализована следующим образом

![image](https://user-images.githubusercontent.com/92712690/201197672-91b36be5-a9a6-49e5-b2ae-fb03931ef9bd.png)

Рисунок 34 – Регистрация

В процессе регистрации также происходит валидация

![image](https://user-images.githubusercontent.com/92712690/201197773-bafc2043-1c53-47c7-9f85-0963a4d17e6c.png)

Рисунок 35 -Валидация отчества и имени

![image](https://user-images.githubusercontent.com/92712690/201197869-e9cb183c-5dcf-45a4-aafd-059e32145a55.png)

Рисунок 36 - Валидация

![image](https://user-images.githubusercontent.com/92712690/201197897-2c664fd2-7066-4271-8531-a8f4863e8737.png)

Рисунок 37 - Валидация в логине

![image](https://user-images.githubusercontent.com/92712690/201197932-bf40ce19-c293-4370-b2b0-9a409d59f6fc.png)

Рисунок 38 – Валидация

При неудачной авторизации выведет следующее сообщение

![image](https://user-images.githubusercontent.com/92712690/201197994-e10733c4-512d-4b43-a4e5-024218f11526.png)

Рисунок 39 – Сообщение
После авторизации в зависимости от роли пользователя переадресует в соответсвенное окно

![image](https://user-images.githubusercontent.com/92712690/201198022-e29f5ac5-236a-4f09-8f8c-43bf75a035ad.png)

Рисунок 40 - Экран админа

![image](https://user-images.githubusercontent.com/92712690/201198053-638d4f6e-0b2d-4f85-ba38-aa9cc019ffc7.png)

Рисунок 41 - Экран пользователя
Вывод: В процессе практической работы были получены навыки по реализации регистрации, авторизации и переадресации.


