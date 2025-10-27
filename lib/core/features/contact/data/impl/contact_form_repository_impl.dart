import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:portfolio_pavan/core/api_client/dio/dio_client.dart';
import 'package:portfolio_pavan/core/api_client/exception/dio_exceptions.dart';
import 'package:portfolio_pavan/core/features/contact/data/repository/contact_form_repository.dart';

class ContactFormRepositoryImpl implements ContactFormRepository {
  final Dio dio = DioClient().dio;
  final logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );
  @override
  Future<void> submitForm({
    required String firstName,
    required String lastName,
    required String email,
    required String message,
  }) async {
    try {
      final response = await dio.post(
        "https://api.emailjs.com/api/v1.0/email/send",
        data: {
          'service_id': "service_jev4039",
          'template_id': "template_dgwaozi",
          'user_id': "8PZuPDVV_7Mbs4_-7",
          'template_params': {
            'FIRST_NAME': firstName,
            'LAST_NAME': lastName,
            'EMAIL': email,
            'MESSAGE': message,
          },
        },
      );
      if (response.statusCode == 200) {
        logger.i("Email sent successfully");
      } else {
        throw DioExceptions(
          message: "Failed to submit request",
          data: response.data,
          statusCode: response.statusCode,
        );
      }
    } on DioException catch (e) {
      throw DioExceptions.fromDioError(e);
    } catch (e) {
      rethrow;
    }
  }
}
