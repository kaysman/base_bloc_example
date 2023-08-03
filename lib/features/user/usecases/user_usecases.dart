import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/features/user/model/user_data_model.dart';
import 'package:eduapp_flutter/features/user/usecases/get_user_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class UserUseCases extends UseCaseGenerator<UserDataModel> {
  UserUseCases(
    GetUserUseCase getUserUseCase,
  ){
    addUseCase(getUserUseCase);
  }
}