import 'package:flutter_application_1/data/model/userinfo.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/domain/repositrories/auth_repositories.dart';
import 'package:sqflite/sqflite.dart';

import '../../common/data_base_request.dart';
import '../../data/model/user.dart';
import '../crypto/crypto.dart';
import '../db/data_base_helper.dart';

class AuthRepositoriesImpl implements AuthRepositories
{
  final _db = DataBaseHelper.instance.database;

  @override
  Future<Either<String, RoleEnum>> signIn(String login, String password) async{
    try {
      final user = (await _db.query(
        table,
        columns: ['login', 'password', 'id_role'],
        where: 'login = ?',
        whereArgs: [login],
      ))
          .map((e) => User.toFromMap(e));
      if (user.isEmpty) {
        return Left("Пароль или логин неверны");
      }
      if (user.first.password != Crypto.encoding(password)) {
        return Left("Неправильный пароль");
      }
      return Right(user.first.role_id);
    } on DatabaseException catch (error) {
      print(error.result);
      return Left('F...');
    }
  }

  @override
  Future<Either<String, bool>> signUp(String login, String password, String surname, String name, String patronymic, String date_of_birth) async{
   try {
      await _db.insert(
        table,
        User(login: login, password: password, role_id: RoleEnum.user,userinfo_id: UserInfo(surname: surname, name: name, patronymic: patronymic, date_of_birth: date_of_birth)).toMap(),
      );

      return const Right(true);
    } on DatabaseException catch (error) {
      print(error.result);
      return const Left('');
    }
  }

  @override
   String get table => DataBaseRequest.tableUsers;



}