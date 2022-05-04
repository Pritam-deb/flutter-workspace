import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_workspace/model/article.dart';
import 'package:intl/intl.dart';

import '../utils/colors.dart';
import '../utils/textStyles.dart';
import '../model/article_model.dart';

class CardWidget extends StatelessWidget {
  final Article? article;
  final _saved = <Article>{};

  CardWidget({
    this.article,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return FittedBox(
      child: Container(
          decoration: BoxDecoration(
            color: kWhite,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: kSecondaryAccentColor,
                  offset: Offset(2, 2),
                  blurRadius: 10,
                  spreadRadius: -8)
            ],
          ),
          margin: EdgeInsets.symmetric(
              horizontal: width * 0.04, vertical: height * 0.015),
          padding: EdgeInsets.all(height * 0.02),
          child: Row(
            children: [
              Container(
                width: width * 0.56,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${article?.source?.name}",
                      maxLines: 1,
                      style: kHeading,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0, bottom: 12),
                      child: Text(
                        "${article?.title}",
                        maxLines: 6,
                        style: kBody,
                      ),
                    ),
                    article != null
                        ? Text(
                            "${DateFormat('dd-MM-yyy, hh:mm a').format(article!.publishedAt!)}",
                            style: kCaption,
                          )
                        : SizedBox(
                            height: 0,
                            width: 0,
                          )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Container(
                      height: height * 0.24,
                      width: width * 0.4,
                      child: CachedNetworkImage(
                        imageUrl: "${article?.urlToImage}",
                        fit: BoxFit.cover,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                                child: CircularProgressIndicator(
                                    value: downloadProgress.progress)),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: null,
                    semanticLabel: 'Save',
                  ),
                ],
              )
            ],
          )),
    );
  }
}
