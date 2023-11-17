part of product_model;

/// Represents an add-on for a product, including its unique identifier, name, price, and tax information.
class AddOns {
  // Properties

  /// The unique identifier for the add-on.
  int? _id;

  /// The name of the add-on.
  String? _name;

  /// The price of the add-on.
  double? _price;

  /// The date and time when the add-on was created.
  String? _createdAt;

  /// The date and time when the add-on was last updated.
  String? _updatedAt;

  /// The tax percentage applied to the add-on.
  double? _tax;

  // Constructor

  /// Creates an instance of the [AddOns] class.
  AddOns({
    int? id,
    String? name,
    double? price,
    String? createdAt,
    String? updatedAt,
    double? tax,
  }) {
    _id = id;
    _name = name;
    _price = price;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _tax = tax;
  }

  // Getter methods

  /// Gets the unique identifier of the add-on.
  int? get id => _id;

  /// Gets the name of the add-on.
  String? get name => _name;

  /// Gets the price of the add-on.
  double? get price => _price;

  /// Gets the date and time when the add-on was created.
  String? get createdAt => _createdAt;

  /// Gets the date and time when the add-on was last updated.
  String? get updatedAt => _updatedAt;

  /// Gets the tax percentage applied to the add-on.
  double? get tax => _tax;

  // Methods

  /// Creates an [AddOns] instance from a JSON map.
  AddOns.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _price = json['price'].toDouble();
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _tax = double.tryParse('${json['tax']}');
  }

  /// Converts the [AddOns] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['name'] = _name;
    data['price'] = _price;
    data['created_at'] = _createdAt;
    data['updated_at'] = _updatedAt;
    data['tax'] = _tax;
    return data;
  }
}
