import 'package:barber_schedule/features/barber_booking/data/datasources/user_remote_datasource.dart';
import 'package:barber_schedule/features/barber_booking/data/models/user_model.dart';
import 'package:barber_schedule/features/barber_booking/domain/entities/user_entity.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/auth_repositories.dart';

class AuthRepositoryImpl implements AuthRepository {
  final UserRemoteDataSource remoteDataSource;

  UserEntity? _currentUser;

  AuthRepositoryImpl(this.remoteDataSource);

  @override
  Future<UserEntity?> getCurrentUser() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _currentUser;
  }

  @override
  Future<void> login(String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final userModel = await remoteDataSource.getUserByEmail(email);

    if (userModel == null) {
      throw Exception('Usuário não encontrado');
    }

    if (password != '123456') {
      throw Exception('Senha incorreta');
    }

    _currentUser = userModel.toEntity();
  }

  @override
  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 200));
    _currentUser = null;
  }

  @override
  Future<void> register(UserEntity user) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final model = UserModel.fromEntity(user);
    await remoteDataSource.createUser(model);
    _currentUser = user;
  }
}
