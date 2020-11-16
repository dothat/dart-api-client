// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.account.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client account/v1';

/// API to access Accounts
class AccountApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  AccountApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: "account/v1/serviceProviders/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> createAccount(
      BillingAccount request, core.String svcProviderId, core.String custId,
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
    if (custId == null) {
      throw new core.ArgumentError("Parameter custId is required.");
    }
    _queryParams["custId"] = [custId];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') + '/accounts';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BillingAccount.fromJson(data));
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
  /// Completes with a [BillingAccountCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccountCollection> findAccountsForCustomer(
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
        '/accounts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BillingAccountCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [acctId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> getAccount(
      core.String svcProviderId, core.String custId, core.String acctId,
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
    if (acctId == null) {
      throw new core.ArgumentError("Parameter acctId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/accounts/' +
        commons.Escaper.ecapeVariable('$acctId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BillingAccount.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [balanceDt] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountBalanceSummary].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountBalanceSummary> getAccountBalanceSummary(
      core.String svcProviderId, core.String custId, core.DateTime balanceDt,
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
    if (balanceDt == null) {
      throw new core.ArgumentError("Parameter balanceDt is required.");
    }
    _queryParams["balanceDt"] = [
      "${(balanceDt).year.toString().padLeft(4, '0')}-${(balanceDt).month.toString().padLeft(2, '0')}-${(balanceDt).day.toString().padLeft(2, '0')}"
    ];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/accounts/balance';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new AccountBalanceSummary.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [acctId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> updateAccount(BillingAccount request,
      core.String svcProviderId, core.String custId, core.String acctId,
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
    if (custId == null) {
      throw new core.ArgumentError("Parameter custId is required.");
    }
    if (acctId == null) {
      throw new core.ArgumentError("Parameter acctId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/accounts/' +
        commons.Escaper.ecapeVariable('$acctId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BillingAccount.fromJson(data));
  }
}

class AccountBalanceSummary {
  core.DateTime balanceDate;
  core.String billingType;
  core.double unpaidBillBalance;
  core.double walletBalance;

  AccountBalanceSummary();

  AccountBalanceSummary.fromJson(core.Map _json) {
    if (_json.containsKey("balanceDate")) {
      balanceDate = core.DateTime.parse(_json["balanceDate"]);
    }
    if (_json.containsKey("billingType")) {
      billingType = _json["billingType"];
    }
    if (_json.containsKey("unpaidBillBalance")) {
      unpaidBillBalance = _json["unpaidBillBalance"].toDouble();
    }
    if (_json.containsKey("walletBalance")) {
      walletBalance = _json["walletBalance"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (balanceDate != null) {
      _json["balanceDate"] =
          "${(balanceDate).year.toString().padLeft(4, '0')}-${(balanceDate).month.toString().padLeft(2, '0')}-${(balanceDate).day.toString().padLeft(2, '0')}";
    }
    if (billingType != null) {
      _json["billingType"] = billingType;
    }
    if (unpaidBillBalance != null) {
      _json["unpaidBillBalance"] = unpaidBillBalance;
    }
    if (walletBalance != null) {
      _json["walletBalance"] = walletBalance;
    }
    return _json;
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

class BillingAccount {
  core.String accountId;
  core.String accountName;
  core.bool active;
  core.String billedEntityName;
  BillingAddress billingAddress;
  core.String billingCurrency;
  core.String billingType;
  core.DateTime creationTimestamp;
  core.double creditLimit;
  core.bool customerAddressUsedForBilling;
  core.String customerId;
  core.bool customerNameUsedForBilling;
  core.DateTime modificationTimestamp;
  core.String preferredPaymentMethod;
  core.String preferredPaymentMethodName;
  PricingPlan pricingPlan;
  core.String pricingPlanId;
  core.String version;

  BillingAccount();

  BillingAccount.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("accountName")) {
      accountName = _json["accountName"];
    }
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("billedEntityName")) {
      billedEntityName = _json["billedEntityName"];
    }
    if (_json.containsKey("billingAddress")) {
      billingAddress = new BillingAddress.fromJson(_json["billingAddress"]);
    }
    if (_json.containsKey("billingCurrency")) {
      billingCurrency = _json["billingCurrency"];
    }
    if (_json.containsKey("billingType")) {
      billingType = _json["billingType"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("creditLimit")) {
      creditLimit = _json["creditLimit"].toDouble();
    }
    if (_json.containsKey("customerAddressUsedForBilling")) {
      customerAddressUsedForBilling = _json["customerAddressUsedForBilling"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("customerNameUsedForBilling")) {
      customerNameUsedForBilling = _json["customerNameUsedForBilling"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("preferredPaymentMethod")) {
      preferredPaymentMethod = _json["preferredPaymentMethod"];
    }
    if (_json.containsKey("preferredPaymentMethodName")) {
      preferredPaymentMethodName = _json["preferredPaymentMethodName"];
    }
    if (_json.containsKey("pricingPlan")) {
      pricingPlan = new PricingPlan.fromJson(_json["pricingPlan"]);
    }
    if (_json.containsKey("pricingPlanId")) {
      pricingPlanId = _json["pricingPlanId"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountId != null) {
      _json["accountId"] = accountId;
    }
    if (accountName != null) {
      _json["accountName"] = accountName;
    }
    if (active != null) {
      _json["active"] = active;
    }
    if (billedEntityName != null) {
      _json["billedEntityName"] = billedEntityName;
    }
    if (billingAddress != null) {
      _json["billingAddress"] = (billingAddress).toJson();
    }
    if (billingCurrency != null) {
      _json["billingCurrency"] = billingCurrency;
    }
    if (billingType != null) {
      _json["billingType"] = billingType;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (creditLimit != null) {
      _json["creditLimit"] = creditLimit;
    }
    if (customerAddressUsedForBilling != null) {
      _json["customerAddressUsedForBilling"] = customerAddressUsedForBilling;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (customerNameUsedForBilling != null) {
      _json["customerNameUsedForBilling"] = customerNameUsedForBilling;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (preferredPaymentMethod != null) {
      _json["preferredPaymentMethod"] = preferredPaymentMethod;
    }
    if (preferredPaymentMethodName != null) {
      _json["preferredPaymentMethodName"] = preferredPaymentMethodName;
    }
    if (pricingPlan != null) {
      _json["pricingPlan"] = (pricingPlan).toJson();
    }
    if (pricingPlanId != null) {
      _json["pricingPlanId"] = pricingPlanId;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class BillingAccountCollection {
  core.List<BillingAccount> items;

  BillingAccountCollection();

  BillingAccountCollection.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<BillingAccount>((value) => new BillingAccount.fromJson(value))
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

class BillingAddress {
  core.String addressLine1;
  core.String addressLine2;
  core.String addressLine3;
  core.String city;
  core.String state;

  BillingAddress();

  BillingAddress.fromJson(core.Map _json) {
    if (_json.containsKey("addressLine1")) {
      addressLine1 = _json["addressLine1"];
    }
    if (_json.containsKey("addressLine2")) {
      addressLine2 = _json["addressLine2"];
    }
    if (_json.containsKey("addressLine3")) {
      addressLine3 = _json["addressLine3"];
    }
    if (_json.containsKey("city")) {
      city = _json["city"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addressLine1 != null) {
      _json["addressLine1"] = addressLine1;
    }
    if (addressLine2 != null) {
      _json["addressLine2"] = addressLine2;
    }
    if (addressLine3 != null) {
      _json["addressLine3"] = addressLine3;
    }
    if (city != null) {
      _json["city"] = city;
    }
    if (state != null) {
      _json["state"] = state;
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

class PriceList {
  ChangeContext changeContext;
  core.DateTime creationTimestamp;
  core.DateTime endDate;
  core.DateTime modificationTimestamp;
  core.String priceListId;
  PricingPlan pricingPlan;
  core.String pricingPlanId;
  core.List<ProductPriceList> productPriceLists;
  core.DateTime startDate;
  core.String version;

  PriceList();

  PriceList.fromJson(core.Map _json) {
    if (_json.containsKey("changeContext")) {
      changeContext = new ChangeContext.fromJson(_json["changeContext"]);
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("endDate")) {
      endDate = core.DateTime.parse(_json["endDate"]);
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("priceListId")) {
      priceListId = _json["priceListId"];
    }
    if (_json.containsKey("pricingPlan")) {
      pricingPlan = new PricingPlan.fromJson(_json["pricingPlan"]);
    }
    if (_json.containsKey("pricingPlanId")) {
      pricingPlanId = _json["pricingPlanId"];
    }
    if (_json.containsKey("productPriceLists")) {
      productPriceLists = (_json["productPriceLists"] as core.List)
          .map<ProductPriceList>(
              (value) => new ProductPriceList.fromJson(value))
          .toList();
    }
    if (_json.containsKey("startDate")) {
      startDate = core.DateTime.parse(_json["startDate"]);
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (changeContext != null) {
      _json["changeContext"] = (changeContext).toJson();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (endDate != null) {
      _json["endDate"] =
          "${(endDate).year.toString().padLeft(4, '0')}-${(endDate).month.toString().padLeft(2, '0')}-${(endDate).day.toString().padLeft(2, '0')}";
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (priceListId != null) {
      _json["priceListId"] = priceListId;
    }
    if (pricingPlan != null) {
      _json["pricingPlan"] = (pricingPlan).toJson();
    }
    if (pricingPlanId != null) {
      _json["pricingPlanId"] = pricingPlanId;
    }
    if (productPriceLists != null) {
      _json["productPriceLists"] =
          productPriceLists.map((value) => (value).toJson()).toList();
    }
    if (startDate != null) {
      _json["startDate"] =
          "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}";
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class PricingPlan {
  ChangeContext changeContext;
  core.DateTime creationTimestamp;
  core.DateTime modificationTimestamp;
  core.String planCode;
  core.String planId;
  core.String planName;
  core.List<PriceList> priceLists;
  core.String version;

  PricingPlan();

  PricingPlan.fromJson(core.Map _json) {
    if (_json.containsKey("changeContext")) {
      changeContext = new ChangeContext.fromJson(_json["changeContext"]);
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("planCode")) {
      planCode = _json["planCode"];
    }
    if (_json.containsKey("planId")) {
      planId = _json["planId"];
    }
    if (_json.containsKey("planName")) {
      planName = _json["planName"];
    }
    if (_json.containsKey("priceLists")) {
      priceLists = (_json["priceLists"] as core.List)
          .map<PriceList>((value) => new PriceList.fromJson(value))
          .toList();
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (changeContext != null) {
      _json["changeContext"] = (changeContext).toJson();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (planCode != null) {
      _json["planCode"] = planCode;
    }
    if (planId != null) {
      _json["planId"] = planId;
    }
    if (planName != null) {
      _json["planName"] = planName;
    }
    if (priceLists != null) {
      _json["priceLists"] =
          priceLists.map((value) => (value).toJson()).toList();
    }
    if (version != null) {
      _json["version"] = version;
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
  core.int displayRank;
  core.List<ProductImage> images;
  core.double measurementQuantity;
  core.String measurementUnit;
  core.DateTime modificationTimestamp;
  core.String name;
  core.List<ProductPriceList> priceLists;
  ProductCategory productCategory;
  core.String productCode;
  ProductGroup productGroup;
  core.String productId;
  core.double quantity;
  core.String quantityLabel;
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
    if (_json.containsKey("displayRank")) {
      displayRank = _json["displayRank"];
    }
    if (_json.containsKey("images")) {
      images = (_json["images"] as core.List)
          .map<ProductImage>((value) => new ProductImage.fromJson(value))
          .toList();
    }
    if (_json.containsKey("measurementQuantity")) {
      measurementQuantity = _json["measurementQuantity"].toDouble();
    }
    if (_json.containsKey("measurementUnit")) {
      measurementUnit = _json["measurementUnit"];
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
    if (_json.containsKey("productCategory")) {
      productCategory = new ProductCategory.fromJson(_json["productCategory"]);
    }
    if (_json.containsKey("productCode")) {
      productCode = _json["productCode"];
    }
    if (_json.containsKey("productGroup")) {
      productGroup = new ProductGroup.fromJson(_json["productGroup"]);
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("quantity")) {
      quantity = _json["quantity"].toDouble();
    }
    if (_json.containsKey("quantityLabel")) {
      quantityLabel = _json["quantityLabel"];
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
    if (displayRank != null) {
      _json["displayRank"] = displayRank;
    }
    if (images != null) {
      _json["images"] = images.map((value) => (value).toJson()).toList();
    }
    if (measurementQuantity != null) {
      _json["measurementQuantity"] = measurementQuantity;
    }
    if (measurementUnit != null) {
      _json["measurementUnit"] = measurementUnit;
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
    if (productCategory != null) {
      _json["productCategory"] = (productCategory).toJson();
    }
    if (productCode != null) {
      _json["productCode"] = productCode;
    }
    if (productGroup != null) {
      _json["productGroup"] = (productGroup).toJson();
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (quantity != null) {
      _json["quantity"] = quantity;
    }
    if (quantityLabel != null) {
      _json["quantityLabel"] = quantityLabel;
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

class ProductCategory {
  core.String categoryName;
  core.List<ProductImage> images;

  ProductCategory();

  ProductCategory.fromJson(core.Map _json) {
    if (_json.containsKey("categoryName")) {
      categoryName = _json["categoryName"];
    }
    if (_json.containsKey("images")) {
      images = (_json["images"] as core.List)
          .map<ProductImage>((value) => new ProductImage.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categoryName != null) {
      _json["categoryName"] = categoryName;
    }
    if (images != null) {
      _json["images"] = images.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ProductGroup {
  core.String groupDescription;
  core.String groupName;
  core.List<ProductImage> images;

  ProductGroup();

  ProductGroup.fromJson(core.Map _json) {
    if (_json.containsKey("groupDescription")) {
      groupDescription = _json["groupDescription"];
    }
    if (_json.containsKey("groupName")) {
      groupName = _json["groupName"];
    }
    if (_json.containsKey("images")) {
      images = (_json["images"] as core.List)
          .map<ProductImage>((value) => new ProductImage.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groupDescription != null) {
      _json["groupDescription"] = groupDescription;
    }
    if (groupName != null) {
      _json["groupName"] = groupName;
    }
    if (images != null) {
      _json["images"] = images.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ProductImage {
  core.String assetName;
  core.String imageType;
  core.String imageUrl;

  ProductImage();

  ProductImage.fromJson(core.Map _json) {
    if (_json.containsKey("assetName")) {
      assetName = _json["assetName"];
    }
    if (_json.containsKey("imageType")) {
      imageType = _json["imageType"];
    }
    if (_json.containsKey("imageUrl")) {
      imageUrl = _json["imageUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (assetName != null) {
      _json["assetName"] = assetName;
    }
    if (imageType != null) {
      _json["imageType"] = imageType;
    }
    if (imageUrl != null) {
      _json["imageUrl"] = imageUrl;
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
  Product product;
  core.String productId;
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
    if (_json.containsKey("product")) {
      product = new Product.fromJson(_json["product"]);
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
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
    if (product != null) {
      _json["product"] = (product).toJson();
    }
    if (productId != null) {
      _json["productId"] = productId;
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
