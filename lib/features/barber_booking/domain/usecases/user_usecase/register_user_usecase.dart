import 'package:barber_schedule/features/barber_booking/domain/entities/user_entity.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/user_repositories.dart';

class RegisterUserUseCase {
  final UserRepository repository;

  RegisterUserUseCase(this.repository);

  Future<void> call(UserEntity user) async {
    await repository.register(user);
  }
}
