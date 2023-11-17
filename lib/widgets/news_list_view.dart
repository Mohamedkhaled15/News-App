import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'news_post.dart';


class NewsListView extends StatelessWidget {

   NewsListView({
    super.key,
     required this.articles,
  });
final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(

        delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
              (context, index) => NewsPost(articleModel:articles[index],),
        )
    );
  }
}





