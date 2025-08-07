enum BookingStatus { scheduled, canceled, completed }

enum Services { haircut, beard, eyeBrowns }

class BookingEntity {
  final String id;
  final String userId;
  final String barberId;
  final Services service;
  final DateTime dateTime;
  final BookingStatus status;

  BookingEntity({
    required this.id,
    required this.userId,
    required this.barberId,
    required this.service,
    required this.dateTime,
    required this.status,
  });
}
