// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'banner_model.g.dart';

/// Represents a banner model used to store information about banners in the app.
///
/// Banners are often used for promotional purposes and may be associated with
/// specific products or categories.
@JsonSerializable()
class BannerModel {
  /// The unique identifier for the banner.
  @JsonKey(name: 'id')
  int? id;

  /// The title of the banner.
  String? title;

  /// The image URL associated with the banner.
  String? image;

  /// The identifier of the associated product, if applicable.
  @JsonKey(name: 'product_id')
  int? productId;

  /// The status of the banner.
  ///
  /// Possible values may include:
  /// - 0: Inactive
  /// - 1: Active
  int? status;

  /// The timestamp when the banner was created.
  @JsonKey(name: 'created_at')
  String? createdAt;

  /// The timestamp when the banner was last updated.
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  /// The identifier of the associated category, if applicable.
  @JsonKey(name: 'category_id')
  int? categoryId;

  /// Creates an instance of [BannerModel].
  ///
  /// Parameters:
  /// - [id]: The unique identifier for the banner.
  /// - [title]: The title of the banner.
  /// - [image]: The image URL associated with the banner.
  /// - [productId]: The identifier of the associated product, if applicable.
  /// - [createdAt]: The timestamp when the banner was created.
  /// - [updatedAt]: The timestamp when the banner was last updated.
  /// - [categoryId]: The identifier of the associated category, if applicable.
  /// - [status]: The status of the banner.
  BannerModel(this.id, this.title, this.image, this.productId, this.createdAt,
      this.updatedAt, this.categoryId, this.status);

  /// Creates an instance of [BannerModel] from a JSON map.
  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  /// Converts this [BannerModel] instance to a JSON map.
  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
