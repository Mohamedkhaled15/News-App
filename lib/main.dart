
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/presentation/screens/category_screen/category_view.dart';

import 'package:news_app/presentation/screens/home_screen/home_view.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/new_home.dart';

void main() {
  CategoryModel category;
  runApp( MyApp());
}



class MyApp extends StatelessWidget {

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: {
        HomePage.id: (context) => const HomePage(),


      },
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}
