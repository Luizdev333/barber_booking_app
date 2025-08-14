import 'package:barber_schedule/features/barber_booking/domain/repositories/barber_repositories.dart';

class DeleteBarberUseCase {
  final BarberRepository repository;

  DeleteBarberUseCase(this.repository);

  Future<void> call(String id) async {
    await repository.deleteBarber(id);
  }
}
