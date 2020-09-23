import 'package:flutter/material.dart';

class ArticleModel {
  String title;
  String author;
  String description;
  String urlToImage;
  DateTime publishDate;
  String content;
  String articleUrl;
  Article(
      {this.title,
      this.description,
      this.author,
      this.content,
      this.publishDate,
      this.urlToImage,
      this.articleUrl});
}
