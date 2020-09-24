import 'package:flutter_news/models/article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_news/auth/key.dart';

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=us&category=business&pageSize=30&apiKey=" +
            apiKey;
    var response = await http.get(url);

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      jsonData["articles"].forEach(
        (element) {
          if (element["urlToImage"] != null && element["description"] != null) {
            ArticleModel articleModel = ArticleModel(
              title: element["title"],
              author: element["author"],
              source: element["source"]["name"],
              description: element["description"],
              articleUrl: element["url"],
              urlToImage: element["urlToImage"],
              //   publishedAt: element["publishedAt"],
              content: element["content"],
            );
            news.add(articleModel);
          }
        },
      );
    }
  }
}
