import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class SeverFailure extends Failure {
  SeverFailure(super.errorMessage);

  factory SeverFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioException.connectionTimeout:
        return SeverFailure('Connection Timeout, Please try again.');
      case DioException.sendTimeout:
        return SeverFailure('Send Timeout, Please try again.');
      case DioException.receiveTimeout:
        return SeverFailure('Receive Timeout, Please try again.');

      case DioException.badResponse:
        return SeverFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);

      case DioException.connectionError:
        return SeverFailure('Connection Error');

      default:
        return SeverFailure('Oops, There was an error, please try later.');
    }
  }

  factory SeverFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return SeverFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return SeverFailure('Page Not Found, Try again later!');
    } else if (statusCode == 500) {
      return SeverFailure('Internal server error, Try again later!');
    } else {
      return SeverFailure('Oops, There was an error, please try later.');
    }
  }
}
