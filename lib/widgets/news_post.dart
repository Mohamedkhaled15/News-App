import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsPost extends StatelessWidget {
  const NewsPost({
    super.key, required this.articleModel,
  });
final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16,right: 10,left: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child:articleModel.image != null? Image.network(
              articleModel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ):Image.asset('assets/images/treka.jpg'),

          ),
          const SizedBox(height: 12,),
          Text(articleModel.title,
            maxLines: 2,
          overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),

          ),
          const SizedBox(height: 8,),
          articleModel.subTitle != null?Text(articleModel.subTitle!,
          maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              fontSize:14
            ),
          ):const Text('Sub Title'),

        ],
      ),
    );
  }
}
