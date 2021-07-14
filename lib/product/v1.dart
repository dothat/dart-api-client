// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// API to access Products
library product.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to access Products
class ProductApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  ProductApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = 'product/v1/serviceProviders/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PricingPlan].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PricingPlan> createPricingPlan(
    PricingPlan request,
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/pricingPlans';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PricingPlan.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> createProduct(
    Product request,
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/products';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Product.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [plnId] - null
  ///
  /// [prodId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductPriceList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductPriceList> createProductPriceList(
    ProductPriceList request,
    core.String svcProviderId,
    core.String plnId,
    core.String prodId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/pricingPlans/' +
        commons.escapeVariable('$plnId') +
        '/products/' +
        commons.escapeVariable('$prodId') +
        '/prices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ProductPriceList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [plnId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductPriceListCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductPriceListCollection> findAllPlanProductPriceLists(
    core.String svcProviderId,
    core.String plnId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/pricingPlans/' +
        commons.escapeVariable('$plnId') +
        '/prices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProductPriceListCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [plnId] - null
  ///
  /// [prodId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductPriceListCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductPriceListCollection> findAllProductPriceLists(
    core.String svcProviderId,
    core.String plnId,
    core.String prodId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/pricingPlans/' +
        commons.escapeVariable('$plnId') +
        '/products/' +
        commons.escapeVariable('$prodId') +
        '/prices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProductPriceListCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PricingPlanCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PricingPlanCollection> findPricingPlans(
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/pricingPlans';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PricingPlanCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductCollection> findProducts(
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/products';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProductCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductCollection> findProductsForCustomer(
    core.String svcProviderId,
    core.String custId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/products';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProductCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [plnId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PricingPlan].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PricingPlan> getPricingPlan(
    core.String svcProviderId,
    core.String plnId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/pricingPlans/' +
        commons.escapeVariable('$plnId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PricingPlan.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [prodId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> getProduct(
    core.String svcProviderId,
    core.String prodId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/products/' +
        commons.escapeVariable('$prodId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Product.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [plnId] - null
  ///
  /// [prodId] - null
  ///
  /// [prcListId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductPriceList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductPriceList> getProductPriceList(
    core.String svcProviderId,
    core.String plnId,
    core.String prodId,
    core.String prcListId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/pricingPlans/' +
        commons.escapeVariable('$plnId') +
        '/products/' +
        commons.escapeVariable('$prodId') +
        '/prices/' +
        commons.escapeVariable('$prcListId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ProductPriceList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [plnId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PricingPlan].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PricingPlan> updatePricingPlan(
    PricingPlan request,
    core.String svcProviderId,
    core.String plnId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/pricingPlans/' +
        commons.escapeVariable('$plnId');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PricingPlan.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [prodId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> updateProduct(
    Product request,
    core.String svcProviderId,
    core.String prodId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/products/' +
        commons.escapeVariable('$prodId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Product.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [plnId] - null
  ///
  /// [prodId] - null
  ///
  /// [prcListId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductPriceList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductPriceList> updateProductPriceList(
    ProductPriceList request,
    core.String svcProviderId,
    core.String plnId,
    core.String prodId,
    core.String prcListId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/pricingPlans/' +
        commons.escapeVariable('$plnId') +
        '/products/' +
        commons.escapeVariable('$prodId') +
        '/prices/' +
        commons.escapeVariable('$prcListId');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ProductPriceList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class Amount {
  core.String? currency;
  core.double? value;

  Amount();

  Amount.fromJson(core.Map _json) {
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = (_json['value'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (currency != null) 'currency': currency!,
        if (value != null) 'value': value!,
      };
}

class ChangeContext {
  core.String? initiatorType;
  core.String? messageId;
  core.String? userIdentifier;

  ChangeContext();

  ChangeContext.fromJson(core.Map _json) {
    if (_json.containsKey('initiatorType')) {
      initiatorType = _json['initiatorType'] as core.String;
    }
    if (_json.containsKey('messageId')) {
      messageId = _json['messageId'] as core.String;
    }
    if (_json.containsKey('userIdentifier')) {
      userIdentifier = _json['userIdentifier'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (initiatorType != null) 'initiatorType': initiatorType!,
        if (messageId != null) 'messageId': messageId!,
        if (userIdentifier != null) 'userIdentifier': userIdentifier!,
      };
}

class Measurement {
  core.double? quantity;
  core.String? quantityUnit;
  core.String? unitName;

  Measurement();

  Measurement.fromJson(core.Map _json) {
    if (_json.containsKey('quantity')) {
      quantity = (_json['quantity'] as core.num).toDouble();
    }
    if (_json.containsKey('quantityUnit')) {
      quantityUnit = _json['quantityUnit'] as core.String;
    }
    if (_json.containsKey('unitName')) {
      unitName = _json['unitName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (quantity != null) 'quantity': quantity!,
        if (quantityUnit != null) 'quantityUnit': quantityUnit!,
        if (unitName != null) 'unitName': unitName!,
      };
}

class PricingPlan {
  core.bool? active;
  ChangeContext? changeContext;
  core.DateTime? creationTimestamp;
  core.bool? default_;
  core.DateTime? modificationTimestamp;
  core.String? planCode;
  core.String? planId;
  core.String? planName;
  core.String? version;

  PricingPlan();

  PricingPlan.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('changeContext')) {
      changeContext = ChangeContext.fromJson(
          _json['changeContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('default')) {
      default_ = _json['default'] as core.bool;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('planCode')) {
      planCode = _json['planCode'] as core.String;
    }
    if (_json.containsKey('planId')) {
      planId = _json['planId'] as core.String;
    }
    if (_json.containsKey('planName')) {
      planName = _json['planName'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (changeContext != null) 'changeContext': changeContext!.toJson(),
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (default_ != null) 'default': default_!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (planCode != null) 'planCode': planCode!,
        if (planId != null) 'planId': planId!,
        if (planName != null) 'planName': planName!,
        if (version != null) 'version': version!,
      };
}

class PricingPlanCollection {
  core.List<PricingPlan>? items;

  PricingPlanCollection();

  PricingPlanCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<PricingPlan>((value) => PricingPlan.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}

class Product {
  core.bool? active;
  ProductAvailability? availability;
  core.String? category;
  ChangeContext? changeContext;
  core.DateTime? creationTimestamp;
  core.bool? deleted;
  core.String? description;
  core.int? displayRank;
  core.List<ProductImage>? images;
  core.double? measurementQuantity;
  core.String? measurementUnit;
  core.DateTime? modificationTimestamp;
  core.String? name;
  core.List<ProductPrice>? prices;
  ProductCategory? productCategory;
  core.String? productCode;
  ProductGroup? productGroup;
  core.String? productId;
  core.double? quantity;
  core.String? quantityLabel;
  core.String? quantityUnit;
  core.String? serviceProviderId;
  core.String? version;
  ProductVisibility? visibility;

  Product();

  Product.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('availability')) {
      availability = ProductAvailability.fromJson(
          _json['availability'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('category')) {
      category = _json['category'] as core.String;
    }
    if (_json.containsKey('changeContext')) {
      changeContext = ChangeContext.fromJson(
          _json['changeContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayRank')) {
      displayRank = _json['displayRank'] as core.int;
    }
    if (_json.containsKey('images')) {
      images = (_json['images'] as core.List)
          .map<ProductImage>((value) => ProductImage.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('measurementQuantity')) {
      measurementQuantity =
          (_json['measurementQuantity'] as core.num).toDouble();
    }
    if (_json.containsKey('measurementUnit')) {
      measurementUnit = _json['measurementUnit'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('prices')) {
      prices = (_json['prices'] as core.List)
          .map<ProductPrice>((value) => ProductPrice.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('productCategory')) {
      productCategory = ProductCategory.fromJson(
          _json['productCategory'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('productCode')) {
      productCode = _json['productCode'] as core.String;
    }
    if (_json.containsKey('productGroup')) {
      productGroup = ProductGroup.fromJson(
          _json['productGroup'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('productId')) {
      productId = _json['productId'] as core.String;
    }
    if (_json.containsKey('quantity')) {
      quantity = (_json['quantity'] as core.num).toDouble();
    }
    if (_json.containsKey('quantityLabel')) {
      quantityLabel = _json['quantityLabel'] as core.String;
    }
    if (_json.containsKey('quantityUnit')) {
      quantityUnit = _json['quantityUnit'] as core.String;
    }
    if (_json.containsKey('serviceProviderId')) {
      serviceProviderId = _json['serviceProviderId'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
    if (_json.containsKey('visibility')) {
      visibility = ProductVisibility.fromJson(
          _json['visibility'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (availability != null) 'availability': availability!.toJson(),
        if (category != null) 'category': category!,
        if (changeContext != null) 'changeContext': changeContext!.toJson(),
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (deleted != null) 'deleted': deleted!,
        if (description != null) 'description': description!,
        if (displayRank != null) 'displayRank': displayRank!,
        if (images != null)
          'images': images!.map((value) => value.toJson()).toList(),
        if (measurementQuantity != null)
          'measurementQuantity': measurementQuantity!,
        if (measurementUnit != null) 'measurementUnit': measurementUnit!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (name != null) 'name': name!,
        if (prices != null)
          'prices': prices!.map((value) => value.toJson()).toList(),
        if (productCategory != null)
          'productCategory': productCategory!.toJson(),
        if (productCode != null) 'productCode': productCode!,
        if (productGroup != null) 'productGroup': productGroup!.toJson(),
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
        if (quantityLabel != null) 'quantityLabel': quantityLabel!,
        if (quantityUnit != null) 'quantityUnit': quantityUnit!,
        if (serviceProviderId != null) 'serviceProviderId': serviceProviderId!,
        if (version != null) 'version': version!,
        if (visibility != null) 'visibility': visibility!.toJson(),
      };
}

class ProductAvailability {
  core.DateTime? availableFrom;
  core.DateTime? availableUntil;
  Schedule? schedule;

  ProductAvailability();

  ProductAvailability.fromJson(core.Map _json) {
    if (_json.containsKey('availableFrom')) {
      availableFrom =
          core.DateTime.parse(_json['availableFrom'] as core.String);
    }
    if (_json.containsKey('availableUntil')) {
      availableUntil =
          core.DateTime.parse(_json['availableUntil'] as core.String);
    }
    if (_json.containsKey('schedule')) {
      schedule = Schedule.fromJson(
          _json['schedule'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableFrom != null)
          'availableFrom':
              "${(availableFrom!).year.toString().padLeft(4, '0')}-${(availableFrom!).month.toString().padLeft(2, '0')}-${(availableFrom!).day.toString().padLeft(2, '0')}",
        if (availableUntil != null)
          'availableUntil':
              "${(availableUntil!).year.toString().padLeft(4, '0')}-${(availableUntil!).month.toString().padLeft(2, '0')}-${(availableUntil!).day.toString().padLeft(2, '0')}",
        if (schedule != null) 'schedule': schedule!.toJson(),
      };
}

class ProductCategory {
  core.String? categoryName;
  core.List<ProductImage>? images;

  ProductCategory();

  ProductCategory.fromJson(core.Map _json) {
    if (_json.containsKey('categoryName')) {
      categoryName = _json['categoryName'] as core.String;
    }
    if (_json.containsKey('images')) {
      images = (_json['images'] as core.List)
          .map<ProductImage>((value) => ProductImage.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoryName != null) 'categoryName': categoryName!,
        if (images != null)
          'images': images!.map((value) => value.toJson()).toList(),
      };
}

class ProductCollection {
  core.List<Product>? items;

  ProductCollection();

  ProductCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Product>((value) =>
              Product.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}

class ProductGroup {
  core.String? groupDescription;
  core.String? groupName;
  core.List<ProductImage>? images;

  ProductGroup();

  ProductGroup.fromJson(core.Map _json) {
    if (_json.containsKey('groupDescription')) {
      groupDescription = _json['groupDescription'] as core.String;
    }
    if (_json.containsKey('groupName')) {
      groupName = _json['groupName'] as core.String;
    }
    if (_json.containsKey('images')) {
      images = (_json['images'] as core.List)
          .map<ProductImage>((value) => ProductImage.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupDescription != null) 'groupDescription': groupDescription!,
        if (groupName != null) 'groupName': groupName!,
        if (images != null)
          'images': images!.map((value) => value.toJson()).toList(),
      };
}

class ProductImage {
  core.String? assetName;
  core.String? imageType;
  core.String? imageUrl;

  ProductImage();

  ProductImage.fromJson(core.Map _json) {
    if (_json.containsKey('assetName')) {
      assetName = _json['assetName'] as core.String;
    }
    if (_json.containsKey('imageType')) {
      imageType = _json['imageType'] as core.String;
    }
    if (_json.containsKey('imageUrl')) {
      imageUrl = _json['imageUrl'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetName != null) 'assetName': assetName!,
        if (imageType != null) 'imageType': imageType!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
      };
}

class ProductPrice {
  Amount? amount;
  core.double? duration;
  core.String? durationType;
  Measurement? measurement;
  Schedule? schedule;

  ProductPrice();

  ProductPrice.fromJson(core.Map _json) {
    if (_json.containsKey('amount')) {
      amount = Amount.fromJson(
          _json['amount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('duration')) {
      duration = (_json['duration'] as core.num).toDouble();
    }
    if (_json.containsKey('durationType')) {
      durationType = _json['durationType'] as core.String;
    }
    if (_json.containsKey('measurement')) {
      measurement = Measurement.fromJson(
          _json['measurement'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('schedule')) {
      schedule = Schedule.fromJson(
          _json['schedule'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!.toJson(),
        if (duration != null) 'duration': duration!,
        if (durationType != null) 'durationType': durationType!,
        if (measurement != null) 'measurement': measurement!.toJson(),
        if (schedule != null) 'schedule': schedule!.toJson(),
      };
}

class ProductPriceList {
  core.DateTime? creationTimestamp;
  core.DateTime? endDate;
  core.DateTime? modificationTimestamp;
  core.List<ProductPrice>? prices;
  core.String? pricingPlanId;
  Product? product;
  core.String? productId;
  core.String? productPriceListId;
  core.DateTime? startDate;
  core.String? version;

  ProductPriceList();

  ProductPriceList.fromJson(core.Map _json) {
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('endDate')) {
      endDate = core.DateTime.parse(_json['endDate'] as core.String);
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('prices')) {
      prices = (_json['prices'] as core.List)
          .map<ProductPrice>((value) => ProductPrice.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('pricingPlanId')) {
      pricingPlanId = _json['pricingPlanId'] as core.String;
    }
    if (_json.containsKey('product')) {
      product = Product.fromJson(
          _json['product'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('productId')) {
      productId = _json['productId'] as core.String;
    }
    if (_json.containsKey('productPriceListId')) {
      productPriceListId = _json['productPriceListId'] as core.String;
    }
    if (_json.containsKey('startDate')) {
      startDate = core.DateTime.parse(_json['startDate'] as core.String);
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (endDate != null)
          'endDate':
              "${(endDate!).year.toString().padLeft(4, '0')}-${(endDate!).month.toString().padLeft(2, '0')}-${(endDate!).day.toString().padLeft(2, '0')}",
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (prices != null)
          'prices': prices!.map((value) => value.toJson()).toList(),
        if (pricingPlanId != null) 'pricingPlanId': pricingPlanId!,
        if (product != null) 'product': product!.toJson(),
        if (productId != null) 'productId': productId!,
        if (productPriceListId != null)
          'productPriceListId': productPriceListId!,
        if (startDate != null)
          'startDate':
              "${(startDate!).year.toString().padLeft(4, '0')}-${(startDate!).month.toString().padLeft(2, '0')}-${(startDate!).day.toString().padLeft(2, '0')}",
        if (version != null) 'version': version!,
      };
}

class ProductPriceListCollection {
  core.List<ProductPriceList>? items;

  ProductPriceListCollection();

  ProductPriceListCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<ProductPriceList>((value) => ProductPriceList.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}

class ProductVisibility {
  core.bool? visibleOnlyForServiceProvider;
  core.bool? visibleOnlyForWhiteListedCustomers;

  ProductVisibility();

  ProductVisibility.fromJson(core.Map _json) {
    if (_json.containsKey('visibleOnlyForServiceProvider')) {
      visibleOnlyForServiceProvider =
          _json['visibleOnlyForServiceProvider'] as core.bool;
    }
    if (_json.containsKey('visibleOnlyForWhiteListedCustomers')) {
      visibleOnlyForWhiteListedCustomers =
          _json['visibleOnlyForWhiteListedCustomers'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (visibleOnlyForServiceProvider != null)
          'visibleOnlyForServiceProvider': visibleOnlyForServiceProvider!,
        if (visibleOnlyForWhiteListedCustomers != null)
          'visibleOnlyForWhiteListedCustomers':
              visibleOnlyForWhiteListedCustomers!,
      };
}

class Schedule {
  core.List<core.String>? daysOfWeek;
  core.int? frequency;
  core.String? frequencyType;
  core.List<ScheduleRestriction>? restrictions;
  core.String? scheduleType;

  Schedule();

  Schedule.fromJson(core.Map _json) {
    if (_json.containsKey('daysOfWeek')) {
      daysOfWeek = (_json['daysOfWeek'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('frequency')) {
      frequency = _json['frequency'] as core.int;
    }
    if (_json.containsKey('frequencyType')) {
      frequencyType = _json['frequencyType'] as core.String;
    }
    if (_json.containsKey('restrictions')) {
      restrictions = (_json['restrictions'] as core.List)
          .map<ScheduleRestriction>((value) => ScheduleRestriction.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('scheduleType')) {
      scheduleType = _json['scheduleType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysOfWeek != null) 'daysOfWeek': daysOfWeek!,
        if (frequency != null) 'frequency': frequency!,
        if (frequencyType != null) 'frequencyType': frequencyType!,
        if (restrictions != null)
          'restrictions': restrictions!.map((value) => value.toJson()).toList(),
        if (scheduleType != null) 'scheduleType': scheduleType!,
      };
}

class ScheduleRestriction {
  core.List<core.String>? daysOfWeek;
  core.String? scheduleType;

  ScheduleRestriction();

  ScheduleRestriction.fromJson(core.Map _json) {
    if (_json.containsKey('daysOfWeek')) {
      daysOfWeek = (_json['daysOfWeek'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('scheduleType')) {
      scheduleType = _json['scheduleType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysOfWeek != null) 'daysOfWeek': daysOfWeek!,
        if (scheduleType != null) 'scheduleType': scheduleType!,
      };
}
