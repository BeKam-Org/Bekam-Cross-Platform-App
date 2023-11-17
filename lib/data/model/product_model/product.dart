part of product_model;

/// Represents a product with various attributes and information.
class Product {
  // Properties

  /// The unique identifier for the product.
  int? _id;

  /// The name of the product.
  String? _name;

  /// The description of the product.
  String? _description;

  /// The image URL associated with the product.
  String? _image;

  /// The price of the product.
  double? _price;

  /// List of [Variation] objects representing different variations of the product.
  List<Variation>? _variations;

  /// List of [AddOns] objects representing additional options or features for the product.
  List<AddOns>? _addOns;

  /// The tax percentage applied to the product.
  double? _tax;

  /// The start time when the product is available.
  String? _availableTimeStarts;

  /// The end time when the product is available.
  String? _availableTimeEnds;

  /// The status of the product (e.g., available, out of stock).
  int? _status;

  /// The timestamp when the product was created.
  String? _createdAt;

  /// The timestamp when the product was last updated.
  String? _updatedAt;

  /// List of additional attributes associated with the product.
  List<String>? _attributes;

  /// List of [CategoryId] objects representing category IDs associated with the product.
  List<CategoryId>? _categoryIds;

  /// List of [ChoiceOption] objects representing choices or options available for the product.
  List<ChoiceOption>? _choiceOptions;

  /// The discount applied to the product.
  double? _discount;

  /// The type of discount applied to the product (e.g., percentage, fixed amount).
  String? _discountType;

  /// The type of tax applied to the product.
  String? _taxType;

  /// Indicates whether the product is part of a set menu.
  int? _setMenu;

  /// The popularity count of the product.
  int? _popularityCount;

  /// The type of the product (e.g., main course, dessert).
  String? _productType;

  /// List of [Rating] objects representing ratings and reviews for the product.
  List<Rating>? _rating;

  /// [BranchProduct] object representing product information specific to a branch.
  BranchProduct? _branchProduct;

  /// The main price of the product.
  double? _mainPrice;

  // Constructor

  /// Creates an instance of [Product] with optional parameters.
  Product({
    int? id,
    String? name,
    String? description,
    String? image,
    double? price,
    List<Variation>? variations,
    List<AddOns>? addOns,
    double? tax,
    String? availableTimeStarts,
    String? availableTimeEnds,
    int? status,
    String? createdAt,
    String? updatedAt,
    List<String>? attributes,
    List<CategoryId>? categoryIds,
    List<ChoiceOption>? choiceOptions,
    double? discount,
    String? discountType,
    String? taxType,
    int? setMenu,
    int? popularityCount,
    String? productType,
    List<Rating>? rating,
    BranchProduct? branchProduct,
    double? mainPrice,
  }) {
    _id = id;
    _name = name;
    _description = description;
    _image = image;
    _price = price;
    _variations = variations;
    _addOns = addOns;
    _tax = tax;
    _availableTimeStarts = availableTimeStarts;
    _availableTimeEnds = availableTimeEnds;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _attributes = attributes;
    _categoryIds = categoryIds;
    _choiceOptions = choiceOptions;
    _discount = discount;
    _discountType = discountType;
    _taxType = taxType;
    _setMenu = setMenu;
    _popularityCount = popularityCount;
    _productType = productType;
    _rating = rating;
    _branchProduct = branchProduct;
    _mainPrice = mainPrice;
  }

  // Getter Methods

  /// Gets the unique identifier for the product.
  int? get id => _id;

  /// Gets the name of the product.
  String? get name => _name;

  /// Gets the description of the product.
  String? get description => _description;

  /// Gets the image URL associated with the product.
  String? get image => _image;

  /// Gets the price of the product.
  double? get price => _price;

  /// Gets the list of [Variation] objects representing different variations of the product.
  List<Variation>? get variations => _variations;

  /// Gets the list of [AddOns] objects representing additional options or features for the product.
  List<AddOns>? get addOns => _addOns;

  /// Gets the tax percentage applied to the product.
  double? get tax => _tax;

  /// Gets the start time when the product is available.
  String? get availableTimeStarts => _availableTimeStarts;

  /// Gets the end time when the product is available.
  String? get availableTimeEnds => _availableTimeEnds;

  /// Gets the status of the product (e.g., available, out of stock).
  int? get status => _status;

  /// Gets the timestamp when the product was created.
  String? get createdAt => _createdAt;

  /// Gets the timestamp when the product was last updated.
  String? get updatedAt => _updatedAt;

  /// Gets the list of additional attributes associated with the product.
  List<String>? get attributes => _attributes;

  /// Gets the list of [CategoryId] objects representing category IDs associated with the product.
  List<CategoryId>? get categoryIds => _categoryIds;

  /// Gets the list of [ChoiceOption] objects representing choices or options available for the product.
  List<ChoiceOption>? get choiceOptions => _choiceOptions;

  /// Gets the discount applied to the product.
  double? get discount => _discount;

  /// Gets the type of discount applied to the product (e.g., percentage, fixed amount).
  String? get discountType => _discountType;

  /// Gets the type of tax applied to the product.
  String? get taxType => _taxType;

  /// Gets whether the product is part of a set menu.
  int? get setMenu => _setMenu;

  /// Gets the popularity count of the product.
  int? get popularityCount => _popularityCount;

  /// Gets the type of the product (e.g., main course, dessert).
  String? get productType => _productType;

  /// Gets the list of [Rating] objects representing ratings and reviews for the product.
  List<Rating>? get rating => _rating;

  /// Gets the [BranchProduct] object representing product information specific to a branch.
  BranchProduct? get branchProduct => _branchProduct;

  // JSON Serialization

  /// Creates an instance of [Product] from a JSON map.
  Product.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _description = json['description'];
    _image = json['image'];
    _price = json['price'].toDouble();
    if (json['variations'] != null) {
      _variations = [];
      json['variations'].forEach((v) {
        if (!v.containsKey('price')) {
          _variations!.add(Variation.fromJson(v));
        }
      });
    }
    if (json['add_ons'] != null) {
      _addOns = [];
      try {
        json['add_ons'].forEach((v) {
          _addOns!.add(AddOns.fromJson(v));
        });
      } catch (e) {
        _addOns = [];
      }
    }
    _tax = json['tax'].toDouble();
    _availableTimeStarts = json['available_time_starts'] ?? '';
    _availableTimeEnds = json['available_time_ends'] ?? '';
    _status = json['status'] ?? 0;
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _attributes = json['attributes'].cast<String>();
    if (json['category_ids'] != null) {
      _categoryIds = [];
      json['category_ids'].forEach((v) {
        _categoryIds!.add(CategoryId.fromJson(v));
      });
    }
    if (json['choice_options'] != null) {
      _choiceOptions = [];
      json['choice_options'].forEach((v) {
        _choiceOptions!.add(ChoiceOption.fromJson(v));
      });
    }
    _discount = json['discount'].toDouble();
    _discountType = json['discount_type'];
    _taxType = json['tax_type'];
    _setMenu = json['set_menu'];
    if (json['rating'] != null) {
      _rating = [];
      json['rating'].forEach((v) {
        _rating!.add(Rating.fromJson(v));
      });
    }
    _popularityCount = json['popularity_count'];
    _productType = json["product_type"];
    if (json['branch_product'] != null) {
      _branchProduct = BranchProduct.fromJson(json['branch_product']);
      _price = _branchProduct!.price;
      _discount = _branchProduct!.discount;
      _discountType = _branchProduct!.discountType;
    } else {
      _branchProduct = null;
    }
    _mainPrice = double.tryParse('${json['price']}');
  }

  /// Converts the [Product] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = _id;
    data['name'] = _name;
    data['description'] = _description;
    data['image'] = _image;
    data['price'] = _price;
    if (_variations != null) {
      data['variations'] = _variations!.map((v) => v.toJson()).toList();
    }

    if (_addOns != null) {
      data['add_ons'] = _addOns!.map((v) => v.toJson()).toList();
    }
    data['tax'] = _tax;
    data['available_time_starts'] = _availableTimeStarts;
    data['available_time_ends'] = _availableTimeEnds;
    data['status'] = _status;
    data['created_at'] = _createdAt;
    data['updated_at'] = _updatedAt;
    data['attributes'] = _attributes;
    if (_categoryIds != null) {
      data['category_ids'] = _categoryIds!.map((v) => v.toJson()).toList();
    }
    if (_choiceOptions != null) {
      data['choice_options'] = _choiceOptions!.map((v) => v.toJson()).toList();
    }
    data['discount'] = _discount;
    data['discount_type'] = _discountType;
    data['tax_type'] = _taxType;
    data['set_menu'] = _setMenu;
    data['popularity_count'] = _popularityCount;
    data['product_type'] = _productType;
    data['main_price'] = _mainPrice;
    if (_rating != null) {
      data['rating'] = _rating!.map((v) => v.toJson()).toList();
    }
    data['branch_product'] = _branchProduct;
    return data;
  }
}
