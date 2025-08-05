import '../entities/barber_entity.dart';

abstract class BarberRepository {
  Future<List<BarberEntity>> getAllBarbers();
  Future<BarberEntity?> getBarberById(String id);
  Future<void> updateAvailability(String barberId, List<DateTime> times);
}
