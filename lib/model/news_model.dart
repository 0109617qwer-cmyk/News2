import 'package:supabase_flutter/supabase_flutter.dart';

class NewsModel
{
final String id;
final String title;
final String description;
final String image;
final String category;

NewsModel({
  required this.id,
  required this.title,
  required this.description,
  required this.image,required this.category
});
factory NewsModel.fromJson (Map<String,dynamic> json)
{
  return NewsModel(
      id: json["id"].toString(),
      title: json["title"] ?? '',
      description:json["description"] ?? '',
      image: json["image"] ?? '',
      category: json["category"].toString(),
  );
}

}

