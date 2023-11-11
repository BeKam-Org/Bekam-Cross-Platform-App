import 'package:json_annotation/json_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable()
class BannerModel {
  @JsonKey(name: 'id')
  int? id;
  String? title;
  String? image;
  @JsonKey(name: 'product_id')
  int? productId;
  int? status;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'category_id')
  int? categoryId;

  BannerModel(this.id, this.title, this.image, this.productId, this.createdAt,
      this.updatedAt, this.categoryId, this.status);

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
