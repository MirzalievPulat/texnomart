import 'package:freezed_annotation/freezed_annotation.dart';

part 'katalog.freezed.dart';
part 'katalog.g.dart';

@freezed
class Katalog with _$Katalog {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Katalog({
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
  }) = _Katalog;

  factory Katalog.fromJson(Map<String, dynamic> json) =>
      _$KatalogFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Data({
    @JsonKey(name: "data")
    required List<Datum> data,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Datum with _$Datum {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Datum({
    @JsonKey(name: "brands")
    required List<dynamic> brands,
    @JsonKey(name: "childs")
    required List<Child> childs,
    @JsonKey(name: "icon")
    required String icon,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "show_childs_in_web_mobile")
    required bool showChildsInWebMobile,
    @JsonKey(name: "slug")
    required String slug,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Child with _$Child {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Child({
    @JsonKey(name: "childs")
    List<Child>? childs,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "show_childs_in_web_mobile")
    required bool showChildsInWebMobile,
    @JsonKey(name: "slug")
    required String slug,
  }) = _Child;

  factory Child.fromJson(Map<String, dynamic> json) => _$ChildFromJson(json);
}

