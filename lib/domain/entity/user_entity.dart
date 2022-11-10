import 'package:flutter_application_1/data/model/role.dart';
import 'package:flutter_application_1/data/model/userinfo.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';

class UserEntity {
  late int id;
  final String login;
  final String password;
  final RoleEnum id_role;
  final UserInfo userinfo_id;

  UserEntity(

      {    this.id=0,
      required this.login,
      required this.password,
      required this.id_role,
      required this.userinfo_id});
}
