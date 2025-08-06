import 'package:barber_schedule/features/barber_booking/domain/repositories/booking_repositories.dart';

import '../../entities/booking_entity.dart';

class CreateBooking {
  final BookingRepository repository;

  CreateBooking(this.repository);

  Future<void> call(BookingEntity booking) {
    return repository.createBooking(booking);
  }
}
