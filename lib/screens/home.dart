import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'article_detail.dart';
import '../services/news_fetch.dart';
import '../model/article_model.dart';
import '../utils/colors.dart';
import '../utils/textStyles.dart';
import '../utils/strings.dart';
import '../widgets/card_widget.dart';
import '../widgets/no_result.dart';
import 'package:flutter_workspace/widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NewsFetch? newsFetch;
  ArticleModel? articleModel;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    getNews();
    super.initState();
  }

  Future getNews({String country = "in"}) async {
    articleModel = await Provider.of<NewsFetch>(context, listen: false)
        .getNews(textEditingController.text, country: country);
  }

  @override
  Widget build(BuildContext context) {
    newsFetch = Provider.of<NewsFetch>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: getNews,
        child: Scaffold(
            backgroundColor: kSecondaryColor,
            appBar: buildAppBar(),
            body: Column(
              children: [
                buildBody(height),
              ],
            )),
      ),
    );
  }

  Widget buildBody(double height) {
    return (textEditingController.text.isNotEmpty &&
                articleModel?.articles?.length == 0) ||
            articleModel == null
        ? Padding(
            padding: EdgeInsets.only(top: height * 0.2),
            child: NoResult(),
          )
        : Expanded(
            child: ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: articleModel?.articles?.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                int? l = articleModel?.articles?.length;
                int fromLast = l! - index - 1;
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ArticleDetail(
                                  article: articleModel?.articles?[index],
                                )));
                  },
                  child: CardWidget(article: articleModel?.articles?[index]),
                );
              },
            ),
          );
  }

  Padding buildHead() {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff586580)),
          ),
        ],
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    leading: Icon(
      Icons.newspaper,
      color: kWhite,
    ),
    titleSpacing: 0,
    title: Text(
      title,
      style: kBody.copyWith(color: kSecondaryColor),
    ),
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: kPrimaryColor),
    backgroundColor: kPrimaryColor,
  );
}
