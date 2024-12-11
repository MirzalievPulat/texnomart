// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StickerImpl _$$StickerImplFromJson(Map<String, dynamic> json) =>
    _$StickerImpl(
      backgroundColor: json['background_color'] as String?,
      image: json['image'] as String?,
      isImage: json['is_image'] as bool?,
      name: json['name'] as String?,
      showInCard: json['show_in_card'] as bool?,
      textColor: json['text_color'] as String?,
    );

Map<String, dynamic> _$$StickerImplToJson(_$StickerImpl instance) =>
    <String, dynamic>{
      'background_color': instance.backgroundColor,
      'image': instance.image,
      'is_image': instance.isImage,
      'name': instance.name,
      'show_in_card': instance.showInCard,
      'text_color': instance.textColor,
    };
