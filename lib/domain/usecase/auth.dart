


import 'package:dartz/dartz.dart';

import '../../core/usecase/auth_user_case.dart';
import '../entity/role_entity.dart';
import '../repositrories/auth_repositories.dart';


class Auth implements AuthUserCase<String,AuthParams,AuthParamsLogin>{
  final AuthRepositories authrepositories;
  Auth(this.authrepositories);
  @override
  Future<Either<String, RoleEnum>> signIn(AuthParamsLogin params) {
  return authrepositories.signIn(params.login,params.password);
  }

  @override
  Future<Either<String, bool>> signUp(AuthParams params) {
  return authrepositories.signUp(params.login,params.password,params.surname,params.name,params.patronymic,params.date_of_birth,);
  }


}

class AuthParamsLogin{
   final String login;
  final String password;
  AuthParamsLogin({
    required this.login,
  required this.password,
  });
}


class AuthParams{

  final String login;
  final String password;
  final String surname;
  final String name;
  final String patronymic;
  final String date_of_birth;

AuthParams({

  required this.login,
  required this.password,
   required this.surname,
    required this.name,
     required this.patronymic,
     required this.date_of_birth,
});


}