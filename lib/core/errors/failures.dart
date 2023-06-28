import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioExeption(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with Apiserver');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with Apiserver');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout with Apiserver');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Your request canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate with Apiserver');
      default:
        return ServerFailure('Opps There Was An error, please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error , please try again later');
    } else {
      return ServerFailure('Opps There Was An error, please try again!');
    }
  }
}
