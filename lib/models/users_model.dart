class UserModel {
  String? password;
  String? subtitle;
  String? username;

  UserModel({this.password, this.subtitle, this.username});

  UserModel.fromJson(Map<String, dynamic> json) {
    password = json['password'];
    subtitle = json['subtitle'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['password'] = password;
    data['subtitle'] = subtitle;
    data['username'] = username;
    return data;
  }
}
