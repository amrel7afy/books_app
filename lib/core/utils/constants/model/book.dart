import 'package:books_app/Features/home/domain/entities/book_entity.dart';

import 'book_models/AccessInfo.dart';
import 'book_models/SaleInfo.dart';
import 'book_models/volume_info.dart';

class Book extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;

  Book({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
  }) : super(
            img: volumeInfo!.imageLinks?.smallThumbnail ?? '',
            title: volumeInfo.title!,
            author: volumeInfo.authors?.first ?? 'no author',
            price: 0.00,
            rating: volumeInfo.averageRating??0,
            ratingCount: volumeInfo.ratingsCount??0);

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
        id: json['kind'],
        accessInfo: json['accessInfo'] != null
            ? AccessInfo.fromJson(json['accessInfo']!)
            : null,
        etag: json['etag'],
        kind: json['kind'],
        saleInfo: json['saleInfo'] != null
            ? SaleInfo.fromJson(json['saleInfo']!)
            : null,
        selfLink: json['selfLink'],
        volumeInfo: json['volumeInfo'] != null
            ? VolumeInfo.fromJson(json['volumeInfo']!)
            : null);
  }
}
