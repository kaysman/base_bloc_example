import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:eduapp_flutter/features/auth/model/in_memory_token.dart';
import 'package:eduapp_flutter/remote/api/api_routes.dart';

class HttpHeaderInterceptor implements RequestInterceptor, ResponseInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) async {
    final base = await request.toBaseRequest();

    base.headers['Content-Type'] = 'application/json';

    if (APIRoutes.needsAuth(base.url.path)) {
      final token = InMemoryToken.instance.token;
      base.headers['Authorization'] = 'Bearer $token';
    }
    return request.copyWith(headers: base.headers);
  }

  @override
  FutureOr<Response<dynamic>> onResponse(Response<dynamic> response) =>
      response;
}
