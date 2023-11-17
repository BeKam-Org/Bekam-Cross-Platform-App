import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

/// Represents a category model used to store information about product categories.
///
/// Categories are used to organize and classify products in the app.
@JsonSerializable()
class CategoryModel {
  /// The unique identifier for the category.
  int? id;

  /// The name of the category.
  String? name;

  /// The identifier of the parent category, if applicable.
  @JsonKey(name: 'parent_id')
  int? parentId;

  /// The position of the category in the category hierarchy.
  int? position;

  /// The status of the category.
  ///
  /// Possible values may include:
  /// - 0: Inactive
  /// - 1: Active
  int? status;

  /// The priority of the category.
  int? priority;

  /// The timestamp when the category was created.
  @JsonKey(name: 'created_at')
  String? createdAt;

  /// The timestamp when the category was last updated.
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  /// The image URL associated with the category.
  String? image;

  /// The banner image URL associated with the category.
  @JsonKey(name: 'banner_image')
  String? bannerImage;

  /// Translations for the category name in different languages.
  List<dynamic>? translations;

  /// Creates an instance of [CategoryModel].
  ///
  /// Parameters:
  /// - [id]: The unique identifier for the category.
  /// - [name]: The name of the category.
  /// - [parentId]: The identifier of the parent category, if applicable.
  /// - [position]: The position of the category in the category hierarchy.
  /// - [status]: The status of the category.
  /// - [priority]: The priority of the category.
  /// - [createdAt]: The timestamp when the category was created.
  /// - [updatedAt]: The timestamp when the category was last updated.
  /// - [image]: The image URL associated with the category.
  /// - [bannerImage]: The banner image URL associated with the category.
  /// - [translations]: Translations for the category name in different languages.
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

  /// Creates an instance of [CategoryModel] from a JSON map.
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  /// Converts this [CategoryModel] instance to a JSON map.
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
