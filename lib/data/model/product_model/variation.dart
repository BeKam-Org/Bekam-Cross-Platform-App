part of product_model;

/// Represents a product variation, including its name, constraints, and possible values.
class Variation {
  // Properties

  /// The name of the product variation.
  String? name;

  /// The minimum number of selections allowed for the variation.
  int? min;

  /// The maximum number of selections allowed for the variation.
  int? max;

  /// Indicates whether the variation is required for the product.
  bool? isRequired;

  /// Indicates whether the variation allows multiple selections.
  bool? isMultiSelect;

  /// The list of possible values for the variation.
  List<VariationValue>? variationValues;

  // Constructor

  /// Creates an instance of the [Variation] class.
  Variation({
    this.name,
    this.min,
    this.max,
    this.isRequired,
    this.variationValues,
    this.isMultiSelect,
  });

  // Methods

  /// Creates a [Variation] instance from a JSON map.
  Variation.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    isMultiSelect = '${json['type']}' == 'multi';
    min = isMultiSelect! ? int.parse(json['min'].toString()) : 0;
    max = isMultiSelect! ? int.parse(json['max'].toString()) : 0;
    isRequired = '${json['required']}' == 'on';
    if (json['values'] != null) {
      variationValues = [];
      json['values'].forEach((v) {
        variationValues!.add(VariationValue.fromJson(v));
      });
    }
  }

  /// Converts the [Variation] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['type'] = isMultiSelect! ? 'multi' : 'single';
    data['min'] = min;
    data['max'] = max;
    data['required'] = isRequired! ? 'on' : 'off';
    if (variationValues != null) {
      data['values'] = variationValues!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

