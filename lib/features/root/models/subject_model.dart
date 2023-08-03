import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_model.freezed.dart';
part 'subject_model.g.dart';

@freezed
class SubjectModel with _$SubjectModel {
  const factory SubjectModel({
    required String id,
    required String name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _SubjectModel;

  factory SubjectModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectModelFromJson(json);
}
