import 'package:News/model/news_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatelessWidget {
  final NewsModel news;

  const NewsDetailsScreen({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
             leading: IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.arrow_back)),
             actions: [
               IconButton(onPressed: (){}, icon: Icon(Icons.search)),
               const SizedBox(width: 8),
             ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CachedNetworkImage(
                imageUrl: news.image,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) =>
              const Icon(Icons.broken_image),
            ),
             const SizedBox(height: 5),
             Padding(
                 padding: const EdgeInsets.all(16),
                 child: Column(
                   children: [
                     Text(news.title,
                     style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,height: 1.3),),
                     const SizedBox(height: 10),
                     Text(news.description,style: TextStyle(fontSize: 16,color: Colors.grey[800],height: 1.3),),
                   ],
                 ),
             )
          ],
        ),
      ),
    );
  }
}
