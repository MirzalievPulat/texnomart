import 'package:freezed_annotation/freezed_annotation.dart';

part 'description.freezed.dart';
part 'description.g.dart';

@freezed
class Description with _$Description {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Description({
  @JsonKey(name: "code")
  final int? code,
  @JsonKey(name: "data")
  final DescData? data,
  @JsonKey(name: "message")
  final String? message,
  @JsonKey(name: "status")
  final int? status,
  @JsonKey(name: "success")
  final bool? success,
}) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}

@freezed
class DescData with _$DescData {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DescData({
    @JsonKey(name: "data")
    final String? data,
}) = _DescData;

  factory DescData.fromJson(Map<String, dynamic> json) =>
      _$DescDataFromJson(json);
}