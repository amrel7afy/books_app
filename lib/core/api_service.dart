import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';



class WebServices {
  static late Dio dio;

final String baseUrl='https://www.googleapis.com/books/v1/volumes';

  WebServices() {
    Map<String, String> headers = {'Accept': '*/*'};
    BaseOptions baseOptions = BaseOptions(
      baseUrl: baseUrl,
      headers: headers,
      receiveDataWhenStatusError: true,
       receiveTimeout: const Duration(seconds: 15),
      connectTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),

    );
    dio = Dio(baseOptions);
    dio.interceptors.add(LogInterceptor(error: true));

  }

  static Future<Map<String,dynamic>> getData(
      {required String endPoint, Map<String, dynamic>? query}) async {
    try {
      Response response = await dio.get(endPoint, queryParameters: query);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data();
      } else {
        throw HttpException(
            'getData response.statusCode: ${response.statusCode.toString()}');
      }
    } on DioException catch (e) {
      log('DioException');
      // لو كان ال response مش ب null هات ال errorMessage لو ب null حط مكانها Oops, there
      final String errMessage =
          e.response?.data['error']['message'] ?? 'Oops, there was an error.';
      log(errMessage);
      throw HttpException(errMessage);
    } catch (e) {
      log('getData Oops, there was an error: ${e.toString()}');
      throw Exception(e.toString());
    }
  }

  static Future<Response> postData(
      {required String endPoint,
        @required Map<String, dynamic>? data,
        @required Map<String, dynamic>? query,
        String? token}) async {
    if (token != null) {
      dio.options.headers.addAll({'Authorization': 'Bearer $token'});
    }
    try {
      Response response = await dio.post(
        endPoint,
        queryParameters: query,
        data: data,
      );
      return response;
    } on DioException catch (errMessage) {
      log('DioException');
      // لو كان ال response مش ب null هات ال errorMessage لو ب null حط مكانها Oops, there
      /*   final String errMessage =
          e.response?.data['error']['message'] ?? 'Oops, there was an error.';
      log(errMessage);*/
      throw HttpException('HttpException: $errMessage' 'status code:>>${errMessage.response?.statusCode}');
    } catch (e) {
      throw HttpException(e.toString());
    }
  }
}