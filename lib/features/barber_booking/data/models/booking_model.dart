import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/booking_entity.dart';

part 'booking_model.g.dart';

/// Enum serializável para o status do agendamento
@JsonEnum()
enum BookingStatusModel {
  @JsonValue('scheduled')
  scheduled,
  @JsonValue('canceled')
  canceled,
  @JsonValue('completed')
  completed,
}

/// Enum serializável para os serviços disponíveis
@JsonEnum()
enum ServicesModel {
  @JsonValue('haircut')
  haircut,
  @JsonValue('beard')
  beard,
  @JsonValue('eyeBrowns')
  eyeBrowns,
}

@JsonSerializable()
class BookingModel {
  final String id;
  final String userId;
  final String barberId;
  final ServicesModel service;
  final DateTime dateTime;
  final BookingStatusModel status;

  BookingModel({
    required this.id,
    required this.userId,
    required this.barberId,
    required this.service,
    required this.dateTime,
    required this.status,
  });

  BookingModel copyWith({
    String? id,
    String? userId,
    String? barberId,
    ServicesModel? service,
    DateTime? dateTime,
    BookingStatusModel? status,
  }) {
    return BookingModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      barberId: barberId ?? this.barberId,
      service: service ?? this.service,
      dateTime: dateTime ?? this.dateTime,
      status: status ?? this.status,
    );
  }

  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);

  Map<String, dynamic> toJson() => _$BookingModelToJson(this);

  /// Converte o model para a entidade pura
  BookingEntity toEntity() => BookingEntity(
    id: id,
    userId: userId,
    barberId: barberId,
    service: Services.values[service.index],
    dateTime: dateTime,
    status: BookingStatus.values[status.index],
  );

  /// Cria o model a partir da entidade pura
  static BookingModel fromEntity(BookingEntity entity) => BookingModel(
    id: entity.id,
    userId: entity.userId,
    barberId: entity.barberId,
    service: ServicesModel.values[entity.service.index],
    dateTime: entity.dateTime,
    status: BookingStatusModel.values[entity.status.index],
  );
}
