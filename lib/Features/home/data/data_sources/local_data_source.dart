import 'package:books_app/core/utils/constants/constants.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource{
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource{
  @override
  List<BookEntity> fetchFeaturedBooks() {
    var box=Hive.box<BookEntity>(kFeaturedBooksBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
    var box=Hive.box<BookEntity>(kNewestBooksBox);
    return box.values.toList();
  }

}