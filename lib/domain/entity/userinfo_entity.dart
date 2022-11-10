class UserInfoEntity {
  late int id;
  final String surname;
  final String name;
  final String patronymic;
  final String date_of_birth;

  UserInfoEntity(
    
      {this.id=0,
        required this.surname,
      required this.name,
      required this.patronymic,
      required this.date_of_birth,
    });
}

//enum EngineEnum{}