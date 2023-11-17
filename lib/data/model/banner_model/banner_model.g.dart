// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
      json['product_id'] as int?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['category_id'] as int?,
      json['status'] as int?,
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'product_id': instance.productId,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'category_id': instance.categoryId,
    };
