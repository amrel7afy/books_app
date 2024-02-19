import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class SeverFailure extends Failure {
  SeverFailure(super.errorMessage);

  factory SeverFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return SeverFailure('Connection Timeout, Please try again.');
      case DioErrorType.sendTimeout:
        return SeverFailure('Send Timeout, Please try again.');
      case DioErrorType.receiveTimeout:
        return SeverFailure('Receive Timeout, Please try again.');
      case DioErrorType.badCertificate:
        return SeverFailure('Bad Certificate Timeout, Please try again.');
      case DioErrorType.badResponse:
        return SeverFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      case DioErrorType.cancel:
        return SeverFailure('Request was canceled');
      case DioErrorType.connectionError:
        return SeverFailure('Connection Error');
      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return SeverFailure('No Internet Connection');
        }
        return SeverFailure('Unexpected Error, Please try later!');
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
