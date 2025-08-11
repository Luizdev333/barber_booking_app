import '../models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getAllUsers();
  Future<UserModel> getUserById(String id);
  Future<void> createUser(UserModel user);
  Future<void> updateUser(UserModel user);
  Future<void> deleteUser(String id);
}
