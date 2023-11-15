import 'package:flutter/material.dart';

class NewsPost extends StatelessWidget {
  const NewsPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16,right: 10,left: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/images/koler.jpeg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 12,),
          const Text('Large Title 3la fekra Abo khaled hewa Abo 3mo weAbo 3mo hewa Abo khaled this is true fact ',
            maxLines: 2,
          overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),

          ),
          const SizedBox(height: 8,),
          const Text('Sub Title',
          maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              fontSize:14
            ),
          )

        ],
      ),
    );
  }
}
