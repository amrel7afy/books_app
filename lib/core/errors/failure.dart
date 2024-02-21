import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioException.connectionTimeout:
        return ServerFailure('Connection Timeout, Please try again.');
      case DioException.sendTimeout:
        return ServerFailure('Send Timeout, Please try again.');
      case DioException.receiveTimeout:
        return ServerFailure('Receive Timeout, Please try again.');

      case DioException.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioException.connectionError:
        return ServerFailure('Connection Error');

      default:
        return ServerFailure('Oops, There was an error, please try later.');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Page Not Found, Try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, Try again later!');
    } else {
      return ServerFailure('Oops, There was an error, please try later.');
    }
  }
}
