import '../models/barber_model.dart';

abstract class BarberRemoteDataSource {
  Future<List<BarberModel>> getAllBarbers();
  Future<BarberModel> getBarberById(String id);
  Future<void> createBarber(BarberModel barber);
  Future<void> updateBarber(BarberModel barber);
  Future<void> deleteBarber(String id);
}
