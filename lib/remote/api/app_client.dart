import 'package:chopper/chopper.dart';
import 'package:eduapp_flutter/remote/api/account_service.dart';
import 'package:eduapp_flutter/remote/api/auth_service.dart';
import 'package:eduapp_flutter/remote/api/interceptors/http_header_interceptor.dart';
import 'package:eduapp_flutter/remote/api/subject_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EduAppClient {
  static ChopperClient? _chopperClient;

  ChopperClient get chopperClient {
    if (_chopperClient != null) {
      return _chopperClient!;
    } else {
      _chopperClient = _initClient();
      return _chopperClient!;
    }
  }

  ChopperClient _initClient() => ChopperClient(
        interceptors: [HttpLoggingInterceptor(), HttpHeaderInterceptor()],
        baseUrl: Uri.parse('${dotenv.env['HOST_URL']}/api'),
        services: [
          AuthService.create(),
          AccountService.create(),
          SubjectService.create(),
        ],
        converter: const JsonConverter(),
        errorConverter: const JsonConverter(),
      );
}