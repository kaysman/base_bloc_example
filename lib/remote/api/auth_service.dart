import 'package:chopper/chopper.dart';
import 'package:eduapp_flutter/features/auth/model/login_response_model.dart';
import 'package:eduapp_flutter/features/auth/model/register_response_model.dart';
import 'package:eduapp_flutter/remote/api/api_routes.dart';

part 'auth_service.chopper.dart';

@ChopperApi(baseUrl: APIRoutes.baseAuth)
abstract class AuthService extends ChopperService {
  static AuthService create([ChopperClient? client]) => _$AuthService(client);

  @FactoryConverter(response: convertRegisterResponse)
  @Post(path: APIRoutes.pathRegisterEndUser)
  Future<Response<RegisterResponse>> registerUser(
    @Body() Map<String, dynamic> request,
  );

  @FactoryConverter(response: convertLoginResponse)
  @Post(path: APIRoutes.pathLoginEndUser)
  Future<Response<LoginResponse>> loginUser(
    @Body() Map<String, dynamic> request,
  );
}