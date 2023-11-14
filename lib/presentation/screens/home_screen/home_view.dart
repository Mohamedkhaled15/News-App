import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/home_view_body.dart';
import 'package:news_app/widgets/news_list_view.dart';

import '../../../widgets/news_post.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              children: [
                TextSpan(text: 'News', style: TextStyle(color: Colors.black)),
                TextSpan(text: 'Cloud', style: TextStyle(color: Colors.orange))
              ],
            ),
          ),
          elevation: 0,
        ),
        body: const HomeViewBody());
  }
}


