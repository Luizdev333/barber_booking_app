import '../entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity?> getCurrentUser();
  Future<void> login(String email, String password);
  Future<void> logout();
  Future<void> register(UserEntity user);
}
