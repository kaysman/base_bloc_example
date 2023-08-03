// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SubjectService extends SubjectService {
  _$SubjectService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SubjectService;

  @override
  Future<Response<GetSubjectsListResponse>> getSubjectsList() {
    final Uri $url = Uri.parse('/subject/retrieve');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<GetSubjectsListResponse, GetSubjectsListResponse>(
      $request,
      responseConverter: convertGetSubjectsListResponse,
    );
  }
}
