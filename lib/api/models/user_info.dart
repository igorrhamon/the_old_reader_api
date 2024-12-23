class UserInfo {
  final String userId;
  final String userName;
  final String userProfileId;
  final String userEmail;
  final bool isBloggerUser;
  final int signupTimeSec;
  final bool isMultiLoginEnabled;
  final bool isPremium;

  UserInfo({
    required this.userId,
    required this.userName,
    required this.userProfileId,
    required this.userEmail,
    required this.isBloggerUser,
    required this.signupTimeSec,
    required this.isMultiLoginEnabled,
    required this.isPremium,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
      userId: json['userId'],
      userName: json['userName'],
      userProfileId: json['userProfileId'],
      userEmail: json['userEmail'],
      isBloggerUser: json['isBloggerUser'],
      signupTimeSec: json['signupTimeSec'],
      isMultiLoginEnabled: json['isMultiLoginEnabled'],
      isPremium: json['isPremium'],
    );
  }
}