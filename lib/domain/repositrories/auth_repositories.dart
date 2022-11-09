import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/data/model/userinfo.dart';

import '../entity/role_entity.dart';

abstract class AuthRepositories {
  //Название таблицы
  String get table;

  //Авторизация
  Future<Either<String, RoleEnum>> signIn(String login, String password);
  //Регистрация
  Future<Either<String, bool>> signUp(String login, String password,
      String surname, String name, String patronymic,  String date_of_birth);
}
