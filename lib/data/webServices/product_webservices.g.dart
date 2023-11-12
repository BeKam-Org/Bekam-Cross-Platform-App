// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_webservices.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ProductWebServices implements ProductWebServices {
  _ProductWebServices(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://efood-admin.6amtech.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ProductModel> getLatestProductList({
    required int limit,
    required String offset,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': 'application/json; charset=UTF-8',
      r'branch-id': '1',
      r'X-localization': 'en',
      r'Authorization': 'Bearer',
    };
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ProductModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: 'application/json; charset=UTF-8',
    )
            .compose(
              _dio.options,
              '/api/v1/products/latest?limit=${limit}&&offset=${offset}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ProductModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProductModel> getPopularProductList({
    required int limit,
    required String offset,
    required String type,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{
      r'Content-Type': 'application/json; charset=UTF-8',
      r'branch-id': '1',
      r'X-localization': 'en',
      r'Authorization': 'Bearer',
    };
    _headers.removeWhere((k, v) => v == null);
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ProductModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
      contentType: 'application/json; charset=UTF-8',
    )
            .compose(
              _dio.options,
              '/api/v1/products/popular?limit=${limit}&&offset=${offset}&product_type=${type}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ProductModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
