// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$AccountService extends AccountService {
  _$AccountService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AccountService;

  @override
  Future<Response<GetMyInfoResponse>> getMyInfo() {
    final Uri $url = Uri.parse('/account/info');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<GetMyInfoResponse, GetMyInfoResponse>(
      $request,
      responseConverter: convertGetMyInfoResponse,
    );
  }
}
