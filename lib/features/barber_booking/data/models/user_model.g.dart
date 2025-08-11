// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  role: $enumDecode(_$UserRoleModelEnumMap, json['role']),
  email: json['email'] as String?,
  phone: json['phone'] as String?,
);

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'role': _$UserRoleModelEnumMap[instance.role]!,
  'email': instance.email,
  'phone': instance.phone,
};

const _$UserRoleModelEnumMap = {
  UserRoleModel.client: 'client',
  UserRoleModel.barber: 'barber',
};
