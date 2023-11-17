// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
//
// class NewsData {
//   final String imageUrl;
//   final String title;
//   final String description;
//
//   NewsData({required this.imageUrl, required this.title, required this.description});
// }
//
// class MyNewsWidget extends StatelessWidget {
//
//   static String id='MyNewHome';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('News Example'),
//       ),
//       body: FutureBuilder<NewsData>(
//         future: fetchData(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator();
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else {
//             NewsData newsData = snapshot.data!;
//             return Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.network(newsData.imageUrl),
//                 SizedBox(height: 16),
//                 Text(
//                   newsData.title,
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(newsData.description),
//               ],
//             );
//           }
//         },
//       ),
//     );
//   }
//
//   Future<NewsData> fetchData() async {
//     Dio dio = Dio();
//
//     // Define headers
//     Map<String, dynamic> headers = {
//       'X-RapidAPI-Key': '2edab6f035msh87b7a12dc9ee197p136585jsn0c22f7692f21',
//       'X-RapidAPI-Host': 'arabic-news-api.p.rapidapi.com',
//     };
//
//     // Define options
//     Options options = Options(
//       headers: headers,
//     );
//
//     // Define URL
//     String url = 'https://arabic-news-api.p.rapidapi.com/france24arabic';
//
//     try {
//       // Make GET request
//       Response response = await dio.get(url, options: options);
//
//       // Handle the response
//       if (response.statusCode == 200) {
//         // Assuming the image URL, title, and description are present in the response data
//         String imageUrl = response.data['image']; // Adjust this based on your actual response structure
//         String title = response.data['title'];
//         String description = response.data['content'];
//
//         return NewsData(imageUrl: imageUrl, title: title, description: description);
//       } else {
//         // Handle other status codes
//         print('Error: ${response.statusCode}, ${response.statusMessage}');
//         throw Exception('Failed to load data');
//       }
//     } catch (error) {
//       // Handle errors
//       print('Error: $error');
//       throw Exception('Failed to load data');
//     }
//   }
// }
//
