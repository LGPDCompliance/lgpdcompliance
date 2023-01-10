import 'dart:convert';

class CurrentUser {
  late  UserModel currentUser;
  final String accessToken;
  final String refreshToken;

  CurrentUser({
    required this.currentUser,
    required this.accessToken,
    required this.refreshToken,
  });

  factory CurrentUser.fromJson(String str) =>
      CurrentUser.fromMap(json.decode(str));

  factory CurrentUser.fromMap(Map<String, dynamic> json) {
    return CurrentUser(
      currentUser: UserModel.fromMap(json['user']),
      accessToken: json["accessToken"],
      refreshToken: json["refreshToken"],
    );
  }

  @override
  String toString() {
    return 'CurrentUser{currentUser: $currentUser, accessToken: $accessToken, refreshToken: $refreshToken}';
  }
}

class UserModel {
  final String? id;
  final String? name;
  final String? email;
  final String? password;
  final String? role;
  final String? createdAt;

  const UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.role,
    this.createdAt,
  });

  factory UserModel.fromJson(String str) => UserModel.fromMap(json.decode(str));

  factory UserModel.fromMap(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json["name"],
      email: json["email"],
      password: json["password"] ?? '',
      role: json["role"],
      createdAt: json["createdAt"] ?? '',
    );
  }

  @override
  String toString() {
    return 'UserModel{id: $id, name: $name, email: $email, password: $password, role: $role, createdAt: $createdAt}';
  }
}
