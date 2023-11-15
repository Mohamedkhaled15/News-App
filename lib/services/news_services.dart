import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices{
  final Dio dio;

  NewsServices(this.dio);

   Future<List<ArticleModel>> getGeneralNews() async {
    var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=d649fdcc68224cdb8b8f90d88d707ff3');
    Map<String,dynamic> jsonData= response.data;

    List<dynamic> articles=jsonData['articles'];
    List<ArticleModel> articlesList = [];

    for(var article in articles){
      ArticleModel articleModel=ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);

      articlesList.add(articleModel);
    }
       return articlesList;
  }


}