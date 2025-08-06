import 'package:barber_schedule/features/barber_booking/domain/repositories/booking_repositories.dart';

class CancelBooking {
  final BookingRepository bookingRepository;

  CancelBooking({required this.bookingRepository});

  Future<void> call(String id) {
    return bookingRepository.cancelBooking(id);
  }
}
