class Item {
  final String id;
  final String title;
  final String content;
  final String author;
  final DateTime published;
  final String streamId;
  final List<String> categories;
  final bool read;
  final bool starred;
  final bool liked;
  final bool shared;

  Item({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    required this.published,
    required this.streamId,
    required this.categories,
    required this.read,
    required this.starred,
    required this.liked,
    required this.shared,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      title: json['title'],
      content: json['content']['content'],
      author: json['author'],
      published: DateTime.fromMillisecondsSinceEpoch(json['published'] * 1000),
      streamId: json['streamId'],
      categories: List<String>.from(json['categories']),
      read: json['categories'].contains('user/-/state/com.google/read'),
      starred: json['categories'].contains('user/-/state/com.google/starred'),
      liked: json['categories'].contains('user/-/state/com.google/like'),
      shared: json['categories'].contains('user/-/state/com.google/broadcast'),
    );
  }
}