import 'package:flutter_application_1/data/model/user.dart';
import 'package:flutter_application_1/domain/entity/engine_entity.dart';
import 'package:flutter_application_1/domain/entity/manufacturer_entity.dart';
import 'package:flutter_application_1/domain/entity/owner_entity.dart';
import 'package:flutter_application_1/domain/entity/role_entity.dart';

import '../../domain/entity/userinfo_entity.dart';

class UserInfo extends UserInfoEntity {
  late int id;
   String surname;
   String name;
   String patronymic;
   String date_of_birth;
   
  UserInfo({
    //required this.id,
    this.id=0,
    required this.surname,
    required this.name,
    required this.patronymic,
    required this.date_of_birth,
  }) : super(
          //id:id,
          surname: surname,
          name: name,
          patronymic: patronymic,
          date_of_birth: date_of_birth,
        );

  Map<String, dynamic> toMap() {
    return {
      'surname': surname,
      'name': name,
      'patronymic': patronymic,
      'date_of_birth': date_of_birth,
    };
  }

  factory UserInfo.toFromMap(Map<String, dynamic> json) {
    return UserInfo(
     // id: json["id"],
      surname: json['surname'],
      name: json['name'],
      patronymic: json['patronymic'],
      date_of_birth: json['date_of_birth'],
    );
  }
}
