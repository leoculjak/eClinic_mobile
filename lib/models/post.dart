class Post {
  final int id;
  final String title;
  final String content;
  final DateTime publicationDate;

  Post(
      {required this.id,
      required this.title,
      required this.content,
      DateTime? publicationDate})
      : publicationDate = publicationDate ?? DateTime.now();

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      content: json['body'],
      publicationDate: DateTime.parse(json['publicationDate']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'publicationDate': publicationDate.toIso8601String(),
    };
  }
}
