import 'package:eduapp_flutter/remote/api/account_service.dart';
import 'package:eduapp_flutter/remote/api/app_client.dart';
import 'package:eduapp_flutter/remote/api/auth_service.dart';
import 'package:eduapp_flutter/remote/api/subject_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class EduAppWebServices {
  @lazySingleton
  EduAppClient get client => EduAppClient();

  @injectable
  AuthService authService(EduAppClient client) =>
      client.chopperClient.getService<AuthService>();

  @injectable
  AccountService accountService(EduAppClient client) =>
      client.chopperClient.getService<AccountService>();

  @injectable
  SubjectService subjectService(EduAppClient client) =>
      client.chopperClient.getService<SubjectService>();
}
