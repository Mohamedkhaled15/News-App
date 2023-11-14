import 'package:flutter/material.dart';
import 'news_post.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context,index){
          return const NewsPost();

        });
  }
}





