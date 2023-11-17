// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_services.dart';
// import 'news_post.dart';
//
// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });
//
//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }
//
// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articles=[];
//   bool isLoading=true;
//   @override
//   void initState(){
//
//     super.initState();
//     getGeneralData();
//   }
//
//   Future<void> getGeneralData() async {
//     articles= await NewsServices(Dio()).getGeneralNews();
//     isLoading=false;
//     setState(() {
//
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//
//     return isLoading?const SliverFillRemaining(
//
//         child: Center(child: CircularProgressIndicator())): SliverList(
//
//         delegate: SliverChildBuilderDelegate(
//           childCount: articles.length,
//               (context, index) => NewsPost(articleModel:articles[index] ,),
//         )
//     );
//   }
// }





