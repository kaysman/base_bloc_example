import 'package:base_core/base_core.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:eduapp_flutter/features/failures.dart';
import 'package:eduapp_flutter/features/root/models/get_subjects_response_model.dart';
import 'package:eduapp_flutter/features/root/models/subject_model.dart';
import 'package:eduapp_flutter/remote/api/subject_service.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSubjectsListUsecase extends UseCase<void, List<SubjectModel>> {

  GetSubjectsListUsecase(this._subjectService);

  final SubjectService _subjectService;
  
  @override
  Future<Either<Failure, List<SubjectModel>>> execute(void params) async {
    return _subjectService.getSubjectsList().then(_mapRes).catchError(_onErr);
  }

  Either<Failure, List<SubjectModel>> _mapRes(Response<GetSubjectsListResponse> res) {
    if (res.isSuccessful) {
      final subjList = res.body?.response;
      
      if (subjList != null) {
        return right(subjList);
      }

      return left(SubjectsNotFound());
    }

    final err = res.error;
    logger.severe(err);

    return left(UnableToGetSubjects());
  }

  Either<Failure, List<SubjectModel>> _onErr(dynamic err) {
    logger.severe(err);
    return left(UnableToGetSubjects());
  }
}