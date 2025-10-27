import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  final String message;
  final DioExceptionType? type;
  final int? statusCode;
  final dynamic data;
  DioExceptions({required this.message, this.type, this.statusCode, this.data});
  @override
  String toString() => message;
  static DioExceptions fromDioError(DioException dioError) {
    String errorMessage = "Something went wrong";
    final response = dioError.response;
    final statusCode = response?.statusCode;
    final serverMessage = response?.data is Map<String, dynamic>
        ? response?.data["message"] ?? response?.data["error"]
        : null;
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        errorMessage = "Connection timeout. Please try again.";
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = "Send timeout. Please try again.";
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = "Receive timeout. Please try again.";
        break;
      case DioExceptionType.badResponse:
        errorMessage = serverMessage ?? "Internal server error";
        break;
      case DioExceptionType.cancel:
        errorMessage = "Request was cancelled";
        break;
      case DioExceptionType.connectionError:
        errorMessage = "No Internet connection. Please check your network.";
        break;
      default:
        errorMessage = "Unexpected error occurred";
        break;
    }
    return DioExceptions(
      message: errorMessage,
      type: dioError.type,
      statusCode: statusCode,
      data: response?.data,
    );
  }
}
