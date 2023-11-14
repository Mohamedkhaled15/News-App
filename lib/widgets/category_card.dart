import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 100,
        width: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              category.image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: Text(category.categoryName,
                style: TextStyle(
                    color: Colors.white, fontSize: 18))),
      ),
    );
  }
}