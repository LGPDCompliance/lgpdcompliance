import 'dart:convert';

class NewsModel {
  String author;
  String title;
  String description;
  String url;
  String image;
  DateTime publishedAt;
  String content;

  NewsModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.image,
    required this.publishedAt,
    required this.content,
  });

  factory NewsModel.fromJson(String str) => NewsModel.fromMap(json.decode(str));

  factory NewsModel.fromMap(Map<String, dynamic> json) {
    return NewsModel(
      author: json['source']["name"] ?? "",
      title: json['title'] ?? "",
      description: json['description'] ?? "",
      url: json['url'] ?? "",
      image: json['image'] ?? "https://www.pngmart.com/files/10/Newspaper-PNG-Picture.png",
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content'] ?? "",
    );
  }
}
