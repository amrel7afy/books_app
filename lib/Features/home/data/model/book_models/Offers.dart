import 'ListPrice.dart';
import 'RetailPrice.dart';
import 'dart:convert';

/// finskyOfferType : 1
/// listPrice : {"amountInMicros":688510000,"currencyCode":"EGP"}
/// retailPrice : {"amountInMicros":688510000,"currencyCode":"EGP"}

Offers offersFromJson(String str) => Offers.fromJson(json.decode(str));
String offersToJson(Offers data) => json.encode(data.toJson());
class Offers {
  Offers({
      num? finskyOfferType, 
      ListPrice? listPrice, 
      RetailPrice? retailPrice,}){
    _finskyOfferType = finskyOfferType;
    _listPrice = listPrice;
    _retailPrice = retailPrice;
}

  Offers.fromJson(dynamic json) {
    _finskyOfferType = json['finskyOfferType'];
    _listPrice = json['listPrice'];
    _retailPrice = json['retailPrice'] != null ? RetailPrice.fromJson(json['retailPrice']) : null;
  }
  num? _finskyOfferType;
  ListPrice? _listPrice;
  RetailPrice? _retailPrice;

  num? get finskyOfferType => _finskyOfferType;
  ListPrice? get listPrice => _listPrice;
  RetailPrice? get retailPrice => _retailPrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['finskyOfferType'] = _finskyOfferType;
    map['listPrice'] = _listPrice;
    if (_retailPrice != null) {
      map['retailPrice'] = _retailPrice?.toJson();
    }
    return map;
  }

}