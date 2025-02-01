import 'package:freezed_annotation/freezed_annotation.dart';

part 'charracters.freezed.dart';
part 'charracters.g.dart';

@freezed
class Charracters with _$Charracters {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Charracters({
    @JsonKey(name: "code") final int? code,
    @JsonKey(name: "data") final Data? data,
    @JsonKey(name: "message") final String? message,
    @JsonKey(name: "status") final int? status,
    @JsonKey(name: "success") final bool? success,
  }) = _Charracters;

  factory Charracters.fromJson(Map<String, dynamic> json) =>
      _$CharractersFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Data({@JsonKey(name: "data") final List<Datum>? data}) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Datum with _$Datum {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Datum({
    @JsonKey(name: "characters") final List<Character>? characters,
    @JsonKey(name: "name") final String? name,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class Character with _$Character {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Character({
    @JsonKey(name: "name") final String? name,
    @JsonKey(name: "value") final String? value,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
