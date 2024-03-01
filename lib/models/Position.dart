class Position {
  final int id;
  final int sportId;
  final String name;
  final String description;
  final DateTime createdAt;
  final DateTime updatedAt;

  Position({
    required this.id,
    required this.sportId,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      id: json['id'],
      sportId: json['sport_id'],
      name: json['name'],
      description: json['description'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
