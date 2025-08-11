// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barber_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BarberModel _$BarberModelFromJson(Map<String, dynamic> json) => BarberModel(
  imageUrl: json['imageUrl'] as String,
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  availableTimes: DateTime.parse(json['availableTimes'] as String),
);

Map<String, dynamic> _$BarberModelToJson(BarberModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'availableTimes': instance.availableTimes.toIso8601String(),
      'imageUrl': instance.imageUrl,
    };
