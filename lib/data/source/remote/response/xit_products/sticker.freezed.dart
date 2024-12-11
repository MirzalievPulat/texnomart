// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sticker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sticker _$StickerFromJson(Map<String, dynamic> json) {
  return _Sticker.fromJson(json);
}

/// @nodoc
mixin _$Sticker {
  @JsonKey(name: "background_color")
  String? get backgroundColor => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "is_image")
  bool? get isImage => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "show_in_card")
  bool? get showInCard => throw _privateConstructorUsedError;
  @JsonKey(name: "text_color")
  String? get textColor => throw _privateConstructorUsedError;

  /// Serializes this Sticker to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StickerCopyWith<Sticker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickerCopyWith<$Res> {
  factory $StickerCopyWith(Sticker value, $Res Function(Sticker) then) =
      _$StickerCopyWithImpl<$Res, Sticker>;
  @useResult
  $Res call(
      {@JsonKey(name: "background_color") String? backgroundColor,
      String? image,
      @JsonKey(name: "is_image") bool? isImage,
      String? name,
      @JsonKey(name: "show_in_card") bool? showInCard,
      @JsonKey(name: "text_color") String? textColor});
}

/// @nodoc
class _$StickerCopyWithImpl<$Res, $Val extends Sticker>
    implements $StickerCopyWith<$Res> {
  _$StickerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? image = freezed,
    Object? isImage = freezed,
    Object? name = freezed,
    Object? showInCard = freezed,
    Object? textColor = freezed,
  }) {
    return _then(_value.copyWith(
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      showInCard: freezed == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StickerImplCopyWith<$Res> implements $StickerCopyWith<$Res> {
  factory _$$StickerImplCopyWith(
          _$StickerImpl value, $Res Function(_$StickerImpl) then) =
      __$$StickerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "background_color") String? backgroundColor,
      String? image,
      @JsonKey(name: "is_image") bool? isImage,
      String? name,
      @JsonKey(name: "show_in_card") bool? showInCard,
      @JsonKey(name: "text_color") String? textColor});
}

/// @nodoc
class __$$StickerImplCopyWithImpl<$Res>
    extends _$StickerCopyWithImpl<$Res, _$StickerImpl>
    implements _$$StickerImplCopyWith<$Res> {
  __$$StickerImplCopyWithImpl(
      _$StickerImpl _value, $Res Function(_$StickerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? backgroundColor = freezed,
    Object? image = freezed,
    Object? isImage = freezed,
    Object? name = freezed,
    Object? showInCard = freezed,
    Object? textColor = freezed,
  }) {
    return _then(_$StickerImpl(
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isImage: freezed == isImage
          ? _value.isImage
          : isImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      showInCard: freezed == showInCard
          ? _value.showInCard
          : showInCard // ignore: cast_nullable_to_non_nullable
              as bool?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$StickerImpl implements _Sticker {
  const _$StickerImpl(
      {@JsonKey(name: "background_color") this.backgroundColor,
      this.image,
      @JsonKey(name: "is_image") this.isImage,
      this.name,
      @JsonKey(name: "show_in_card") this.showInCard,
      @JsonKey(name: "text_color") this.textColor});

  factory _$StickerImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickerImplFromJson(json);

  @override
  @JsonKey(name: "background_color")
  final String? backgroundColor;
  @override
  final String? image;
  @override
  @JsonKey(name: "is_image")
  final bool? isImage;
  @override
  final String? name;
  @override
  @JsonKey(name: "show_in_card")
  final bool? showInCard;
  @override
  @JsonKey(name: "text_color")
  final String? textColor;

  @override
  String toString() {
    return 'Sticker(backgroundColor: $backgroundColor, image: $image, isImage: $isImage, name: $name, showInCard: $showInCard, textColor: $textColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StickerImpl &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isImage, isImage) || other.isImage == isImage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.showInCard, showInCard) ||
                other.showInCard == showInCard) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, backgroundColor, image, isImage,
      name, showInCard, textColor);

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      __$$StickerImplCopyWithImpl<_$StickerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StickerImplToJson(
      this,
    );
  }
}

abstract class _Sticker implements Sticker {
  const factory _Sticker(
      {@JsonKey(name: "background_color") final String? backgroundColor,
      final String? image,
      @JsonKey(name: "is_image") final bool? isImage,
      final String? name,
      @JsonKey(name: "show_in_card") final bool? showInCard,
      @JsonKey(name: "text_color") final String? textColor}) = _$StickerImpl;

  factory _Sticker.fromJson(Map<String, dynamic> json) = _$StickerImpl.fromJson;

  @override
  @JsonKey(name: "background_color")
  String? get backgroundColor;
  @override
  String? get image;
  @override
  @JsonKey(name: "is_image")
  bool? get isImage;
  @override
  String? get name;
  @override
  @JsonKey(name: "show_in_card")
  bool? get showInCard;
  @override
  @JsonKey(name: "text_color")
  String? get textColor;

  /// Create a copy of Sticker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StickerImplCopyWith<_$StickerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
