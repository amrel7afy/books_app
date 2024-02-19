import 'dart:convert';

/// textSnippet : "This book is the definitive, must-have reference for any developer who wants to understand C#. With annotations from: Brad Abrams Joseph Albahari Krzysztof Cwalina Jesse Liberty Eric Lippert Christian Nagel Vladimir Reshetnikov Marek Safar ..."

SearchInfo searchInfoFromJson(String str) => SearchInfo.fromJson(json.decode(str));
String searchInfoToJson(SearchInfo data) => json.encode(data.toJson());
class SearchInfo {
  SearchInfo({
      String? textSnippet,}){
    _textSnippet = textSnippet;
}

  SearchInfo.fromJson(dynamic json) {
    _textSnippet = json['textSnippet'];
  }
  String? _textSnippet;

  String? get textSnippet => _textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = _textSnippet;
    return map;
  }

}