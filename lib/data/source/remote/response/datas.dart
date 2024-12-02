import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:texnomart/data/source/remote/response/product.dart';

part 'datas.freezed.dart';
part 'datas.g.dart';

@freezed
class Datas with _$Datas {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Datas({@JsonKey(name: "data") List<Product>? products}) = _Datas;

  factory Datas.fromJson(Map<String, dynamic> json) => _$DatasFromJson(json);
}
