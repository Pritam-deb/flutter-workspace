import 'dart:convert';
import 'package:flutter_workspace/model/source.dart';

import 'articel.dart';

class ArticleModel {
  int? totalResults;
  List<Article>? articles;

  ArticleModel({
    this.totalResults,
    this.articles,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        totalResults: json["totalResults"],
        articles: List<Article>.from(
            json["articles"].map((e) => Article.fromJson(e))),
      );

  Map<String, dynamic> toJson() => {
        "totalResults": totalResults,
        "articles": List<dynamic>.from(articles!.map((e) => e.toJson())),
      };
}
