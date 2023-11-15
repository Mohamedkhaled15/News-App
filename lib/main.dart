
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/home_screen/home_view.dart';
import 'package:news_app/services/news_services.dart';

void main() {
  NewsServices(Dio()).getGeneralNews();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePage.id: (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
