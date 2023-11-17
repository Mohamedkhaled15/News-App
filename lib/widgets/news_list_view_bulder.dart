import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralData();
  }

  Future<void> getGeneralData() async {
    articles = await NewsServices(Dio()).getGeneralNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverFillRemaining(
            child: Center(child: CircularProgressIndicator()))
        :articles.isNotEmpty? NewsListView(
            articles: articles,
          ):SliverFillRemaining(child: Image.asset('assets/images/error.png',fit: BoxFit.contain),);
  }
}
