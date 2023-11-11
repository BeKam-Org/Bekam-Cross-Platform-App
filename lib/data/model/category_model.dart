
import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  int? id;
  String? name;
  @JsonKey(name: 'parent_id')
  int? parentId;
  int? position;
  int? status;
  int? priority;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  String? image;
  @JsonKey(name: 'banner_image')
  String? bannerImage;
  List<dynamic>? translations;

  CategoryModel(
      this.id,
      this.name,
      this.parentId,
      this.position,
      this.status,
      this.priority,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.bannerImage,
      this.translations);

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
