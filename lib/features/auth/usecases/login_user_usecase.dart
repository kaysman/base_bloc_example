import 'package:base_core/base_core.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:eduapp_flutter/features/auth/model/login_payload.dart';
import 'package:eduapp_flutter/features/auth/model/login_response_model.dart';
import 'package:eduapp_flutter/features/failures.dart';
import 'package:eduapp_flutter/remote/api/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUsecase extends UseCase<LoginPayload, String> {
  LoginUsecase(this._authService);

  final AuthService _authService;

  @override
  Future<Either<Failure, String>> execute(LoginPayload params) async {
    return await _authService
        .loginUser(params.toJson())
        .then(onRes)
        .catchError(onErr);
  }

  Either<Failure, String> onRes(Response<LoginResponse> res) {
    if (res.isSuccessful) {
      if (res.body != null && res.body!.response != null) {
        final token = res.body!.response!.token;

        return right(token);
      }

      return left(UnableToLogin(message: res.body?.error?.toString()));
    }

    return left(UnableToLogin());
  }

  Either<Failure, String> onErr(Object? err) {
    logger.severe('Unable to login: $err');

    return left(UnableToLogin(message: '$err'));
  }
}
