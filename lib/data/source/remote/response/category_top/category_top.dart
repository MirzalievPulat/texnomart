



import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_top.freezed.dart';
part 'category_top.g.dart';

@freezed
class CategoryTop with _$CategoryTop {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoryTop({
    @JsonKey(name: "code")
    required int code,
    @JsonKey(name: "data")
    required Data data,
    @JsonKey(name: "message")
    required String message,
    @JsonKey(name: "status")
    required int status,
    @JsonKey(name: "success")
    required bool success,
  }) = _CategoryTop;

  factory CategoryTop.fromJson(Map<String, dynamic> json) =>
      _$CategoryTopFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Data({
    @JsonKey(name: "categories")
    required List<Parent> categories,
    @JsonKey(name: "has_child")
    required bool hasChild,
    @JsonKey(name: "has_child_image")
    required bool hasChildImage,
    @JsonKey(name: "parent")
    required Parent parent,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Parent with _$Parent {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Parent({
    @JsonKey(name: "has_child")
    required bool hasChild,
    @JsonKey(name: "id")
    required int id,
    // @JsonKey(name: "image")
    // required String image,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "slug")
    required String slug,
  }) = _Parent;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
}