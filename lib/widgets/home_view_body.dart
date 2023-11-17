import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/home_view_body.dart';
  import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_bulder.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [

      SliverToBoxAdapter(child: CategoriesListView()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 32,
          ),
        ),
         NewsListViewBuilder(),


//Vertical List view
      ],
    );
  }
}
