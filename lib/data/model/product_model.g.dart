// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      json['total_size'] as int?,
      json['limit'] as String?,
      json['offset'] as String?,
      (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'total_size': instance.totalSize,
      'limit': instance.limit,
      'offset': instance.offset,
      'products': instance.products,
    };

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      json['id'] as int?,
      json['name'] as String?,
      json['description'] as String?,
      json['image'] as String?,
      json['price'] as int?,
      (json['variations'] as List<dynamic>?)
          ?.map((e) => Variations.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['add_ons'] as List<dynamic>?)
          ?.map((e) => AddOns.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['tax'] as num?)?.toDouble(),
      json['available_time_starts'] as String?,
      json['available_time_ends'] as String?,
      json['status'] as int?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['attributes'] as List<dynamic>?,
      (json['category_ids'] as List<dynamic>?)
          ?.map((e) => CategoryIds.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['choice_options'] as List<dynamic>?,
      json['discount'] as int?,
      json['discount_type'] as String?,
      json['tax_type'] as String?,
      json['set_menu'] as int?,
      json['popularity_count'] as int?,
      json['product_type'] as String?,
      json['branch_product'] == null
          ? null
          : BranchProduct.fromJson(
              json['branch_product'] as Map<String, dynamic>),
      (json['rating'] as List<dynamic>?)
          ?.map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'variations': instance.variations,
      'add_ons': instance.addOns,
      'tax': instance.tax,
      'available_time_starts': instance.availableTimeStarts,
      'available_time_ends': instance.availableTimeEnds,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'attributes': instance.attributes,
      'category_ids': instance.categoryIds,
      'choice_options': instance.choiceOptions,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'tax_type': instance.taxType,
      'set_menu': instance.setMenu,
      'popularity_count': instance.popularityCount,
      'product_type': instance.productType,
      'branch_product': instance.branchProduct,
      'rating': instance.rating,
    };

Variations _$VariationsFromJson(Map<String, dynamic> json) => Variations(
      json['name'] as String?,
      json['type'] as String?,
      json['min'] as int?,
      json['max'] as int?,
      json['required'] as String?,
      (json['values'] as List<dynamic>?)
          ?.map((e) => Values.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VariationsToJson(Variations instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'min': instance.min,
      'max': instance.max,
      'required': instance.required,
      'values': instance.values,
    };

Values _$ValuesFromJson(Map<String, dynamic> json) => Values(
      json['label'] as String?,
      json['optionPrice'] as String?,
    );

Map<String, dynamic> _$ValuesToJson(Values instance) => <String, dynamic>{
      'label': instance.label,
      'optionPrice': instance.optionPrice,
    };

CategoryIds _$CategoryIdsFromJson(Map<String, dynamic> json) => CategoryIds(
      id: json['id'] as String?,
      position: json['position'] as int?,
    );

Map<String, dynamic> _$CategoryIdsToJson(CategoryIds instance) =>
    <String, dynamic>{
      'id': instance.id,
      'position': instance.position,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
      average: json['average'] as String?,
      productId: json['product_id'] as int?,
    );

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
      'average': instance.average,
      'product_id': instance.productId,
    };

BranchProduct _$BranchProductFromJson(Map<String, dynamic> json) =>
    BranchProduct(
      json['id'] as int?,
      json['product_id'] as int?,
      json['price'] as int?,
      json['discount_type'] as String?,
      json['discount'] as int?,
      json['branch_id'] as int?,
      json['is_available'] as int?,
      (json['variations'] as List<dynamic>?)
          ?.map((e) => Variations.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['stock_type'] as String?,
      json['stock'] as int?,
      json['sold_quantity'] as int?,
    );

Map<String, dynamic> _$BranchProductToJson(BranchProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'price': instance.price,
      'discount_type': instance.discountType,
      'discount': instance.discount,
      'branch_id': instance.branchId,
      'is_available': instance.isAvailable,
      'variations': instance.variations,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'stock_type': instance.stockType,
      'stock': instance.stock,
      'sold_quantity': instance.soldQuantity,
    };

AddOns _$AddOnsFromJson(Map<String, dynamic> json) => AddOns(
      json['id'] as int?,
      json['name'] as String?,
      json['price'] as int?,
      json['tax'] as int?,
      json['created_at'] as String?,
      json['updated_at'] as String?,
      json['translations'] as List<dynamic>?,
    );

Map<String, dynamic> _$AddOnsToJson(AddOns instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'tax': instance.tax,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'translations': instance.translations,
    };
