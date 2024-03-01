class Sport {
  final int id;
  final String sportName;
  final String description;
  final String rules;
  final String createdAt;
  final String updatedAt;

  Sport({
    required this.id,
    required this.sportName,
    required this.description,
    required this.rules,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Sport.fromJson(Map<String, dynamic> json) {
    return Sport(
      id: json['id'],
      sportName: json['sport_name'],
      description: json['description'],
      rules: json['rules'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
