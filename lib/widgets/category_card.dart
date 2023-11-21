import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/presentation/screens/category_screen/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(category: category.categoryName);
        }));
      },
      child: Padding(
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
      ),
    );
  }
}