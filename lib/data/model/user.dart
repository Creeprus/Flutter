import 'package:flutter_application_1/domain/entity/engine_entity.dart';
import 'package:flutter_application_1/domain/entity/manufacturer_entity.dart';
import 'package:flutter_application_1/domain/entity/owner_entity.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';

import '../../domain/entity/user_entity.dart';

class User extends UserEntity {
<<<<<<< HEAD
  late int id;
  final String login;
  final String password;
  final int role_id;
  User({required this.login, required this.password, required this.role_id})
      : super(
          login: login,
          password: password,
          role_id: role_id,
        );

  Map<String, dynamic> toMap() {
    return {
      'login': login,
      'password': password,
      'role_id': role_id,
    };
=======
 
  User({
    super.id = 0,
    required super.login,
    required super.password,
    required super.role_id,
      required super.userinfo_id,
  });

  Map<String, dynamic> toMap() {
    return {'login': login, 'password': Crypto.encoding(password), 'role_id': role_id.id,'userinfo_id':userinfo_id.id};
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 09ac2a6 (PR3)
=======
>>>>>>> parent of 09ac2a6 (PR3)
=======
>>>>>>> parent of 09ac2a6 (PR3)
=======
>>>>>>> parent of 09ac2a6 (PR3)
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
      login: json['login'],
      password: json['password'],
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      role_id: json['role_id'],
=======
=======
>>>>>>> parent of 09ac2a6 (PR3)
=======
>>>>>>> parent of 09ac2a6 (PR3)
=======
>>>>>>> parent of 09ac2a6 (PR3)
      role_id: RoleEnum.values.firstWhere(
        (element) => element.id == (json['id_role'] as int),
      ),
      userinfo_id:UserInfo.toFromMap(json)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 09ac2a6 (PR3)
=======
>>>>>>> parent of 09ac2a6 (PR3)
=======
>>>>>>> parent of 09ac2a6 (PR3)
=======
>>>>>>> parent of 09ac2a6 (PR3)
    );
  }
}
