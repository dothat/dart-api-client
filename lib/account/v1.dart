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

class PricingPlan {
  core.bool active;
  ChangeContext changeContext;
  core.DateTime creationTimestamp;
  core.bool default_;
  core.DateTime modificationTimestamp;
  core.String planCode;
  core.String planId;
  core.String planName;
  core.String version;

  PricingPlan();

  PricingPlan.fromJson(core.Map _json) {
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("changeContext")) {
      changeContext = new ChangeContext.fromJson(_json["changeContext"]);
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("default")) {
      default_ = _json["default"];
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
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (active != null) {
      _json["active"] = active;
    }
    if (changeContext != null) {
      _json["changeContext"] = (changeContext).toJson();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (default_ != null) {
      _json["default"] = default_;
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
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}
