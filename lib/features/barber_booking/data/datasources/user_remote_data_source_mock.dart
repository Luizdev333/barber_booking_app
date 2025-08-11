import 'dart:async';
import '../models/user_model.dart';
import 'user_remote_datasource.dart';

class UserRemoteDataSourceMock implements UserRemoteDataSource {
  final List<UserModel> _mockUsers = [];

  @override
  Future<List<UserModel>> getAllUsers() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return List.unmodifiable(_mockUsers);
  }

  @override
  Future<UserModel> getUserById(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final user = _mockUsers.firstWhere(
      (u) => u.id == id,
      orElse: () => throw Exception('User not found'),
    );
    return user;
  }

  @override
  Future<void> createUser(UserModel user) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _mockUsers.add(user);
  }

  @override
  Future<void> updateUser(UserModel user) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _mockUsers.indexWhere((u) => u.id == user.id);
    if (index == -1) throw Exception('User not found');
    _mockUsers[index] = user;
  }

  @override
  Future<void> deleteUser(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    _mockUsers.removeWhere((u) => u.id == id);
  }
}
