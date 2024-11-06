class UserModel {
  final String firstName;
  final String lastName;
  final String password;
  final String email;

  const UserModel({
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.email,
  });

  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['firstName'] ?? '',
      lastName: json['lastName'] ?? '',
      password: json['password'] ?? '',
      email: json['email'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'password': password,
      'email': email,
    };
  }
}
