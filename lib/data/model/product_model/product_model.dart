library product_model;

part 'add_ons.dart';
part 'branch_product.dart';
part 'category_id.dart';
part 'choice_option.dart';
part 'product.dart';
part 'rating.dart';
part 'variation.dart';
part 'variation_value.dart';


/// Represents a model containing information about a collection of products.
class ProductModel {
  // Properties

  /// The total size of the product collection.
  int? _totalSize;

  /// The limit set for the product collection.
  String? _limit;

  /// The offset used for the product collection.
  String? _offset;

  /// List of [Product] objects representing individual products.
  List<Product>? _products;

  // Constructor

  /// Creates an instance of [ProductModel] with optional parameters.
  ProductModel({
    int? totalSize,
    String? limit,
    String? offset,
    List<Product>? products,
  }) {
    _totalSize = totalSize;
    _limit = limit;
    _offset = offset;
    _products = products;
  }

  // Getter Methods

  /// Gets the total size of the product collection.
  int? get totalSize => _totalSize;

  /// Gets the limit set for the product collection.
  String? get limit => _limit;

  /// Gets the offset used for the product collection.
  String? get offset => _offset;

  /// Gets the list of [Product] objects representing individual products.
  List<Product>? get products => _products;

  // JSON Serialization

  /// Creates an instance of [ProductModel] from a JSON map.
  ProductModel.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _limit = json['limit'].toString();
    _offset = json['offset'].toString();
    if (json['products'] != null) {
      _products = [];
      json['products'].forEach((v) {
        _products!.add(Product.fromJson(v));
      });
    }
  }

  /// Converts the [ProductModel] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_size'] = _totalSize;
    data['limit'] = _limit;
    data['offset'] = _offset;
    if (_products != null) {
      data['products'] = _products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
