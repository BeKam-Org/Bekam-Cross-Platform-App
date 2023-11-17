part of product_model;

/// Represents a category identifier with its unique identifier and position.
class CategoryId {
  // Properties

  /// The unique identifier of the category.
  String? _id;

  /// The position of the category.
  int? _position;

  // Constructor

  /// Creates an instance of the [CategoryId] class.
  CategoryId({String? id, int? position}) {
    _id = id;
    _position = position;
  }

  // Getter methods

  /// Gets the unique identifier of the category.
  String? get id => _id;

  /// Gets the position of the category.
  int? get position => _position;

  // Methods

  /// Creates a [CategoryId] instance from a JSON map.
  CategoryId.fromJson(Map<String, dynamic> json) {
    _id = json['id'].toString();
    _position = json['position'];
  }

  /// Converts the [CategoryId] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['position'] = _position;

    return data;
  }
}

