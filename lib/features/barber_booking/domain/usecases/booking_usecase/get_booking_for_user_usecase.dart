import 'package:barber_schedule/features/barber_booking/domain/entities/booking_entity.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/booking_repositories.dart';

class GetBookingForUser {
  final BookingRepository repository;

  GetBookingForUser({required this.repository});

  Future<List<BookingEntity>> call(String userId) async {
    return await repository.getBookingsForUser(userId);
  }
}
