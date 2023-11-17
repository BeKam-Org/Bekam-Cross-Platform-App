part of product_model;

/// Represents a specific value of a product variation, including its level and option price.
class VariationValue {
  // Properties

  /// The level or label of the variation value.
  String? level;

  /// The additional price associated with the variation value.
  double? optionPrice;

  // Constructor

  /// Creates an instance of the [VariationValue] class.
  VariationValue({this.level, this.optionPrice});

  // Methods

  /// Creates a [VariationValue] instance from a JSON map.
  VariationValue.fromJson(Map<String, dynamic> json) {
    level = json['label'];
    optionPrice = double.parse(json['optionPrice'].toString());
  }

  /// Converts the [VariationValue] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['label'] = level;
    data['optionPrice'] = optionPrice;
    return data;
  }
}

