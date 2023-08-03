import 'package:chopper/chopper.dart';
import 'package:eduapp_flutter/features/root/models/get_subjects_response_model.dart';
import 'package:eduapp_flutter/remote/api/api_routes.dart';

part 'subject_service.chopper.dart';

@ChopperApi(baseUrl: APIRoutes.baseSubject)
abstract class SubjectService extends ChopperService {
  static SubjectService create([ChopperClient? client]) => _$SubjectService(client);

  @FactoryConverter(response: convertGetSubjectsListResponse)
  @Get(path: APIRoutes.pathGetSubjects)
  Future<Response<GetSubjectsListResponse>> getSubjectsList();
}