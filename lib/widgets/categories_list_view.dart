import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = [
    CategoryModel(
        image: 'assets/images/bu.jpg',
        categoryName: 'Business'),
    CategoryModel(
        image: 'assets/images/entertaiment.avif',
        categoryName: 'Entertainment'),
    CategoryModel(
        image: 'assets/images/health.avif',
        categoryName: 'Health'),
    CategoryModel(
        image: 'assets/images/science.avif',
        categoryName: 'Science'),
    CategoryModel(
        image: 'assets/images/sports2.jpeg',
        categoryName: 'Sports'),
    CategoryModel(
        image: 'assets/images/technology.jpeg',
        categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return  CategoryCard(category: categories[index],);
            }));
  }
}
