import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_workspace/model/article_model.dart';
import 'package:http/http.dart' as http;
import "../utils/strings.dart";
import '../model/article.dart';

class NewsFetch extends ChangeNotifier {
  bool loading = false;
  bool get isLoading => loading;
  set isLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  Future<ArticleModel> getNews(String q, {String country = "in"}) async {
    try {
      final queryParameters = {'country': country, 'apiKey': apiKey, 'q': q};
      final response = await http.get(
        Uri.https(url, "/v2/top-headlines", queryParameters),
      );
      final responseData = json.decode(response.body);
      if (response.statusCode != 200 && responseData["status"] == "error") {
        isLoading = false;
        throw const HttpException('Something went wrong!');
      }
      isLoading = false;
      return articleModelFromJson(response.body);
    } catch (error, stack) {
      isLoading = false;
      print(error);
      throw error;
    }
  }
}
