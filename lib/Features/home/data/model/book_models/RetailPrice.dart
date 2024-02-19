import 'dart:convert';

/// amountInMicros : 688510000
/// currencyCode : "EGP"

RetailPrice retailPriceFromJson(String str) => RetailPrice.fromJson(json.decode(str));
String retailPriceToJson(RetailPrice data) => json.encode(data.toJson());
class RetailPrice {
  RetailPrice({
      num? amountInMicros, 
      String? currencyCode,}){
    _amountInMicros = amountInMicros;
    _currencyCode = currencyCode;
}

  RetailPrice.fromJson(dynamic json) {
    _amountInMicros = json['amountInMicros'];
    _currencyCode = json['currencyCode'];
  }
  num? _amountInMicros;
  String? _currencyCode;

  num? get amountInMicros => _amountInMicros;
  String? get currencyCode => _currencyCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amountInMicros'] = _amountInMicros;
    map['currencyCode'] = _currencyCode;
    return map;
  }

}