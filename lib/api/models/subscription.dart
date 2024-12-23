class Subscription {
  final String id;
  final String title;
  final String url;
  final String htmlUrl;
  final String iconUrl;
  final String folderId;

  Subscription({
    required this.id,
    required this.title,
    required this.url,
    required this.htmlUrl,
    required this.iconUrl,
    required this.folderId,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) {
    return Subscription(
      id: json['id'],
      title: json['title'],
      url: json['url'],
      htmlUrl: json['htmlUrl'],
      iconUrl: json['iconUrl'],
      folderId: json['folderId'],
    );
  }
}