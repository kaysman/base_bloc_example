import 'dart:async';

import 'package:base_core/base_core.dart';
import 'package:rxdart/rxdart.dart';

class ManualUseCaseRunner<P, R> {
  ManualUseCaseRunner(
    this._useCase,
    this._onFailure,
    CompositeSubscription compositeSubscription,
  ) {
    _onRun.addTo(compositeSubscription);
  }

  final UseCase<P, R> _useCase;

  final _a = ActivityIndicator();
  final PublishSubject<Failure> _onFailure;
  final onResult = PublishSubject<R>();
  final _onRequest = PublishSubject<P>();

  Stream<bool> get isLoading => _a.stream;

  void run(P param) {
    _onRequest.add(param);
  }

  StreamSubscription<R> get _onRun => _onRequest
      .whereNotLoading(_a)
      .switchMap(
        (p) => _useCase(p).onFailureForwardTo(_onFailure).trackActivity(_a),
      )
      .listen(onResult.add);

  void dispose() {
    _onFailure.close();
    _onRequest.close();
    onResult.close();
  }
}
