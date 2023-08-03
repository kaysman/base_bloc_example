import 'package:chopper/chopper.dart';
import 'package:eduapp_flutter/features/user/model/get_user_response.dart';
import 'package:eduapp_flutter/remote/api/api_routes.dart';

part 'account_service.chopper.dart';

@ChopperApi(baseUrl: APIRoutes.baseAccount)
abstract class AccountService extends ChopperService {
  static AccountService create([ChopperClient? client]) => _$AccountService(client);

  @FactoryConverter(response: convertGetMyInfoResponse)
  @Get(path: APIRoutes.pathMyInfo)
  Future<Response<GetMyInfoResponse>> getMyInfo();
}