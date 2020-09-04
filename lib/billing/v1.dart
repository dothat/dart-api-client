// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.billing.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client billing/v1';

/// API to access Billing Transactions
class BillingApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  BillingApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: "billing/v1/serviceProviders/"})
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
  /// [acctId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransaction> createTransaction(BillingTransaction request,
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
        commons.Escaper.ecapeVariable('$acctId') +
        '/transactions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BillingTransaction.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [acctId] - null
  ///
  /// [reasnType] - null
  /// Possible string values are:
  /// - "BALANCE"
  /// - "BILL"
  /// - "BILL_BALANCE"
  /// - "ORDER"
  /// - "ORDER_REVERSAL"
  /// - "PAYMENT"
  /// - "PAYMENT_REVERSAL"
  /// - "CHARGE"
  /// - "CREDIT"
  /// - "ADVANCE"
  /// - "TRANSFER"
  ///
  /// [reasnId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransactionCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransactionCollection> getAllTransactions(
      core.String svcProviderId,
      core.String custId,
      core.String acctId,
      core.String reasnType,
      core.String reasnId,
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
    if (reasnType == null) {
      throw new core.ArgumentError("Parameter reasnType is required.");
    }
    if (reasnId == null) {
      throw new core.ArgumentError("Parameter reasnId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/accounts/' +
        commons.Escaper.ecapeVariable('$acctId') +
        '/transactions/reasons/' +
        commons.Escaper.ecapeVariable('$reasnType') +
        '/' +
        commons.Escaper.ecapeVariable('$reasnId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new BillingTransactionCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [acctId] - null
  ///
  /// [transId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransaction> getTransaction(core.String svcProviderId,
      core.String custId, core.String acctId, core.String transId,
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
    if (transId == null) {
      throw new core.ArgumentError("Parameter transId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/accounts/' +
        commons.Escaper.ecapeVariable('$acctId') +
        '/transactions/' +
        commons.Escaper.ecapeVariable('$transId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BillingTransaction.fromJson(data));
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
  /// [ordId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransactionList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransactionList> replaceTransactionsForOrder(
      BillingTransactionList request,
      core.String svcProviderId,
      core.String custId,
      core.String acctId,
      core.String ordId,
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
    if (ordId == null) {
      throw new core.ArgumentError("Parameter ordId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/accounts/' +
        commons.Escaper.ecapeVariable('$acctId') +
        '/orders/' +
        commons.Escaper.ecapeVariable('$ordId') +
        '/transactions';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BillingTransactionList.fromJson(data));
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
  /// [transId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransaction> updateTransaction(
      BillingTransaction request,
      core.String svcProviderId,
      core.String custId,
      core.String acctId,
      core.String transId,
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
    if (transId == null) {
      throw new core.ArgumentError("Parameter transId is required.");
    }
    _queryParams["transId"] = [transId];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/accounts/' +
        commons.Escaper.ecapeVariable('$acctId') +
        '/transactions';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BillingTransaction.fromJson(data));
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
  /// [invId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransactionList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransactionList> updateTransactionForInvoice(
      BillingTransactionList request,
      core.String svcProviderId,
      core.String custId,
      core.String acctId,
      core.String invId,
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
    if (invId == null) {
      throw new core.ArgumentError("Parameter invId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/accounts/' +
        commons.Escaper.ecapeVariable('$acctId') +
        '/invoices/' +
        commons.Escaper.ecapeVariable('$invId') +
        '/transactions';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BillingTransactionList.fromJson(data));
  }
}

class BillingTransaction {
  core.String accountId;
  core.DateTime creationTimestamp;
  core.String customerId;
  core.String invoiceId;
  core.DateTime modificationTimestamp;
  core.String notes;
  core.String reasonDetailId;
  core.String reasonId;
  core.double transactionAmount;
  core.String transactionCurrency;
  core.String transactionId;
  core.String transactionReason;
  core.String transactionStatus;
  core.DateTime transactionTimestamp;
  core.String transactionType;
  core.String version;

  BillingTransaction();

  BillingTransaction.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("invoiceId")) {
      invoiceId = _json["invoiceId"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("notes")) {
      notes = _json["notes"];
    }
    if (_json.containsKey("reasonDetailId")) {
      reasonDetailId = _json["reasonDetailId"];
    }
    if (_json.containsKey("reasonId")) {
      reasonId = _json["reasonId"];
    }
    if (_json.containsKey("transactionAmount")) {
      transactionAmount = _json["transactionAmount"].toDouble();
    }
    if (_json.containsKey("transactionCurrency")) {
      transactionCurrency = _json["transactionCurrency"];
    }
    if (_json.containsKey("transactionId")) {
      transactionId = _json["transactionId"];
    }
    if (_json.containsKey("transactionReason")) {
      transactionReason = _json["transactionReason"];
    }
    if (_json.containsKey("transactionStatus")) {
      transactionStatus = _json["transactionStatus"];
    }
    if (_json.containsKey("transactionTimestamp")) {
      transactionTimestamp = core.DateTime.parse(_json["transactionTimestamp"]);
    }
    if (_json.containsKey("transactionType")) {
      transactionType = _json["transactionType"];
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
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (invoiceId != null) {
      _json["invoiceId"] = invoiceId;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (notes != null) {
      _json["notes"] = notes;
    }
    if (reasonDetailId != null) {
      _json["reasonDetailId"] = reasonDetailId;
    }
    if (reasonId != null) {
      _json["reasonId"] = reasonId;
    }
    if (transactionAmount != null) {
      _json["transactionAmount"] = transactionAmount;
    }
    if (transactionCurrency != null) {
      _json["transactionCurrency"] = transactionCurrency;
    }
    if (transactionId != null) {
      _json["transactionId"] = transactionId;
    }
    if (transactionReason != null) {
      _json["transactionReason"] = transactionReason;
    }
    if (transactionStatus != null) {
      _json["transactionStatus"] = transactionStatus;
    }
    if (transactionTimestamp != null) {
      _json["transactionTimestamp"] = (transactionTimestamp).toIso8601String();
    }
    if (transactionType != null) {
      _json["transactionType"] = transactionType;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class BillingTransactionCollection {
  core.List<BillingTransaction> items;

  BillingTransactionCollection();

  BillingTransactionCollection.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<BillingTransaction>(
              (value) => new BillingTransaction.fromJson(value))
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

class BillingTransactionList {
  core.List<BillingTransaction> transactions;

  BillingTransactionList();

  BillingTransactionList.fromJson(core.Map _json) {
    if (_json.containsKey("transactions")) {
      transactions = (_json["transactions"] as core.List)
          .map<BillingTransaction>(
              (value) => new BillingTransaction.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (transactions != null) {
      _json["transactions"] =
          transactions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
