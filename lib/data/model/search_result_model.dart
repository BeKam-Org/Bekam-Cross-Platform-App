  class SearchResultModel {
  List<Response>? response;
  int? retryCnt;
  List<AllMpsResult>? allMpsResult;
  List<RunTokens>? runTokens;
  bool? retry;

  SearchResultModel(
      {this.response,
      this.retryCnt,
      this.allMpsResult,
      this.runTokens,
      this.retry});

  SearchResultModel.fromJson(Map<String, dynamic> json) {
    if (json['response'] != null) {
      response = <Response>[];
      json['response'].forEach((v) {
        response!.add(Response.fromJson(v));
      });
    }
    retryCnt = json['retry_cnt'];
    if (json['all_mps_result'] != null) {
      allMpsResult = <AllMpsResult>[];
      json['all_mps_result'].forEach((v) {
        allMpsResult!.add(AllMpsResult.fromJson(v));
      });
    }
    if (json['run_tokens'] != null) {
      runTokens = <RunTokens>[];
      json['run_tokens'].forEach((v) {
        runTokens!.add(RunTokens.fromJson(v));
      });
    }
    retry = json['retry'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (response != null) {
      data['response'] = response!.map((v) => v.toJson()).toList();
    }
    data['retry_cnt'] = retryCnt;
    if (allMpsResult != null) {
      data['all_mps_result'] =
          allMpsResult!.map((v) => v.toJson()).toList();
    }
    if (runTokens != null) {
      data['run_tokens'] = runTokens!.map((v) => v.toJson()).toList();
    }
    data['retry'] = retry;
    return data;
  }
}

class Response {
  String? title;
  String? image;
  double? price;
  String? currency;
  String? productRef;
  String? configFile;

  Response(
      {this.title,
      this.image,
      this.price,
      this.currency,
      this.productRef,
      this.configFile});

  Response.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    price = json['price'];
    currency = json['currency'];
    productRef = json['productRef'];
    configFile = json['configFile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['image'] = image;
    data['price'] = price;
    data['currency'] = currency;
    data['productRef'] = productRef;
    data['configFile'] = configFile;
    return data;
  }
}

class AllMpsResult {
  AllMpsResponse? response;
  String? currency;
  String? configFile;

  AllMpsResult({this.response, this.currency, this.configFile});

  AllMpsResult.fromJson(Map<String, dynamic> json) {
    response = json['response'] != null
        ? AllMpsResponse.fromJson(json['response'])
        : null;
    currency = json['currency'];
    configFile = json['config_file'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (response != null) {
      data['response'] = response!.toJson();
    }
    data['currency'] = currency;
    data['config_file'] = configFile;
    return data;
  }
}

class AllMpsResponse {
  List<Product>? product;

  AllMpsResponse({this.product});

  AllMpsResponse.fromJson(Map<String, dynamic> json) {
    if (json['product'] != null) {
      product = <Product>[];
      json['product'].forEach((v) {
        product!.add(Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (product != null) {
      data['product'] = product!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  String? image;
  String? name;
  String? nameUrl;
  String? price;

  Product({this.image, this.name, this.nameUrl, this.price});

  Product.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    nameUrl = json['name_url'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['name_url'] = nameUrl;
    data['price'] = price;
    return data;
  }
}

class RunTokens {
  String? token;
  String? configFile;

  RunTokens({this.token, this.configFile});

  RunTokens.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    configFile = json['config_file'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['config_file'] = configFile;
    return data;
  }
}
