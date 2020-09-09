// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.payment.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client payment/v1';

/// API to access Payments
class PaymentApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  PaymentApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: "payment/v1/serviceProviders/"})
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
  /// Completes with a [Payment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payment> createAssignedPayment(Payment request,
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
        '/payments';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Payment.fromJson(data));
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
  /// Completes with a [Payment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payment> createPayment(
      Payment request, core.String svcProviderId,
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

    _url = commons.Escaper.ecapeVariable('$svcProviderId') + '/payments';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Payment.fromJson(data));
  }

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
  /// Completes with a [PaymentAttempt].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PaymentAttempt> createPaymentAttempt(
      PaymentAttempt request, core.String svcProviderId, core.String custId,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/payments/attempts';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PaymentAttempt.fromJson(data));
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
  /// Completes with a [PaymentProviderConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PaymentProviderConfig> createPaymentProviderConfig(
      PaymentProviderConfig request, core.String svcProviderId,
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

    _url =
        commons.Escaper.ecapeVariable('$svcProviderId') + '/payments/configs';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PaymentProviderConfig.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [extId] - null
  ///
  /// [startDt] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PaymentCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PaymentCollection> findAllPayments(
      core.String svcProviderId, core.String extId, core.DateTime startDt,
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
    if (extId == null) {
      throw new core.ArgumentError("Parameter extId is required.");
    }
    if (startDt == null) {
      throw new core.ArgumentError("Parameter startDt is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/payments/externalIds/' +
        commons.Escaper.ecapeVariable('$extId') +
        '/after/' +
        commons.Escaper.ecapeVariable('$startDt');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PaymentCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [acctId] - null
  ///
  /// [startDt] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PaymentCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PaymentCollection> findPaymentsForCustomer(
      core.String svcProviderId,
      core.String custId,
      core.String acctId,
      core.DateTime startDt,
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
    if (startDt == null) {
      throw new core.ArgumentError("Parameter startDt is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/accounts/' +
        commons.Escaper.ecapeVariable('$acctId') +
        '/payments/after/' +
        commons.Escaper.ecapeVariable('$startDt');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PaymentCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [pymtId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Payment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payment> getPayment(
      core.String svcProviderId, core.String pymtId,
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
    if (pymtId == null) {
      throw new core.ArgumentError("Parameter pymtId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/payments/' +
        commons.Escaper.ecapeVariable('$pymtId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Payment.fromJson(data));
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
  /// [pymtId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Payment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payment> updateAssignedPayment(
      Payment request,
      core.String svcProviderId,
      core.String custId,
      core.String acctId,
      core.String pymtId,
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
    if (pymtId == null) {
      throw new core.ArgumentError("Parameter pymtId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/accounts/' +
        commons.Escaper.ecapeVariable('$acctId') +
        '/payments/' +
        commons.Escaper.ecapeVariable('$pymtId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Payment.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [pymtId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Payment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payment> updatePayment(
      Payment request, core.String svcProviderId, core.String pymtId,
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
    if (pymtId == null) {
      throw new core.ArgumentError("Parameter pymtId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/payments/' +
        commons.Escaper.ecapeVariable('$pymtId');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Payment.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [attmptId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PaymentAttempt].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PaymentAttempt> verifyPaymentAttempt(PaymentAttempt request,
      core.String svcProviderId, core.String custId, core.String attmptId,
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
    if (attmptId == null) {
      throw new core.ArgumentError("Parameter attmptId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/payments/attempts/' +
        commons.Escaper.ecapeVariable('$attmptId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PaymentAttempt.fromJson(data));
  }
}

class Payment {
  core.String accountId;
  core.String additionalInfo;
  core.double amount;
  core.DateTime creationTimestamp;
  core.String currency;
  core.String customerId;
  core.String depositAccount;
  core.String depositAccountProvider;
  core.String emailAddress;
  core.String externalPaymentId;
  core.String merchantTransactionId;
  core.DateTime modificationTimestamp;
  core.String paymentId;
  core.String paymentMethod;
  core.String paymentMethodProvider;
  core.String paymentSource;
  core.String paymentSourceName;
  core.String paymentStatus;
  core.DateTime paymentTimestamp;
  core.String phoneNumber;
  core.String referenceNumber;
  core.String senderAccount;
  core.String senderAccountProvider;
  core.String version;

  Payment();

  Payment.fromJson(core.Map _json) {
    if (_json.containsKey("accountId")) {
      accountId = _json["accountId"];
    }
    if (_json.containsKey("additionalInfo")) {
      additionalInfo = _json["additionalInfo"];
    }
    if (_json.containsKey("amount")) {
      amount = _json["amount"].toDouble();
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("currency")) {
      currency = _json["currency"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("depositAccount")) {
      depositAccount = _json["depositAccount"];
    }
    if (_json.containsKey("depositAccountProvider")) {
      depositAccountProvider = _json["depositAccountProvider"];
    }
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
    if (_json.containsKey("externalPaymentId")) {
      externalPaymentId = _json["externalPaymentId"];
    }
    if (_json.containsKey("merchantTransactionId")) {
      merchantTransactionId = _json["merchantTransactionId"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("paymentId")) {
      paymentId = _json["paymentId"];
    }
    if (_json.containsKey("paymentMethod")) {
      paymentMethod = _json["paymentMethod"];
    }
    if (_json.containsKey("paymentMethodProvider")) {
      paymentMethodProvider = _json["paymentMethodProvider"];
    }
    if (_json.containsKey("paymentSource")) {
      paymentSource = _json["paymentSource"];
    }
    if (_json.containsKey("paymentSourceName")) {
      paymentSourceName = _json["paymentSourceName"];
    }
    if (_json.containsKey("paymentStatus")) {
      paymentStatus = _json["paymentStatus"];
    }
    if (_json.containsKey("paymentTimestamp")) {
      paymentTimestamp = core.DateTime.parse(_json["paymentTimestamp"]);
    }
    if (_json.containsKey("phoneNumber")) {
      phoneNumber = _json["phoneNumber"];
    }
    if (_json.containsKey("referenceNumber")) {
      referenceNumber = _json["referenceNumber"];
    }
    if (_json.containsKey("senderAccount")) {
      senderAccount = _json["senderAccount"];
    }
    if (_json.containsKey("senderAccountProvider")) {
      senderAccountProvider = _json["senderAccountProvider"];
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
    if (additionalInfo != null) {
      _json["additionalInfo"] = additionalInfo;
    }
    if (amount != null) {
      _json["amount"] = amount;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (currency != null) {
      _json["currency"] = currency;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (depositAccount != null) {
      _json["depositAccount"] = depositAccount;
    }
    if (depositAccountProvider != null) {
      _json["depositAccountProvider"] = depositAccountProvider;
    }
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    if (externalPaymentId != null) {
      _json["externalPaymentId"] = externalPaymentId;
    }
    if (merchantTransactionId != null) {
      _json["merchantTransactionId"] = merchantTransactionId;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (paymentId != null) {
      _json["paymentId"] = paymentId;
    }
    if (paymentMethod != null) {
      _json["paymentMethod"] = paymentMethod;
    }
    if (paymentMethodProvider != null) {
      _json["paymentMethodProvider"] = paymentMethodProvider;
    }
    if (paymentSource != null) {
      _json["paymentSource"] = paymentSource;
    }
    if (paymentSourceName != null) {
      _json["paymentSourceName"] = paymentSourceName;
    }
    if (paymentStatus != null) {
      _json["paymentStatus"] = paymentStatus;
    }
    if (paymentTimestamp != null) {
      _json["paymentTimestamp"] = (paymentTimestamp).toIso8601String();
    }
    if (phoneNumber != null) {
      _json["phoneNumber"] = phoneNumber;
    }
    if (referenceNumber != null) {
      _json["referenceNumber"] = referenceNumber;
    }
    if (senderAccount != null) {
      _json["senderAccount"] = senderAccount;
    }
    if (senderAccountProvider != null) {
      _json["senderAccountProvider"] = senderAccountProvider;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class PaymentAttempt {
  core.double amount;
  core.String apiKey;
  core.String attemptId;
  core.DateTime creationTimestamp;
  core.String currency;
  core.String customerId;
  core.String externalPaymentId;
  core.String merchantTransactionId;
  core.DateTime modificationTimestamp;
  core.String paymentMethod;
  core.String paymentMethodName;
  core.String paymentProvider;
  core.String paymentProviderName;
  core.String paymentSignature;
  core.String paymentStatus;
  core.DateTime paymentTimestamp;
  core.String providerAttemptId;
  core.String requestHash;
  core.String serviceProviderId;
  core.bool verified;
  core.String version;

  PaymentAttempt();

  PaymentAttempt.fromJson(core.Map _json) {
    if (_json.containsKey("amount")) {
      amount = _json["amount"].toDouble();
    }
    if (_json.containsKey("apiKey")) {
      apiKey = _json["apiKey"];
    }
    if (_json.containsKey("attemptId")) {
      attemptId = _json["attemptId"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("currency")) {
      currency = _json["currency"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("externalPaymentId")) {
      externalPaymentId = _json["externalPaymentId"];
    }
    if (_json.containsKey("merchantTransactionId")) {
      merchantTransactionId = _json["merchantTransactionId"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("paymentMethod")) {
      paymentMethod = _json["paymentMethod"];
    }
    if (_json.containsKey("paymentMethodName")) {
      paymentMethodName = _json["paymentMethodName"];
    }
    if (_json.containsKey("paymentProvider")) {
      paymentProvider = _json["paymentProvider"];
    }
    if (_json.containsKey("paymentProviderName")) {
      paymentProviderName = _json["paymentProviderName"];
    }
    if (_json.containsKey("paymentSignature")) {
      paymentSignature = _json["paymentSignature"];
    }
    if (_json.containsKey("paymentStatus")) {
      paymentStatus = _json["paymentStatus"];
    }
    if (_json.containsKey("paymentTimestamp")) {
      paymentTimestamp = core.DateTime.parse(_json["paymentTimestamp"]);
    }
    if (_json.containsKey("providerAttemptId")) {
      providerAttemptId = _json["providerAttemptId"];
    }
    if (_json.containsKey("requestHash")) {
      requestHash = _json["requestHash"];
    }
    if (_json.containsKey("serviceProviderId")) {
      serviceProviderId = _json["serviceProviderId"];
    }
    if (_json.containsKey("verified")) {
      verified = _json["verified"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (amount != null) {
      _json["amount"] = amount;
    }
    if (apiKey != null) {
      _json["apiKey"] = apiKey;
    }
    if (attemptId != null) {
      _json["attemptId"] = attemptId;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (currency != null) {
      _json["currency"] = currency;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (externalPaymentId != null) {
      _json["externalPaymentId"] = externalPaymentId;
    }
    if (merchantTransactionId != null) {
      _json["merchantTransactionId"] = merchantTransactionId;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (paymentMethod != null) {
      _json["paymentMethod"] = paymentMethod;
    }
    if (paymentMethodName != null) {
      _json["paymentMethodName"] = paymentMethodName;
    }
    if (paymentProvider != null) {
      _json["paymentProvider"] = paymentProvider;
    }
    if (paymentProviderName != null) {
      _json["paymentProviderName"] = paymentProviderName;
    }
    if (paymentSignature != null) {
      _json["paymentSignature"] = paymentSignature;
    }
    if (paymentStatus != null) {
      _json["paymentStatus"] = paymentStatus;
    }
    if (paymentTimestamp != null) {
      _json["paymentTimestamp"] = (paymentTimestamp).toIso8601String();
    }
    if (providerAttemptId != null) {
      _json["providerAttemptId"] = providerAttemptId;
    }
    if (requestHash != null) {
      _json["requestHash"] = requestHash;
    }
    if (serviceProviderId != null) {
      _json["serviceProviderId"] = serviceProviderId;
    }
    if (verified != null) {
      _json["verified"] = verified;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class PaymentCollection {
  core.List<Payment> items;

  PaymentCollection();

  PaymentCollection.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Payment>((value) => new Payment.fromJson(value))
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

class PaymentProviderConfig {
  core.String apiKey;
  core.String apiSecret;
  core.String configId;
  core.DateTime creationTimestamp;
  core.String initiatorName;
  core.DateTime modificationTimestamp;
  core.String providerName;
  core.String serviceProviderId;
  core.String version;

  PaymentProviderConfig();

  PaymentProviderConfig.fromJson(core.Map _json) {
    if (_json.containsKey("apiKey")) {
      apiKey = _json["apiKey"];
    }
    if (_json.containsKey("apiSecret")) {
      apiSecret = _json["apiSecret"];
    }
    if (_json.containsKey("configId")) {
      configId = _json["configId"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("initiatorName")) {
      initiatorName = _json["initiatorName"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("providerName")) {
      providerName = _json["providerName"];
    }
    if (_json.containsKey("serviceProviderId")) {
      serviceProviderId = _json["serviceProviderId"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (apiKey != null) {
      _json["apiKey"] = apiKey;
    }
    if (apiSecret != null) {
      _json["apiSecret"] = apiSecret;
    }
    if (configId != null) {
      _json["configId"] = configId;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (initiatorName != null) {
      _json["initiatorName"] = initiatorName;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (providerName != null) {
      _json["providerName"] = providerName;
    }
    if (serviceProviderId != null) {
      _json["serviceProviderId"] = serviceProviderId;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}
