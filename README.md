Тема: Реализация классов для работы с базой данных на Flutter
Цель работы: 
Составить модели и классы, отвечающие за таблицы в базе данных
Ход работы:

 
 ![image](https://user-images.githubusercontent.com/92712690/200502220-f8f8746b-5061-44e7-9059-51fe3278b872.png)

Рисунок 5  - Схема базы данных
Перед началом работы следует сделать схему базы данных магазина машин. В данном случае будет 9 сущностей, подлежащих реализации
Для каждой таблицы понадобится сделать модель и класс
1.	Car

 ![image](https://user-images.githubusercontent.com/92712690/200502256-d17a4d53-1b3d-4f51-8e63-c384c88defec.png)

Рисунок 6 - car.dart

 ![image](https://user-images.githubusercontent.com/92712690/200502267-627493c4-43ed-426b-886f-029a7dc8598c.png)

Рисунок 7 - car_entity.dart
2.	 Engine

 ![image](https://user-images.githubusercontent.com/92712690/200502295-d5bd0e30-ae57-4aff-80de-46e28002488f.png)

Рисунок 8 - engine.dart

 ![image](https://user-images.githubusercontent.com/92712690/200502314-53a7998e-dcbf-4542-afe4-7217256a2698.png)

Рисунок 9 - engine_entity.dart
3.	 Favorite

 ![image](https://user-images.githubusercontent.com/92712690/200502349-436c945a-ea9f-4b37-a086-46b2db3e72ae.png)

Рисунок 10 - favorite_entity.dart

 ![image](https://user-images.githubusercontent.com/92712690/200502363-8e26f3e3-faee-4b26-a416-7a04a47eb225.png)

Рисунок 11 – favorite.dart
4.	 Manufacturer

 ![image](https://user-images.githubusercontent.com/92712690/200502376-b489b1f4-d154-472e-8986-6412f22f8926.png)

Рисунок 12 -manufacturer_entity.dart

 ![image](https://user-images.githubusercontent.com/92712690/200502389-70fe94e5-1071-472d-aafd-40f7be3123c8.png)

Рисунок 13 - manufacturer.dart
5.	 Mark

 ![image](https://user-images.githubusercontent.com/92712690/200502408-02998f4d-1982-4ff7-be7d-058146a26c34.png)

Рисунок 14 - mark_entity.dart

 ![image](https://user-images.githubusercontent.com/92712690/200502422-8f264628-592e-428a-88f5-e5c7a3491137.png)

Рисунок 15 - mark.dart
6.	 Owner

 ![image](https://user-images.githubusercontent.com/92712690/200502439-6e28c525-be7b-4674-93ce-1a715bd9f5a1.png)

Рисунок 16 - owner_entity.dart

 ![image](https://user-images.githubusercontent.com/92712690/200502446-05d33fc8-d5af-4502-8f69-61ccf58516f2.png)

Рисунок 17 - owner.dart
7.	  Role

 ![image](https://user-images.githubusercontent.com/92712690/200502463-113b4bab-ad7f-423e-acd1-8c71167dd1b9.png)

Рисунок 18 - role_entity.dart

 ![image](https://user-images.githubusercontent.com/92712690/200502470-92804810-76e9-452d-9aca-1af2ea64f8ca.png)

Рисунок 19 - role.dart

8.	  User

 ![image](https://user-images.githubusercontent.com/92712690/200502496-1476798f-2453-4f95-8cc4-92db3203de81.png)

Рисунок 20 - user_entity.dart

 ![image](https://user-images.githubusercontent.com/92712690/200502505-dace65f5-5855-48f6-a705-7934014448b6.png)

Рисунок 21 - user_entity.dart
9.	 UserInfo

![image](https://user-images.githubusercontent.com/92712690/200502516-a43c4da1-a446-4d90-aa22-aaf8837b7026.png)

 
Рисунок 22 - userinfo_entity.dart

 ![image](https://user-images.githubusercontent.com/92712690/200502529-d8268522-66f1-4118-9de0-37ba61833436.png)

Рисунок 23 - userinfo.dart


По итогу структура проекта выглядит следующим образом:

 ![image](https://user-images.githubusercontent.com/92712690/200502548-a7a85567-4ab5-47b2-9fc2-09c2726a69e1.png)

Рисунок 24 - Структура проекта

И в итоге получиться файл с базой данных

 ![image](https://user-images.githubusercontent.com/92712690/200502571-2d8e2dd1-36e0-4f74-a414-11c22fd730d0.png)

Рисунок 25 - Файл базы данных

Вывод: В процессе практической работы были получены навыки по составлению таблиц сущностей на SQLite в Flutter
