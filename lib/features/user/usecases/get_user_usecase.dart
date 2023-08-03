
import 'package:base_core/base_core.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:eduapp_flutter/features/failures.dart';
import 'package:eduapp_flutter/features/user/model/get_user_response.dart';
import 'package:eduapp_flutter/features/user/model/user_data_model.dart';
import 'package:eduapp_flutter/remote/api/account_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserUseCase extends DataManagerUseCase<void, UserDataModel> {
  GetUserUseCase(
    this._accountService,
  );

  final AccountService _accountService;

  @override
  Future<Either<Failure, UserDataModel>> execute(
    Tuple2<void, UserDataModel> params,
  ) async {
    return _accountService.getMyInfo().then(_mapRes).catchError(_onError);
  }

  Either<Failure, UserDataModel> _mapRes(Response<GetMyInfoResponse> res) {
    if (res.isSuccessful) {
      final userInfo = res.body?.response;
      if (userInfo != null) {
        return right(UserDataModel(some(userInfo)));
      }

      return left(UserNotFound());
    }

    final err = res.error;
    logger.severe(err);

    return left(UnableToGetUserInfo());
  }

  Either<Failure, UserDataModel> _onError(dynamic err) {
    logger.severe(err);
    return left(UnableToGetUserInfo());
  }
}
