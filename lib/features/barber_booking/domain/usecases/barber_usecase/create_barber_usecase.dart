import 'package:barber_schedule/features/barber_booking/domain/entities/barber_entity.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/barber_repositories.dart';

class CreateBarberUseCase {
  final BarberRepository repository;

  CreateBarberUseCase(this.repository);

  Future<BarberEntity> call(BarberEntity barber) async {
    return await repository.createBarber(barber);
  }
}
