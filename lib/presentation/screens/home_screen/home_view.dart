import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String id='HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
          children: [
            TextSpan(text: 'News',style: TextStyle(color: Colors.black)),
            TextSpan(text: 'Cloud',style: TextStyle(color: Colors.orange))
          ],
          ),

        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 120,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image:AssetImage(
                          'assets/images/entertaiment.avif',),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Center(child: Text('Business', style: TextStyle(color: Colors.white,fontSize: 18))),
                ),
              );
            }),
          ),

        ],
      )
    );

  }
}
