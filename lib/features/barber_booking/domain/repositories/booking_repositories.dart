import '../entities/booking_entity.dart';

abstract class BookingRepository {
  Future<List<BookingEntity>> getBookingsForUser(String userId);
  Future<List<BookingEntity>> getBookingsForBarber(String barberId);
  Future<void> createBooking(BookingEntity booking);
  Future<void> cancelBooking(String bookingId);
}
