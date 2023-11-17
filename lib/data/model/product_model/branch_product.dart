part of product_model;

/// Represents a product associated with a specific branch, including pricing, availability, and stock details.
class BranchProduct {
  // Properties

  /// The unique identifier for the branch product.
  int? id;

  /// The identifier of the associated product.
  int? productId;

  /// The price of the product in the specific branch.
  double? price;

  /// The type of discount applied to the product in the specific branch.
  String? discountType;

  /// The discount value applied to the product in the specific branch.
  double? discount;

  /// The identifier of the branch to which the product is associated.
  int? branchId;

  /// Indicates whether the product is available in the specific branch.
  bool? isAvailable;

  /// List of variations available for the product in the specific branch.
  List<Variation>? variations;

  /// The date and time when the branch product was created.
  String? createdAt;

  /// The date and time when the branch product was last updated.
  String? updatedAt;

  /// The type of stock associated with the product in the specific branch.
  String? stockType;

  /// The total stock quantity available for the product in the specific branch.
  int? stock;

  /// The quantity of the product sold in the specific branch.
  int? soldQuantity;

  // Constructor

  /// Creates an instance of the [BranchProduct] class.
  BranchProduct({
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
    this.soldQuantity,
  });

  // Methods

  /// Creates a [BranchProduct] instance from a JSON map.
  BranchProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    price = double.tryParse('${json['price']}');
    discountType = json['discount_type'];
    discount = json['discount'].toDouble();
    branchId = json['branch_id'];
    isAvailable = ('${json['is_available']}' == '1') ||
        '${json['is_available']}' == 'true';
    if (json['variations'] != null) {
      variations = [];
      json['variations'].forEach((v) {
        if (!v.containsKey('price')) {
          variations!.add(Variation.fromJson(v));
        }
      });
    }
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    stockType = json['stock_type'];
    stock = json['stock'];
    soldQuantity = json['sold_quantity'];
  }

  /// Converts the [BranchProduct] instance to a JSON map.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product_id'] = productId;
    data['branch_id'] = branchId;
    data['is_available'] = isAvailable;
    data['variations'] = variations;
    data['price'] = price;
    data['discount'] = discount;
    data['discount_type'] = discountType;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['stock_type'] = stockType;
    data['stock'] = stock;
    data['sold_quantity'] = soldQuantity;
    return data;
  }
}

