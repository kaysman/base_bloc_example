import 'dart:async';

import 'package:base_core/base_core.dart';
import 'package:eduapp_flutter/features/root/models/subject_model.dart';
import 'package:eduapp_flutter/features/root/usecases/get_school_list_usecase.dart';
import 'package:eduapp_flutter/utils/manual_usecase_runner.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

abstract class SubjectBloc extends BaseBloc {
  Stream<List<SubjectModel>> get subjects;
}

@Injectable(as: SubjectBloc)
class SubjectBlocImpl extends SubjectBloc {
  SubjectBlocImpl(
    this._getSubjectsListUsecase,
  ) {
    _getSubjectsRunner = ManualUseCaseRunner(
      _getSubjectsListUsecase,
      _onFailure,
      compositeSubscription,
    );
    _onGetSubjects.addTo(compositeSubscription);
    _getSubjectsRunner.run(null);
  }

  final GetSubjectsListUsecase _getSubjectsListUsecase;

  late ManualUseCaseRunner<void, List<SubjectModel>> _getSubjectsRunner;

  final _onFailure = PublishSubject<Failure>();
  final _subjects = BehaviorSubject<List<SubjectModel>>();

  StreamSubscription get _onGetSubjects =>
      _getSubjectsRunner.onResult.listen(_subjects.add);

  @override
  Stream<List<SubjectModel>> get subjects => _subjects.stream;
}
