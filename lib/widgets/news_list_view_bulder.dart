import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/error_message.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  bool isLoading = true;
  var future;
@override
  void initState() {

    super.initState();
    future=NewsServices(Dio()).getGeneralNews();
  }
  // @override
  @override
  Widget build(BuildContext context) {
    // return isLoading
    //     ? const SliverFillRemaining(
    //         child: Center(child: CircularProgressIndicator()))
    //     :articles.isNotEmpty? NewsListView(
    //         articles: articles,
    //       ):SliverFillRemaining(child: Image.asset('assets/images/error.png',fit: BoxFit.contain),);

    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          }
          else if(snapshot.hasError){
            return  const ErrorMessage();
          }
           else{
            return const SliverFillRemaining(child: Center(child: CircularProgressIndicator()),);
          }
        });
  }
}


