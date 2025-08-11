import 'package:barber_schedule/features/barber_booking/data/datasources/booking_remote_datasource.dart';
import 'package:barber_schedule/features/barber_booking/data/models/booking_model.dart';

class BookingRemoteDataSourceMock implements BookingRemoteDataSource {
  final List<BookingModel> _mockBookings = [];

  @override
  Future<List<BookingModel>> getBookingsForUser(String userId) async {
    await Future.delayed(const Duration(seconds: 1));
    return _mockBookings.where((booking) => booking.userId == userId).toList();
  }

  @override
  Future<void> createBooking(BookingModel booking) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _mockBookings.add(booking);
  }

  @override
  Future<void> cancelBooking(BookingModel booking) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _mockBookings.indexWhere((b) => b.id == booking.id);
    if (index == -1) {
      throw Exception('Booking not found');
    }

    _mockBookings[index] = _mockBookings[index].copyWith(
      status: BookingStatusModel.canceled,
    );
  }

  @override
  Future<void> updateBooking(BookingModel booking) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _mockBookings.indexWhere((b) => b.id == booking.id);
    if (index == -1) {
      throw Exception('Booking not found');
    }

    _mockBookings[index] = booking;
  }
}
