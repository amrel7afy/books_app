import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity extends HiveObject{
  @HiveField(0)
  final String img;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String author;
  @HiveField(3)
  final num price;
  @HiveField(4)
  final num rating;
  @HiveField(5)
  final num ratingCount;


  BookEntity({required this.img, required this.title, required this.author, required this.price, required this.rating, required this.ratingCount});


}