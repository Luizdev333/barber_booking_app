import 'dart:async';
import '../models/barber_model.dart';
import 'barber_remote_datasource.dart';

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
    final barber = _mockBarbers.firstWhere(
      (b) => b.id == id,
      orElse: () => throw Exception('Barber not found'),
    );
    return barber;
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
    _mockBarbers.removeWhere((b) => b.id.toString() == id);
  }
}
