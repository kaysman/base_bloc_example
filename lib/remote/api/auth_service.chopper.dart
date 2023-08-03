// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$AuthService extends AuthService {
  _$AuthService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthService;

  @override
  Future<Response<RegisterResponse>> registerUser(
      Map<String, dynamic> request) {
    final Uri $url = Uri.parse('/auth/register');
    final $body = request;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<RegisterResponse, RegisterResponse>(
      $request,
      responseConverter: convertRegisterResponse,
    );
  }

  @override
  Future<Response<LoginResponse>> loginUser(Map<String, dynamic> request) {
    final Uri $url = Uri.parse('/auth/login');
    final $body = request;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<LoginResponse, LoginResponse>(
      $request,
      responseConverter: convertLoginResponse,
    );
  }
}
