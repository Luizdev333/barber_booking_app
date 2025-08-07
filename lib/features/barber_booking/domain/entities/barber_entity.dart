class BarberEntity {
  const BarberEntity({
    required this.id,
    required this.name,
    required this.availableTimes,
    required this.imageUrl,
  });

  final int id;
  final String name;
  final DateTime availableTimes;
  final String imageUrl;
}
