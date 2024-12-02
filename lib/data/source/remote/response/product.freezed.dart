// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "all_count")
  int? get allCount => throw _privateConstructorUsedError;
  String? get availability => throw _privateConstructorUsedError;
  @JsonKey(name: "axiom_monthly_price")
  String? get axiomMonthlyPrice => throw _privateConstructorUsedError;
  int? get benefit => throw _privateConstructorUsedError;
  @JsonKey(name: "discount_price")
  int? get discountPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "finish_price")
  int? get finishPrice => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "old_price")
  int? get oldPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews_average")
  int? get reviewsAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "reviews_count")
  int? get reviewsCount => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_months")
  List<String>? get saleMonths => throw _privateConstructorUsedError;
  @JsonKey(name: "sale_price")
  int? get salePrice => throw _privateConstructorUsedError;
  List<Sticker>? get stickers => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "all_count") int? allCount,
      String? availability,
      @JsonKey(name: "axiom_monthly_price") String? axiomMonthlyPrice,
      int? benefit,
      @JsonKey(name: "discount_price") int? discountPrice,
      @JsonKey(name: "finish_price") int? finishPrice,
      int? id,
      String? image,
      String? name,
      @JsonKey(name: "old_price") int? oldPrice,
      @JsonKey(name: "reviews_average") int? reviewsAverage,
      @JsonKey(name: "reviews_count") int? reviewsCount,
      @JsonKey(name: "sale_months") List<String>? saleMonths,
      @JsonKey(name: "sale_price") int? salePrice,
      List<Sticker>? stickers});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCount = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? benefit = freezed,
    Object? discountPrice = freezed,
    Object? finishPrice = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? oldPrice = freezed,
    Object? reviewsAverage = freezed,
    Object? reviewsCount = freezed,
    Object? saleMonths = freezed,
    Object? salePrice = freezed,
    Object? stickers = freezed,
  }) {
    return _then(_value.copyWith(
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      benefit: freezed == benefit
          ? _value.benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      finishPrice: freezed == finishPrice
          ? _value.finishPrice
          : finishPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAverage: freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      saleMonths: freezed == saleMonths
          ? _value.saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      stickers: freezed == stickers
          ? _value.stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "all_count") int? allCount,
      String? availability,
      @JsonKey(name: "axiom_monthly_price") String? axiomMonthlyPrice,
      int? benefit,
      @JsonKey(name: "discount_price") int? discountPrice,
      @JsonKey(name: "finish_price") int? finishPrice,
      int? id,
      String? image,
      String? name,
      @JsonKey(name: "old_price") int? oldPrice,
      @JsonKey(name: "reviews_average") int? reviewsAverage,
      @JsonKey(name: "reviews_count") int? reviewsCount,
      @JsonKey(name: "sale_months") List<String>? saleMonths,
      @JsonKey(name: "sale_price") int? salePrice,
      List<Sticker>? stickers});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCount = freezed,
    Object? availability = freezed,
    Object? axiomMonthlyPrice = freezed,
    Object? benefit = freezed,
    Object? discountPrice = freezed,
    Object? finishPrice = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? oldPrice = freezed,
    Object? reviewsAverage = freezed,
    Object? reviewsCount = freezed,
    Object? saleMonths = freezed,
    Object? salePrice = freezed,
    Object? stickers = freezed,
  }) {
    return _then(_$ProductImpl(
      allCount: freezed == allCount
          ? _value.allCount
          : allCount // ignore: cast_nullable_to_non_nullable
              as int?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String?,
      axiomMonthlyPrice: freezed == axiomMonthlyPrice
          ? _value.axiomMonthlyPrice
          : axiomMonthlyPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      benefit: freezed == benefit
          ? _value.benefit
          : benefit // ignore: cast_nullable_to_non_nullable
              as int?,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      finishPrice: freezed == finishPrice
          ? _value.finishPrice
          : finishPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      oldPrice: freezed == oldPrice
          ? _value.oldPrice
          : oldPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsAverage: freezed == reviewsAverage
          ? _value.reviewsAverage
          : reviewsAverage // ignore: cast_nullable_to_non_nullable
              as int?,
      reviewsCount: freezed == reviewsCount
          ? _value.reviewsCount
          : reviewsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      saleMonths: freezed == saleMonths
          ? _value._saleMonths
          : saleMonths // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int?,
      stickers: freezed == stickers
          ? _value._stickers
          : stickers // ignore: cast_nullable_to_non_nullable
              as List<Sticker>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: "all_count") this.allCount,
      this.availability,
      @JsonKey(name: "axiom_monthly_price") this.axiomMonthlyPrice,
      this.benefit,
      @JsonKey(name: "discount_price") this.discountPrice,
      @JsonKey(name: "finish_price") this.finishPrice,
      this.id,
      this.image,
      this.name,
      @JsonKey(name: "old_price") this.oldPrice,
      @JsonKey(name: "reviews_average") this.reviewsAverage,
      @JsonKey(name: "reviews_count") this.reviewsCount,
      @JsonKey(name: "sale_months") final List<String>? saleMonths,
      @JsonKey(name: "sale_price") this.salePrice,
      final List<Sticker>? stickers})
      : _saleMonths = saleMonths,
        _stickers = stickers;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: "all_count")
  final int? allCount;
  @override
  final String? availability;
  @override
  @JsonKey(name: "axiom_monthly_price")
  final String? axiomMonthlyPrice;
  @override
  final int? benefit;
  @override
  @JsonKey(name: "discount_price")
  final int? discountPrice;
  @override
  @JsonKey(name: "finish_price")
  final int? finishPrice;
  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? name;
  @override
  @JsonKey(name: "old_price")
  final int? oldPrice;
  @override
  @JsonKey(name: "reviews_average")
  final int? reviewsAverage;
  @override
  @JsonKey(name: "reviews_count")
  final int? reviewsCount;
  final List<String>? _saleMonths;
  @override
  @JsonKey(name: "sale_months")
  List<String>? get saleMonths {
    final value = _saleMonths;
    if (value == null) return null;
    if (_saleMonths is EqualUnmodifiableListView) return _saleMonths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "sale_price")
  final int? salePrice;
  final List<Sticker>? _stickers;
  @override
  List<Sticker>? get stickers {
    final value = _stickers;
    if (value == null) return null;
    if (_stickers is EqualUnmodifiableListView) return _stickers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Product(allCount: $allCount, availability: $availability, axiomMonthlyPrice: $axiomMonthlyPrice, benefit: $benefit, discountPrice: $discountPrice, finishPrice: $finishPrice, id: $id, image: $image, name: $name, oldPrice: $oldPrice, reviewsAverage: $reviewsAverage, reviewsCount: $reviewsCount, saleMonths: $saleMonths, salePrice: $salePrice, stickers: $stickers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.allCount, allCount) ||
                other.allCount == allCount) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.axiomMonthlyPrice, axiomMonthlyPrice) ||
                other.axiomMonthlyPrice == axiomMonthlyPrice) &&
            (identical(other.benefit, benefit) || other.benefit == benefit) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.finishPrice, finishPrice) ||
                other.finishPrice == finishPrice) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.oldPrice, oldPrice) ||
                other.oldPrice == oldPrice) &&
            (identical(other.reviewsAverage, reviewsAverage) ||
                other.reviewsAverage == reviewsAverage) &&
            (identical(other.reviewsCount, reviewsCount) ||
                other.reviewsCount == reviewsCount) &&
            const DeepCollectionEquality()
                .equals(other._saleMonths, _saleMonths) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            const DeepCollectionEquality().equals(other._stickers, _stickers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      allCount,
      availability,
      axiomMonthlyPrice,
      benefit,
      discountPrice,
      finishPrice,
      id,
      image,
      name,
      oldPrice,
      reviewsAverage,
      reviewsCount,
      const DeepCollectionEquality().hash(_saleMonths),
      salePrice,
      const DeepCollectionEquality().hash(_stickers));

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "all_count") final int? allCount,
      final String? availability,
      @JsonKey(name: "axiom_monthly_price") final String? axiomMonthlyPrice,
      final int? benefit,
      @JsonKey(name: "discount_price") final int? discountPrice,
      @JsonKey(name: "finish_price") final int? finishPrice,
      final int? id,
      final String? image,
      final String? name,
      @JsonKey(name: "old_price") final int? oldPrice,
      @JsonKey(name: "reviews_average") final int? reviewsAverage,
      @JsonKey(name: "reviews_count") final int? reviewsCount,
      @JsonKey(name: "sale_months") final List<String>? saleMonths,
      @JsonKey(name: "sale_price") final int? salePrice,
      final List<Sticker>? stickers}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: "all_count")
  int? get allCount;
  @override
  String? get availability;
  @override
  @JsonKey(name: "axiom_monthly_price")
  String? get axiomMonthlyPrice;
  @override
  int? get benefit;
  @override
  @JsonKey(name: "discount_price")
  int? get discountPrice;
  @override
  @JsonKey(name: "finish_price")
  int? get finishPrice;
  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get name;
  @override
  @JsonKey(name: "old_price")
  int? get oldPrice;
  @override
  @JsonKey(name: "reviews_average")
  int? get reviewsAverage;
  @override
  @JsonKey(name: "reviews_count")
  int? get reviewsCount;
  @override
  @JsonKey(name: "sale_months")
  List<String>? get saleMonths;
  @override
  @JsonKey(name: "sale_price")
  int? get salePrice;
  @override
  List<Sticker>? get stickers;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
