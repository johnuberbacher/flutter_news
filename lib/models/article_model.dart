import 'package:flutter/material.dart';

class ArticleModel {
  String title;
  String author;
  String description;
  String urlToImage;
  //// DateTime publishedAt;
  String content;
  String source;
  String articleUrl;

  ArticleModel(
      {this.title,
      this.description,
      this.author,
      this.content,
      this.source,
      //// this.publishedAt,
      this.urlToImage,
      this.articleUrl});
}
