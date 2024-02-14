class City {
  final int id;
  final String name;
  final String imageUrl;
  bool isFavorite;

  City({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.isFavorite = false,
  });
}