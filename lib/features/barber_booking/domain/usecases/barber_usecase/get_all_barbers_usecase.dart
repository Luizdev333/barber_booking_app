import 'package:barber_schedule/features/barber_booking/domain/entities/barber_entity.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/barber_repositories.dart';

class GetAllBarbersUseCase {
  final BarberRepository repository;

  GetAllBarbersUseCase(this.repository);

  Future<List<BarberEntity>> call() async {
    return await repository.getAllBarbers();
  }
}
