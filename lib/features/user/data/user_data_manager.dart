import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/features/user/model/user_data_model.dart';
import 'package:eduapp_flutter/features/user/usecases/get_user_usecase.dart';
import 'package:eduapp_flutter/features/user/usecases/user_usecases.dart';
import 'package:injectable/injectable.dart';

@singleton
class UserDataManager extends DataManager<UserDataModel> {
  UserDataManager(UserUseCases super.useCases)
      : super(
          initData: UserDataModel.init(),
        );

  void getUser() {
    runUseCase<GetUserUseCase, void>(null);
  }
}