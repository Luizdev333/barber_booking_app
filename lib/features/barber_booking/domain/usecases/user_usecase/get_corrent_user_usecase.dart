import 'package:barber_schedule/features/barber_booking/domain/entities/user_entity.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/user_repositories.dart';

class GetCurrentUserUseCase {
  final UserRepository repository;

  GetCurrentUserUseCase(this.repository);

  Future<UserEntity?> call() async {
    return await repository.getCurrentUser();
  }
}
