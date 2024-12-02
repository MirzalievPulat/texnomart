import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:texnomart/presentation/components/product_widget.dart';


part 'sticker.freezed.dart';

part 'sticker.g.dart';

@freezed
class Sticker with _$Sticker {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Sticker({
    @JsonKey(name: "background_color")
    String? backgroundColor,
    String? image,
    @JsonKey(name: "is_image")
    bool? isImage,
    String? name,
    @JsonKey(name: "show_in_card")
    bool? showInCard,
    @JsonKey(name: "text_color")
    String? textColor,
  }) = _Sticker;

  factory Sticker.fromJson(Map<String, dynamic> json) =>
      _$StickerFromJson(json);

}