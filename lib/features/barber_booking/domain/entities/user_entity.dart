enum UserRole { client, barber }

class UserEntity {
  final String id;
  final String name;
  final UserRole role;
  final String? email;
  final String? phone;

  UserEntity({
    required this.id,
    required this.name,
    required this.role,
    this.email,
    this.phone,
  });
}
