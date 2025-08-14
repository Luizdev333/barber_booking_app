import 'package:barber_schedule/features/barber_booking/data/datasources/barber_remote_datasource.dart';
import 'package:barber_schedule/features/barber_booking/data/models/barber_model.dart';
import 'package:barber_schedule/features/barber_booking/domain/entities/barber_entity.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/barber_repositories.dart';

class BarberRepositoryImpl implements BarberRepository {
  final BarberRemoteDataSource remoteDataSource;

  BarberRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<BarberEntity>> getAllBarbers() async {
    final models = await remoteDataSource.getAllBarbers();
    return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<BarberEntity> getBarberById(String id) async {
    final model = await remoteDataSource.getBarberById(id);
    return model.toEntity();
  }

  Future<void> createBarber(BarberEntity barber) async {
    final model = BarberModel.fromEntity(barber);
    await remoteDataSource.createBarber(model);
  }

  Future<void> updateBarber(BarberEntity barber) async {
    final model = BarberModel.fromEntity(barber);
    await remoteDataSource.updateBarber(model);
  }

  Future<void> deleteBarber(String id) async {
    await remoteDataSource.deleteBarber(id);
  }

  @override
  Future<void> updateAvailability(String barberId, List<DateTime> times) {
    // TODO: implement updateAvailability
    throw UnimplementedError();
  }
}
