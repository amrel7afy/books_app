import 'package:books_app/Features/home/data/model/book_models/ImageLinks.dart';
import 'package:books_app/Features/home/data/model/book_models/PanelizationSummary.dart';

import 'IndustryIdentifiers.dart';
import 'ReadingModes.dart';

import 'dart:convert';

/// title : "Learning C++ Functional Programming"
/// authors : ["Wisnu Anggoro"]
/// publisher : "Packt Publishing Ltd"
/// publishedDate : "2017-08-10"
/// description : "Apply Functional Programming techniques to C++ to build highly modular, testable, and reusable code About This Book Modularize your applications and make them highly reusable and testable Get familiar with complex concepts such as metaprogramming, concurrency, and immutability A highly practical guide to building functional code in C++ filled with lots of examples and real-world use cases Who This Book Is For This book is for C++ developers comfortable with OOP who are interested in learning how to apply the functional paradigm to create robust and testable apps. What You Will Learn Get to know the difference between imperative and functional approaches See the use of first-class functions and pure functions in a functional style Discover various techniques to apply immutable state to avoid side effects Design a recursive algorithm effectively Create faster programs using lazy evaluation Structure code using design patterns to make the design process easier Use concurrency techniques to develop responsive software Learn how to use the C++ Standard Template Library and metaprogramming in a functional way to improve code optimization In Detail Functional programming allows developers to divide programs into smaller, reusable components that ease the creation, testing, and maintenance of software as a whole. Combined with the power of C++, you can develop robust and scalable applications that fulfill modern day software requirements. This book will help you discover all the C++ 17 features that can be applied to build software in a functional way. The book is divided into three modules—the first introduces the fundamentals of functional programming and how it is supported by modern C++. The second module explains how to efficiently implement C++ features such as pure functions and immutable states to build robust applications. The last module describes how to achieve concurrency and apply design patterns to enhance your application's performance. Here, you will also learn to optimize code using metaprogramming in a functional way. By the end of the book, you will be familiar with the functional approach of programming and will be able to use these techniques on a daily basis. Style and approach This book uses a module-based approach, where each module will cover important aspects of functional programming in C++ and will help you develop efficient and robust applications through gaining a practical understanding."
/// industryIdentifiers : [{"type":"ISBN_13","identifier":"9781787280588"},{"type":"ISBN_10","identifier":"1787280586"}]
/// readingModes : {"text":true,"image":true}
/// pageCount : 298
/// printType : "BOOK"
/// categories : ["Computers"]
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "2.2.3.0.preview.3"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=MJZGDwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=MJZGDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=MJZGDwAAQBAJ&printsec=frontcover&dq=programming&hl=&cd=2&source=gbs_api"
/// infoLink : "https://play.google.com/store/books/details?id=MJZGDwAAQBAJ&source=gbs_api"
/// canonicalVolumeLink : "https://play.google.com/store/books/details?id=MJZGDwAAQBAJ"

VolumeInfo volumeInfoFromJson(String str) =>
    VolumeInfo.fromJson(json.decode(str));

String volumeInfoToJson(VolumeInfo data) => json.encode(data.toJson());

class VolumeInfo {
  VolumeInfo({
    String? title,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifiers>? industryIdentifiers,
    ReadingModes? readingModes,
    num? pageCount,
    String? printType,
    List<String>? categories,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) {
    _title = title;
    _authors = authors;
    _publisher = publisher;
    _publishedDate = publishedDate;
    _description = description;
    _industryIdentifiers = industryIdentifiers;
    _readingModes = readingModes;
    _pageCount = pageCount;
    _printType = printType;
    _categories = categories;
    _maturityRating = maturityRating;
    _allowAnonLogging = allowAnonLogging;
    _contentVersion = contentVersion;
    _panelizationSummary = panelizationSummary;
    _imageLinks = imageLinks;
    _language = language;
    _previewLink = previewLink;
    _infoLink = infoLink;
    _canonicalVolumeLink = canonicalVolumeLink;
  }

  VolumeInfo.fromJson(dynamic json) {
    _title = json['title'];
    _authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    _publisher = json['publisher'];
    _publishedDate = json['publishedDate'];
    _description = json['description'];
    if (json['industryIdentifiers'] != null) {
      _industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        _industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    _readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    _pageCount = json['pageCount'];
    _printType = json['printType'];
    _categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    _maturityRating = json['maturityRating'];
    _allowAnonLogging = json['allowAnonLogging'];
    _contentVersion = json['contentVersion'];
    _panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    _imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    _language = json['language'];
    _previewLink = json['previewLink'];
    _infoLink = json['infoLink'];
    _canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  String? _title;
  List<String>? _authors;
  String? _publisher;
  String? _publishedDate;
  String? _description;
  List<IndustryIdentifiers>? _industryIdentifiers;
  ReadingModes? _readingModes;
  num? _pageCount;
  String? _printType;
  List<String>? _categories;
  String? _maturityRating;
  bool? _allowAnonLogging;
  String? _contentVersion;
  PanelizationSummary? _panelizationSummary;
  ImageLinks? _imageLinks;
  String? _language;
  String? _previewLink;
  String? _infoLink;
  String? _canonicalVolumeLink;

  String? get title => _title;

  List<String>? get authors => _authors;

  String? get publisher => _publisher;

  String? get publishedDate => _publishedDate;

  String? get description => _description;

  List<IndustryIdentifiers>? get industryIdentifiers => _industryIdentifiers;

  ReadingModes? get readingModes => _readingModes;

  num? get pageCount => _pageCount;

  String? get printType => _printType;

  List<String>? get categories => _categories;

  String? get maturityRating => _maturityRating;

  bool? get allowAnonLogging => _allowAnonLogging;

  String? get contentVersion => _contentVersion;

  PanelizationSummary? get panelizationSummary => _panelizationSummary;

  ImageLinks? get imageLinks => _imageLinks;

  String? get language => _language;

  String? get previewLink => _previewLink;

  String? get infoLink => _infoLink;

  String? get canonicalVolumeLink => _canonicalVolumeLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['authors'] = _authors;
    map['publisher'] = _publisher;
    map['publishedDate'] = _publishedDate;
    map['description'] = _description;
    if (_industryIdentifiers != null) {
      map['industryIdentifiers'] =
          _industryIdentifiers?.map((v) => v.toJson()).toList();
    }
    if (_readingModes != null) {
      map['readingModes'] = _readingModes?.toJson();
    }
    map['pageCount'] = _pageCount;
    map['printType'] = _printType;
    map['categories'] = _categories;
    map['maturityRating'] = _maturityRating;
    map['allowAnonLogging'] = _allowAnonLogging;
    map['contentVersion'] = _contentVersion;
    if (_panelizationSummary != null) {
      map['panelizationSummary'] = _panelizationSummary?.toJson();
    }
    if (_imageLinks != null) {
      map['imageLinks'] = _imageLinks?.toJson();
    }
    map['language'] = _language;
    map['previewLink'] = _previewLink;
    map['infoLink'] = _infoLink;
    map['canonicalVolumeLink'] = _canonicalVolumeLink;
    return map;
  }
}
