import 'package:barber_schedule/features/barber_booking/domain/entities/booking_entity.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/booking_repositories.dart';

class GetBookingForBarbers {
  final BookingRepository bookingRepository;

  GetBookingForBarbers({required this.bookingRepository});
  Future<List<BookingEntity>> call(String id) async {
    return await bookingRepository.getBookingsForBarber(id);
  }
}
