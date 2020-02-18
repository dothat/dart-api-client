// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.product.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client product/v1';

/// API to access Products
class ProductApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  ProductApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: "product/v1/serviceProviders/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);

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
      Product request, core.String svcProviderId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') + '/products';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Product.fromJson(data));
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
  async.Future<ProductCollection> findProducts(core.String svcProviderId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') + '/products';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductCollection.fromJson(data));
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
      core.String svcProviderId, core.String custId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if (custId == null) {
      throw new core.ArgumentError("Parameter custId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/products';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ProductCollection.fromJson(data));
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
      core.String svcProviderId, core.String prodId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if (prodId == null) {
      throw new core.ArgumentError("Parameter prodId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/products/' +
        commons.Escaper.ecapeVariable('$prodId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Product.fromJson(data));
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
      Product request, core.String svcProviderId, core.String prodId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if (prodId == null) {
      throw new core.ArgumentError("Parameter prodId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/products/' +
        commons.Escaper.ecapeVariable('$prodId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Product.fromJson(data));
  }
}

class Amount {
  core.String currency;
  core.double value;

  Amount();

  Amount.fromJson(core.Map _json) {
    if (_json.containsKey("currency")) {
      currency = _json["currency"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (currency != null) {
      _json["currency"] = currency;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

class ChangeContext {
  core.String initiatorType;
  core.String messageId;
  core.String userIdentifier;

  ChangeContext();

  ChangeContext.fromJson(core.Map _json) {
    if (_json.containsKey("initiatorType")) {
      initiatorType = _json["initiatorType"];
    }
    if (_json.containsKey("messageId")) {
      messageId = _json["messageId"];
    }
    if (_json.containsKey("userIdentifier")) {
      userIdentifier = _json["userIdentifier"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (initiatorType != null) {
      _json["initiatorType"] = initiatorType;
    }
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    if (userIdentifier != null) {
      _json["userIdentifier"] = userIdentifier;
    }
    return _json;
  }
}

class Product {
  core.bool active;
  ProductAvailability availability;
  core.String category;
  ChangeContext changeContext;
  core.DateTime creationTimestamp;
  core.bool deleted;
  core.String description;
  core.DateTime modificationTimestamp;
  core.String name;
  core.List<ProductPriceList> priceLists;
  core.String productCode;
  core.String productId;
  core.double quantity;
  core.String quantityUnit;
  core.String serviceProviderId;
  core.String version;
  ProductVisibility visibility;

  Product();

  Product.fromJson(core.Map _json) {
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("availability")) {
      availability = new ProductAvailability.fromJson(_json["availability"]);
    }
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("changeContext")) {
      changeContext = new ChangeContext.fromJson(_json["changeContext"]);
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("priceLists")) {
      priceLists = (_json["priceLists"] as core.List)
          .map<ProductPriceList>(
              (value) => new ProductPriceList.fromJson(value))
          .toList();
    }
    if (_json.containsKey("productCode")) {
      productCode = _json["productCode"];
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("quantity")) {
      quantity = _json["quantity"].toDouble();
    }
    if (_json.containsKey("quantityUnit")) {
      quantityUnit = _json["quantityUnit"];
    }
    if (_json.containsKey("serviceProviderId")) {
      serviceProviderId = _json["serviceProviderId"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
    if (_json.containsKey("visibility")) {
      visibility = new ProductVisibility.fromJson(_json["visibility"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (active != null) {
      _json["active"] = active;
    }
    if (availability != null) {
      _json["availability"] = (availability).toJson();
    }
    if (category != null) {
      _json["category"] = category;
    }
    if (changeContext != null) {
      _json["changeContext"] = (changeContext).toJson();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (priceLists != null) {
      _json["priceLists"] =
          priceLists.map((value) => (value).toJson()).toList();
    }
    if (productCode != null) {
      _json["productCode"] = productCode;
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (quantity != null) {
      _json["quantity"] = quantity;
    }
    if (quantityUnit != null) {
      _json["quantityUnit"] = quantityUnit;
    }
    if (serviceProviderId != null) {
      _json["serviceProviderId"] = serviceProviderId;
    }
    if (version != null) {
      _json["version"] = version;
    }
    if (visibility != null) {
      _json["visibility"] = (visibility).toJson();
    }
    return _json;
  }
}

class ProductAvailability {
  core.DateTime availableFrom;
  core.DateTime availableUntil;
  Schedule schedule;

  ProductAvailability();

  ProductAvailability.fromJson(core.Map _json) {
    if (_json.containsKey("availableFrom")) {
      availableFrom = core.DateTime.parse(_json["availableFrom"]);
    }
    if (_json.containsKey("availableUntil")) {
      availableUntil = core.DateTime.parse(_json["availableUntil"]);
    }
    if (_json.containsKey("schedule")) {
      schedule = new Schedule.fromJson(_json["schedule"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (availableFrom != null) {
      _json["availableFrom"] =
          "${(availableFrom).year.toString().padLeft(4, '0')}-${(availableFrom).month.toString().padLeft(2, '0')}-${(availableFrom).day.toString().padLeft(2, '0')}";
    }
    if (availableUntil != null) {
      _json["availableUntil"] =
          "${(availableUntil).year.toString().padLeft(4, '0')}-${(availableUntil).month.toString().padLeft(2, '0')}-${(availableUntil).day.toString().padLeft(2, '0')}";
    }
    if (schedule != null) {
      _json["schedule"] = (schedule).toJson();
    }
    return _json;
  }
}

class ProductCollection {
  core.List<Product> items;

  ProductCollection();

  ProductCollection.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Product>((value) => new Product.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ProductPrice {
  Amount amount;
  core.double duration;
  core.String durationType;
  Schedule schedule;

  ProductPrice();

  ProductPrice.fromJson(core.Map _json) {
    if (_json.containsKey("amount")) {
      amount = new Amount.fromJson(_json["amount"]);
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"].toDouble();
    }
    if (_json.containsKey("durationType")) {
      durationType = _json["durationType"];
    }
    if (_json.containsKey("schedule")) {
      schedule = new Schedule.fromJson(_json["schedule"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (amount != null) {
      _json["amount"] = (amount).toJson();
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (durationType != null) {
      _json["durationType"] = durationType;
    }
    if (schedule != null) {
      _json["schedule"] = (schedule).toJson();
    }
    return _json;
  }
}

class ProductPriceList {
  core.DateTime endDate;
  core.List<ProductPrice> prices;
  core.DateTime startDate;

  ProductPriceList();

  ProductPriceList.fromJson(core.Map _json) {
    if (_json.containsKey("endDate")) {
      endDate = core.DateTime.parse(_json["endDate"]);
    }
    if (_json.containsKey("prices")) {
      prices = (_json["prices"] as core.List)
          .map<ProductPrice>((value) => new ProductPrice.fromJson(value))
          .toList();
    }
    if (_json.containsKey("startDate")) {
      startDate = core.DateTime.parse(_json["startDate"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endDate != null) {
      _json["endDate"] =
          "${(endDate).year.toString().padLeft(4, '0')}-${(endDate).month.toString().padLeft(2, '0')}-${(endDate).day.toString().padLeft(2, '0')}";
    }
    if (prices != null) {
      _json["prices"] = prices.map((value) => (value).toJson()).toList();
    }
    if (startDate != null) {
      _json["startDate"] =
          "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}";
    }
    return _json;
  }
}

class ProductVisibility {
  core.bool visibleOnlyForServiceProvider;
  core.bool visibleOnlyForWhiteListedCustomers;

  ProductVisibility();

  ProductVisibility.fromJson(core.Map _json) {
    if (_json.containsKey("visibleOnlyForServiceProvider")) {
      visibleOnlyForServiceProvider = _json["visibleOnlyForServiceProvider"];
    }
    if (_json.containsKey("visibleOnlyForWhiteListedCustomers")) {
      visibleOnlyForWhiteListedCustomers =
          _json["visibleOnlyForWhiteListedCustomers"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (visibleOnlyForServiceProvider != null) {
      _json["visibleOnlyForServiceProvider"] = visibleOnlyForServiceProvider;
    }
    if (visibleOnlyForWhiteListedCustomers != null) {
      _json["visibleOnlyForWhiteListedCustomers"] =
          visibleOnlyForWhiteListedCustomers;
    }
    return _json;
  }
}

class Schedule {
  core.List<core.String> daysOfWeek;
  core.int frequency;
  core.String frequencyType;
  core.List<ScheduleRestriction> restrictions;
  core.String scheduleType;

  Schedule();

  Schedule.fromJson(core.Map _json) {
    if (_json.containsKey("daysOfWeek")) {
      daysOfWeek = (_json["daysOfWeek"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("frequency")) {
      frequency = _json["frequency"];
    }
    if (_json.containsKey("frequencyType")) {
      frequencyType = _json["frequencyType"];
    }
    if (_json.containsKey("restrictions")) {
      restrictions = (_json["restrictions"] as core.List)
          .map<ScheduleRestriction>(
              (value) => new ScheduleRestriction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("scheduleType")) {
      scheduleType = _json["scheduleType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (daysOfWeek != null) {
      _json["daysOfWeek"] = daysOfWeek;
    }
    if (frequency != null) {
      _json["frequency"] = frequency;
    }
    if (frequencyType != null) {
      _json["frequencyType"] = frequencyType;
    }
    if (restrictions != null) {
      _json["restrictions"] =
          restrictions.map((value) => (value).toJson()).toList();
    }
    if (scheduleType != null) {
      _json["scheduleType"] = scheduleType;
    }
    return _json;
  }
}

class ScheduleRestriction {
  core.List<core.String> daysOfWeek;
  core.String scheduleType;

  ScheduleRestriction();

  ScheduleRestriction.fromJson(core.Map _json) {
    if (_json.containsKey("daysOfWeek")) {
      daysOfWeek = (_json["daysOfWeek"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("scheduleType")) {
      scheduleType = _json["scheduleType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (daysOfWeek != null) {
      _json["daysOfWeek"] = daysOfWeek;
    }
    if (scheduleType != null) {
      _json["scheduleType"] = scheduleType;
    }
    return _json;
  }
}
