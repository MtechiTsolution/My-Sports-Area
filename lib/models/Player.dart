class Player {
  final String userId;
  final String sportId;
  final String? jerseyNumber;
  final String positionId;
  final String height;
  final String weight;

  Player(
      {required this.userId,
      this.jerseyNumber,
      required this.sportId,
      required this.positionId,
      required this.height,
      required this.weight});

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'sport_id': sportId,
        'jersey_number': jerseyNumber,
        'position_id': positionId,
        'height': height,
        'weight': weight,
      };
}
