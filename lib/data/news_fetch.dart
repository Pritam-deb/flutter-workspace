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

  bool searching = false;
  bool get isSearching => searching;
  set isSearching(bool value) {
    searching = value;
    notifyListeners();
  }

  bool connected = false;
  bool get isConnected => connected;
  set isConnected(bool value) {
    connected = value;
    notifyListeners();
  }

  bool oldest = false;
  bool get isOldest => oldest;
  set isOldest(bool value) {
    oldest = value;
    notifyListeners();
  }

  String country = "India";
  String get selCountry => country;
  set selCountry(String value) {
    country = value;
    notifyListeners();
  }

  Future<ArticleModel> getNews(String q, {String country = "in"}) async {
    try {
      isLoading = !searching;
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
