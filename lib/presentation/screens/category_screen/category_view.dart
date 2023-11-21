import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_bulder.dart';

class CategoryView extends StatelessWidget {
  static String id = 'CategoryView';
  final String category;
  CategoryView({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(category: category,),
        ],
      ),
    );
  }
}
