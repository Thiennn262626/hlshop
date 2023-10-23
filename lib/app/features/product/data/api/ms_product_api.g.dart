// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ms_product_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _MsProductApi implements MsProductApi {
  _MsProductApi(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<MsPagingResult<MsProduct>?> getListHot({
    int? offset,
    int? limit,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'offset': offset,
      r'limit': limit,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<MsPagingResult<MsProduct>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/hlshop/product/get-list-hot',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : MsPagingResult<MsProduct>.fromJson(
            _result.data!,
            (json) => MsProduct.fromJson(json as Map<String, dynamic>),
          );
    return value;
  }

  @override
  Future<MsPagingResult<MsProduct>?> getListBestSell({
    int? offset,
    int? limit,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'offset': offset,
      r'limit': limit,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<MsPagingResult<MsProduct>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/hlshop/product/get-list-best-seller',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : MsPagingResult<MsProduct>.fromJson(
            _result.data!,
            (json) => MsProduct.fromJson(json as Map<String, dynamic>),
          );
    return value;
  }

  @override
  Future<MsPagingResult<MsProduct>?> getListGoodPrice({
    int? offset,
    int? limit,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'offset': offset,
      r'limit': limit,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<MsPagingResult<MsProduct>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/hlshop/product/get-list-good-price-today',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : MsPagingResult<MsProduct>.fromJson(
            _result.data!,
            (json) => MsProduct.fromJson(json as Map<String, dynamic>),
          );
    return value;
  }

  @override
  Future<MsPagingResult<MsProduct>?> getListNew({
    int? offset,
    int? limit,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'offset': offset,
      r'limit': limit,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<MsPagingResult<MsProduct>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/hlshop/product/get-list-new',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : MsPagingResult<MsProduct>.fromJson(
            _result.data!,
            (json) => MsProduct.fromJson(json as Map<String, dynamic>),
          );
    return value;
  }

  @override
  Future<MsProduct?> getProductDetail({String? productID}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'productID': productID};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>?>(_setStreamType<MsProduct>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/hlshop/product/get-detail',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : MsProduct.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MsPagingResult<MsProduct>?> getProductSameCategory({
    String? productID,
    String? productCategoryID,
    int? offset,
    int? limit,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'productID': productID,
      r'productCategoryID': productCategoryID,
      r'offset': offset,
      r'limit': limit,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<MsPagingResult<MsProduct>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/hlshop/product/get-list-same-category',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : MsPagingResult<MsProduct>.fromJson(
            _result.data!,
            (json) => MsProduct.fromJson(json as Map<String, dynamic>),
          );
    return value;
  }

  @override
  Future<MsPagingResult<MsProduct>?> getProductSameSeller({
    String? productID,
    String? sellerID,
    int? offset,
    int? limit,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'productID': productID,
      r'sellerID': sellerID,
      r'offset': offset,
      r'limit': limit,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<MsPagingResult<MsProduct>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/hlshop/product/get-list-same-seller',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : MsPagingResult<MsProduct>.fromJson(
            _result.data!,
            (json) => MsProduct.fromJson(json as Map<String, dynamic>),
          );
    return value;
  }

  @override
  Future<List<MsProductAttribute>?> getProductAttributeList(
      {String? productID}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'productID': productID};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<List<dynamic>>(_setStreamType<List<MsProductAttribute>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/hlshop/product/get-product-attribute',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data
        ?.map((dynamic i) =>
            MsProductAttribute.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<MsProductSkuResult?> getProductSKUList({String? productID}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'productID': productID};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<MsProductSkuResult>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/hlshop/product/get-product-sku-by-product-id',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : MsProductSkuResult.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MsPagingResult<MsProduct>?> getCategoryDetail({
    String? productCategoryID,
    int? offset,
    int? limit,
    String? languageCode,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'productCategoryID': productCategoryID,
      r'offset': offset,
      r'limit': limit,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>?>(
        _setStreamType<MsPagingResult<MsProduct>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/hlshop/product-category/detail',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data == null
        ? null
        : MsPagingResult<MsProduct>.fromJson(
            _result.data!,
            (json) => MsProduct.fromJson(json as Map<String, dynamic>),
          );
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
}
