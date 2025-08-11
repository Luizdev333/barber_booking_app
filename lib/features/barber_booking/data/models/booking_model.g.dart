// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) => BookingModel(
  id: json['id'] as String,
  userId: json['userId'] as String,
  barberId: json['barberId'] as String,
  service: $enumDecode(_$ServicesModelEnumMap, json['service']),
  dateTime: DateTime.parse(json['dateTime'] as String),
  status: $enumDecode(_$BookingStatusModelEnumMap, json['status']),
);

Map<String, dynamic> _$BookingModelToJson(BookingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'barberId': instance.barberId,
      'service': _$ServicesModelEnumMap[instance.service]!,
      'dateTime': instance.dateTime.toIso8601String(),
      'status': _$BookingStatusModelEnumMap[instance.status]!,
    };

const _$ServicesModelEnumMap = {
  ServicesModel.haircut: 'haircut',
  ServicesModel.beard: 'beard',
  ServicesModel.eyeBrowns: 'eyeBrowns',
};

const _$BookingStatusModelEnumMap = {
  BookingStatusModel.scheduled: 'scheduled',
  BookingStatusModel.canceled: 'canceled',
  BookingStatusModel.completed: 'completed',
};
