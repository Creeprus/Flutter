class UserEntity {
  late int id;
  final String login;
  final String password;
<<<<<<< HEAD
<<<<<<< HEAD
  final int role_id;

  UserEntity(
      {required this.login, required this.password, required this.role_id});
=======
=======
>>>>>>> parent of 09ac2a6 (PR3)
  final RoleEnum role_id;
  final UserInfo userinfo_id;

  UserEntity(

      {    this.id=0,required this.login,
      required this.password,
      required this.role_id,
      required this.userinfo_id});
>>>>>>> parent of 09ac2a6 (PR3)
}

//enum EngineEnum{}