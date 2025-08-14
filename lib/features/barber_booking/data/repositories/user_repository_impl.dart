import 'package:barber_schedule/features/barber_booking/data/datasources/user_remote_datasource.dart';
import 'package:barber_schedule/features/barber_booking/domain/entities/user_entity.dart';
import 'package:barber_schedule/features/barber_booking/domain/repositories/user_repositories.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;
  UserRepositoryImpl(this.remoteDataSource);

  @override
  @override
  Future<UserEntity?> getUserByEmail(String email) async {
    final userModel = await remoteDataSource.getUserByEmail(email);
    return userModel?.toEntity();
  }
}
