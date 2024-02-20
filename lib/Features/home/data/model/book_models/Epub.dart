class Epub {
  bool? isAvailable;
  String? acsTokenLink;

  Epub({required this.isAvailable, required this.acsTokenLink});

  Epub.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isAvailable'] = isAvailable;
    data['acsTokenLink'] = acsTokenLink;
    return data;
  }
}