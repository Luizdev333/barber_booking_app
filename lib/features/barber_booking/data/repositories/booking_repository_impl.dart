import 'package:barber_schedule/features/barber_booking/domain/repositories/booking_repositories.dart';
import '../datasources/booking_remote_datasource.dart';
import '../models/booking_model.dart';
import '../../domain/entities/booking_entity.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingRemoteDataSource remoteDataSource;

  BookingRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<BookingEntity>> getBookingsForUser(String userId) async {
    final models = await remoteDataSource.getBookingsForUser(userId);
    return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<List<BookingEntity>> getBookingsForBarber(String barberId) async {
    final models = await remoteDataSource.getBookingsBarbers(barberId);
    return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<void> createBooking(BookingEntity booking) async {
    final model = BookingModel.fromEntity(booking);
    await remoteDataSource.createBooking(model);
  }

  @override
  Future<void> cancelBooking(BookingEntity booking) async {
    final model = BookingModel.fromEntity(booking);
    await remoteDataSource.cancelBooking(model);
  }

  @override
  Future<void> updateBooking(BookingEntity booking) async {
    final model = BookingModel.fromEntity(booking);
    await remoteDataSource.updateBooking(model);
  }
}
