import 'package:barber_schedule/features/barber_booking/data/models/booking_model.dart';

abstract class BookingRemoteDataSource {
  Future<List<BookingModel>> getBookingsForUser(String userId);
  Future<void> createBooking(BookingModel booking);
  Future<void> cancelBooking(BookingModel booking);
  Future<void> updateBooking(BookingModel booking);
}
