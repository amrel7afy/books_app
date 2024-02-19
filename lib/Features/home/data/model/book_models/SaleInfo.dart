
import 'package:books_app/Features/home/data/model/book_models/ListPrice.dart';
import 'package:books_app/Features/home/data/model/book_models/RetailPrice.dart';

import 'Offers.dart';
import 'dart:convert';

/// country : "EG"
/// saleability : "FOR_SALE"
/// isEbook : true
/// listPrice : {"amount":688.51,"currencyCode":"EGP"}
/// retailPrice : {"amount":688.51,"currencyCode":"EGP"}
/// buyLink : "https://play.google.com/store/books/details?id=s-IH_x6ytuQC&rdid=book-s-IH_x6ytuQC&rdot=1&source=gbs_api"
/// offers : [{"finskyOfferType":1,"listPrice":{"amountInMicros":688510000,"currencyCode":"EGP"},"retailPrice":{"amountInMicros":688510000,"currencyCode":"EGP"}}]

SaleInfo saleInfoFromJson(String str) => SaleInfo.fromJson(json.decode(str));
String saleInfoToJson(SaleInfo data) => json.encode(data.toJson());
class SaleInfo {
  SaleInfo({
      String? country, 
      String? saleability, 
      bool? isEbook, 
      ListPrice? listPrice, 
      RetailPrice? retailPrice, 
      String? buyLink, 
      List<Offers>? offers,}){
    _country = country;
    _saleability = saleability;
    _isEbook = isEbook;
    _listPrice = listPrice;
    _retailPrice = retailPrice;
    _buyLink = buyLink;
    _offers = offers;
}

  SaleInfo.fromJson(dynamic json) {
    _country = json['country'];
    _saleability = json['saleability'];
    _isEbook = json['isEbook'];
    _listPrice = json['listPrice'];
    _retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
    _buyLink = json['buyLink'];
    if (json['offers'] != null) {
      _offers = [];
      json['offers'].forEach((v) {
        _offers?.add(Offers.fromJson(v));
      });
    }
  }
  String? _country;
  String? _saleability;
  bool? _isEbook;
  ListPrice? _listPrice;
  RetailPrice? _retailPrice;
  String? _buyLink;
  List<Offers>? _offers;

  String? get country => _country;
  String? get saleability => _saleability;
  bool? get isEbook => _isEbook;
  ListPrice? get listPrice => _listPrice;
  RetailPrice? get retailPrice => _retailPrice;
  String? get buyLink => _buyLink;
  List<Offers>? get offers => _offers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['saleability'] = _saleability;
    map['isEbook'] = _isEbook;
    map['listPrice'] = _listPrice;
    if (_retailPrice != null) {
      map['retailPrice'] = _retailPrice?.toJson();
    }
    map['buyLink'] = _buyLink;
    if (_offers != null) {
      map['offers'] = _offers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}