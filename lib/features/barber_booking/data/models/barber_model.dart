import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/barber_entity.dart';

part 'barber_model.g.dart';

@JsonSerializable()
class BarberModel extends BarberEntity {
  const BarberModel({
    required super.imageUrl,
    required super.id,
    required super.name,
    required super.availableTimes,
  });

  factory BarberModel.fromJson(Map<String, dynamic> json) =>
      _$BarberModelFromJson(json);

  Map<String, dynamic> toJson() => _$BarberModelToJson(this);

  factory BarberModel.fromEntity(BarberEntity barber) {
    return BarberModel(
      id: barber.id,
      name: barber.name,
      availableTimes: barber.availableTimes,
      imageUrl: barber.imageUrl,
    );
  }
}
