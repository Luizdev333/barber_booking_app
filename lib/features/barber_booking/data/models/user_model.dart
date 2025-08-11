import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'user_model.g.dart';

@JsonEnum()
enum UserRoleModel {
  @JsonValue('client')
  client,
  @JsonValue('barber')
  barber,
}

@JsonSerializable()
class UserModel {
  final String id;
  final String name;
  final UserRoleModel role;
  final String? email;
  final String? phone;

  UserModel({
    required this.id,
    required this.name,
    required this.role,
    this.email,
    this.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  /// Converte o model para a entidade pura
  UserEntity toEntity() => UserEntity(
    id: id,
    name: name,
    role: UserRole.values[role.index],
    email: email,
    phone: phone,
  );

  /// Cria o model a partir da entidade pura
  static UserModel fromEntity(UserEntity entity) => UserModel(
    id: entity.id,
    name: entity.name,
    role: UserRoleModel.values[entity.role.index],
    email: entity.email,
    phone: entity.phone,
  );
}
