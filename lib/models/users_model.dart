import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_model.freezed.dart';
part 'users_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String password,
    required String subtitle,
    required String username,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}
