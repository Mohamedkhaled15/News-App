import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
  import 'package:news_app/widgets/news_list_view.dart';


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
        const NewsListView(),


//Vertical List view
      ],
    );
  }
}