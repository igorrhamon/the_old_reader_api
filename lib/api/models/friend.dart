class Friend {
  final String id;
  final String userName;
  final String userProfileId;
  final bool following;

  Friend({
    required this.id,
    required this.userName,
    required this.userProfileId,
    required this.following,
  });

  factory Friend.fromJson(Map<String, dynamic> json) {
    return Friend(
      id: json['id'],
      userName: json['userName'],
      userProfileId: json['userProfileId'],
      following: json['following'] ?? false,
    );
  }
}