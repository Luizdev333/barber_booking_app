// BarberRemoteDataSource.dart
import 'package:barber_schedule/features/barber_booking/data/models/barber_model.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/barber_repositories.dart';

abstract class BarberRemoteDataSource {
  Future<List<BarberModel>> getAllBarbers();
  Future<BarberModel> getBarberById(String id);
  Future<void> createBarber(BarberModel barber);
  Future<void> updateBarber(BarberModel barber);
  Future<void> deleteBarber(String id);
  Future<void> updateAvailability(String barberId, List<DateTime> times);
}

// BarberRemoteDataSourceMock.dart
class BarberRemoteDataSourceMock implements BarberRemoteDataSource {
  final List<BarberModel> _mockBarbers = [];

  @override
  Future<List<BarberModel>> getAllBarbers() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return List.unmodifiable(_mockBarbers);
  }

  @override
  Future<BarberModel> getBarberById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockBarbers.firstWhere(
      (b) => b.id == id,
      orElse: () => throw Exception('Barber not found'),
    );
  }

  @override
  Future<void> createBarber(BarberModel barber) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _mockBarbers.add(barber);
  }

  @override
  Future<void> updateBarber(BarberModel barber) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _mockBarbers.indexWhere((b) => b.id == barber.id);
    if (index == -1) throw Exception('Barber not found');
    _mockBarbers[index] = barber;
  }

  @override
  Future<void> deleteBarber(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _mockBarbers.removeWhere((b) => b.id == id);
  }

  @override
  Future<void> updateAvailability(String barberId, List<DateTime> times) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _mockBarbers.indexWhere((b) => b.id.toString() == barberId);
    if (index == -1) throw Exception('Barber not found');

    final updatedBarber = _mockBarbers[index].copyWith(availableTimes: times);

    _mockBarbers[index] = updatedBarber;
  }
}

// BarberRepositoryImpl.dart
class BarberRepositoryImpl implements BarberRepository {
  final BarberRemoteDataSource remoteDataSource;

  BarberRepositoryImpl(this.remoteDataSource);

  @override
  Future<void> updateAvailability(String barberId, List<DateTime> times) async {
    await remoteDataSource.updateAvailability(barberId, times);
  }

  // outros métodos chamam o datasource da mesma forma
}
