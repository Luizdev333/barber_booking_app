import 'package:barber_schedule/features/barber_booking/domain/entities/barber_entity.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/barber_repositories.dart';

class GetBarberByIdUseCase {
  final BarberRepository repository;

  GetBarberByIdUseCase(this.repository);

  Future<BarberEntity?> call(String id) async {
    return await repository.getBarberById(id);
  }
}
