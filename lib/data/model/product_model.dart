import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  ProductModel(this.totalSize, this.limit, this.offset, this.products);

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  @JsonKey(name: 'total_size')
  int? totalSize;
  String? limit;
  String? offset;
  List<Products>? products;

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable()
class Products {
  int? id;
  String? name;
  String? description;
  String? image;
  int? price;
  List<Variations>? variations;
  @JsonKey(name: 'add_ons' )
  List<AddOns>? addOns;
  double? tax;
  @JsonKey(name: 'available_time_starts')
  String? availableTimeStarts;
  @JsonKey(name: 'available_time_ends')
  String? availableTimeEnds;
  int? status;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  List<dynamic>? attributes;
  @JsonKey(name: 'category_ids')
  List<CategoryIds>? categoryIds;
  @JsonKey(name: 'choice_options')
  List<dynamic>? choiceOptions;
  int? discount;
  @JsonKey(name: 'discount_type')
  String? discountType;
  @JsonKey(name: 'tax_type')
  String? taxType;
  @JsonKey(name: 'set_menu')
  int? setMenu;
  @JsonKey(name: 'popularity_count')
  int? popularityCount;
  @JsonKey(name: 'product_type')
  String? productType;
  @JsonKey(name: 'branch_product')
  BranchProduct? branchProduct;
  List<Rating>? rating;
  Products(
      this.id,
      this.name,
      this.description,
      this.image,
      this.price,
      this.variations,
      this.addOns,
      this.tax,
      this.availableTimeStarts,
      this.availableTimeEnds,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.attributes,
      this.categoryIds,
      this.choiceOptions,
      this.discount,
      this.discountType,
      this.taxType,
      this.setMenu,
      this.popularityCount,
      this.productType,
      this.branchProduct,
      this.rating);

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductsToJson(this);
}

@JsonSerializable()
class Variations {
  String? name;
  String? type;
  int? min;
  int? max;
  String? required;
  List<Values>? values;

  Variations(
      this.name, this.type, this.min, this.max, this.required, this.values);

  factory Variations.fromJson(Map<String, dynamic> json) =>
      _$VariationsFromJson(json);

  Map<String, dynamic> toJson() => _$VariationsToJson(this);
}

@JsonSerializable()
class Values {
  String? label;
  String? optionPrice;

  Values(this.label, this.optionPrice);

  factory Values.fromJson(Map<String, dynamic> json) =>
      _$ValuesFromJson(json);

  Map<String, dynamic> toJson() => _$ValuesToJson(this);
}

@JsonSerializable()
class CategoryIds {
  String? id;
  int? position;

  CategoryIds({this.id, this.position});

  factory CategoryIds.fromJson(Map<String, dynamic> json) =>
      _$CategoryIdsFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryIdsToJson(this);
}


@JsonSerializable()
class Rating {
  String? average;
  @JsonKey(name: 'product_id')
  int? productId;

  Rating({this.average, this.productId});

    factory Rating.fromJson(Map<String, dynamic> json) =>
      _$RatingFromJson(json);

  Map<String, dynamic> toJson() => _$RatingToJson(this);    

}

@JsonSerializable()
class BranchProduct {
  int? id;
  @JsonKey(name: 'product_id')
  int? productId;
  int? price;
  @JsonKey(name: 'discount_type')
  String? discountType;
  int? discount;
  @JsonKey(name: 'branch_id')
  int? branchId;
  @JsonKey(name: 'is_available')
  int? isAvailable;
  List<Variations>? variations;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'stock_type')
  String? stockType;
  int? stock;
  @JsonKey(name: 'sold_quantity')
  int? soldQuantity;
   BranchProduct(
      this.id,
      this.productId,
      this.price,
      this.discountType,
      this.discount,
      this.branchId,
      this.isAvailable,
      this.variations,
      this.createdAt,
      this.updatedAt,
      this.stockType,
      this.stock,
      this.soldQuantity);

        
  factory BranchProduct.fromJson(Map<String, dynamic> json) =>
      _$BranchProductFromJson(json);

  Map<String, dynamic> toJson() => _$BranchProductToJson(this);    
}

@JsonSerializable()
class AddOns {
  int? id;
  String? name;
  int? price;
  int? tax;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  List<dynamic>? translations;
    AddOns(
      this.id,
      this.name,
      this.price,
      this.tax,
      this.createdAt,
      this.updatedAt,
      this.translations);
      
  factory AddOns.fromJson(Map<String, dynamic> json) =>
      _$AddOnsFromJson(json);

  Map<String, dynamic> toJson() => _$AddOnsToJson(this);

}

