
import 'package:flutter_application_1/data/model/userinfo.dart';

import '../../core/crypto/crypto.dart';
import '../../domain/entity/role_entity.dart';
import '../../domain/entity/user_entity.dart';


class User extends UserEntity {
 
  User({
    super.id = 0,
    required super.login,
    required super.password,
    required super.id_role,
      required super.userinfo_id,
      
  });
//
  Map<String, dynamic> toMap() {
    return {'login': login, 'password': Crypto.encoding(password), 'id_role': id_role.id,'userinfo_id':userinfo_id.id};
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      login: json['login'],
      password: json['password'],
      id_role: RoleEnum.values.firstWhere(
        (element) => element.id == (json['id_role'] as int),
      ),
      userinfo_id:UserInfo.toFromMap(json)
      );
  }
}
