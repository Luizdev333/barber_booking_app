import 'package:barber_schedule/features/barber_booking/data/datasources/user_remote_datasource.dart';
import 'package:barber_schedule/features/barber_booking/data/models/user_model.dart';

class UserRemoteDataSourceMock implements UserRemoteDataSource {
  final List<UserModel> _mockUsers = [];

  @override
  Future<UserModel?> getUserByEmail(String email) async {
    await Future.delayed(const Duration(milliseconds: 500));
    try {
      return _mockUsers.firstWhere((u) => u.email == email);
    } catch (_) {
      return null; // usuário não encontrado
    }
  }

  @override
  Future<void> createUser(UserModel user) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _mockUsers.add(user);
  }

  @override
  Future<void> updateUser(UserModel user) async {
    final index = _mockUsers.indexWhere((u) => u.id == user.id);
    if (index == -1) throw Exception('User not found');
    _mockUsers[index] = user;
  }

  @override
  Future<void> deleteUser(String id) async {
    _mockUsers.removeWhere((u) => u.id == id);
  }

  //  @override
  // Future<List<UserModel>> getAllUsers() async {
  //   return List.unmodifiable(_mockUsers);
  // }
}
