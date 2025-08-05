import 'package:barber_schedule/features/barber_booking/domain/repositories/user_repositories.dart';

class LoginUseCase {
  final UserRepository repository;

  LoginUseCase(this.repository);

  Future<void> call(String email, String password) async {
    await repository.login(email, password);
  }
}
