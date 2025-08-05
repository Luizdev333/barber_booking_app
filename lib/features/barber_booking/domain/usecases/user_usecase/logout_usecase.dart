import 'package:barber_schedule/features/barber_booking/domain/repositories/user_repositories.dart';

class LogoutUseCase {
  final UserRepository repository;

  LogoutUseCase(this.repository);

  Future<void> call() async {
    await repository.logout();
  }
}
