part of product_model;

/// Represents the rating information for a product, including the average rating and associated product ID.
class Rating {
  // Properties

  /// The average rating for the product.
  String? _average;

  /// The ID of the product associated with the rating.
  int? _productId;

  // Constructor

  /// Creates an instance of the [Rating] class.
  Rating({String? average, int? productId}) {
    _average = average;
    _productId = productId;
  }

  // Getter methods

  /// Gets the average rating for the product.
  String? get average => _average;

  /// Gets the product ID associated with the rating.
  int? get productId => _productId;

  // Methods

  /// Creates a [Rating] instance from a JSON map.
  Rating.fromJson(Map<String, dynamic> json) {
    _average = json['average'];
    _productId = json['product_id'];
  }

  /// Converts the [Rating] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['average'] = _average;
    data['product_id'] = _productId;
    return data;
  }
}
