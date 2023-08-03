import 'package:base_core/base_core.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:eduapp_flutter/features/auth/model/register_response_model.dart';
import 'package:eduapp_flutter/features/auth/model/register_user_payload.dart';
import 'package:eduapp_flutter/features/failures.dart';
import 'package:eduapp_flutter/remote/api/auth_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterUserUsecase extends UseCase<RegisterPayload, bool> {
  RegisterUserUsecase(this._authService);

  final AuthService _authService;

  @override
  Future<Either<Failure, bool>> execute(params) async {
    return await _authService
        .registerUser(params.toJson())
        .then(onRes)
        .catchError(onErr);
  }

  Either<Failure, bool> onRes(Response<RegisterResponse> res) {
    if (res.isSuccessful) {
      if (res.body != null && res.body!.response != null) {
        return right(res.body!.response!);
      }

      return left(UnableToRegisterUser(message: res.body?.error?.toString()));
    }

    return left(UnableToRegisterUser());
  }

  Either<Failure, bool> onErr(Object? err) {
    logger.severe("Unable to register: $err");
    return left(UnableToRegisterUser(message: "$err"));
  }
}
