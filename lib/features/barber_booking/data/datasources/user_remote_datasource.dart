import 'package:barber_schedule/features/barber_booking/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<UserModel?> getUserByEmail(String email);
  Future<void> createUser(UserModel user);
  Future<void> updateUser(UserModel user);
  Future<void> deleteUser(String id);
  //  Future<List<UserModel>> getAllUsers();
}
