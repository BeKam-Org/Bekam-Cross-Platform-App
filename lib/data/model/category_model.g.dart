// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      json['id'] as int?,
      json['name'] as String?,
      json['parent_id'] as int?,
      json['position'] as int?,
      json['status'] as int?,
      json['priority'] as int?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['image'] as String?,
      json['banner_image'] as String?,
      json['translations'] as List<dynamic>?,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parent_id': instance.parentId,
      'position': instance.position,
      'status': instance.status,
      'priority': instance.priority,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'image': instance.image,
      'banner_image': instance.bannerImage,
      'translations': instance.translations,
    };
