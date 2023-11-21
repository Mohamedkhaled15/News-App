import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices{
  final Dio dio;

  NewsServices(this.dio);

   Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get
        ('https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=c9b36de6baeb4e879eaa04db7f5facfb');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);

        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }


  }


}