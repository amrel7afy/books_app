import 'package:books_app/Features/home/domain/entities/book_entity.dart';
import 'package:books_app/core/utils/constants/api_service.dart';
import 'package:books_app/core/utils/constants/constants.dart';


import '../../../../core/utils/constants/functions.dart';
import '../../../../core/utils/constants/model/book.dart';

abstract class HomeRemoteDataSource{
  Future<List<BookEntity>>fetchFeaturedBooks();
  Future<List<BookEntity>>fetchNewestBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource{
 final ApiServices _apiServices  ;

  HomeRemoteDataSourceImpl(this._apiServices);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks()async {
    var data=await _apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&q=History&Sorting=relevance');
    List<BookEntity> books = getBookList(data);
    await saveData<BookEntity>(books,kFeaturedBooksBox);
    return books;
  }




  @override
  Future<List<BookEntity>> fetchNewestBooks() async{
    var data=await _apiServices.get(endPoint: 'volumes?Filtering=free-ebooks&q=Comedy&Sorting=relevance');
    List<BookEntity> books = getBookList(data);
    await saveData(books,kNewestBooksBox);
    return books;
  }

 List<BookEntity> getBookList(Map<String, dynamic> data) {
   List<BookEntity>books=[];
   for (var bookMap in data['items']){
     books.add(Book.fromJson(bookMap));
   }
   return books;
 }
}