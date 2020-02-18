// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.invoice.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client invoice/v1';

/// API to access Invoices
class InvoiceApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  InvoiceApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: "invoice/v1/serviceProviders/"})
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
  /// Completes with a [Invoice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invoice> createInvoice(
      Invoice request, core.String svcProviderId, core.String custId,
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
        '/invoices';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Invoice.fromJson(data));
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
  /// Completes with a [InvoiceTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InvoiceTemplate> createInvoiceTemplate(
      InvoiceTemplate request, core.String svcProviderId,
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
        commons.Escaper.ecapeVariable('$svcProviderId') + '/invoices/templates';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new InvoiceTemplate.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [invId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future deleteInvoice(
      core.String svcProviderId, core.String custId, core.String invId,
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
    if (invId == null) {
      throw new core.ArgumentError("Parameter invId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/invoices/' +
        commons.Escaper.ecapeVariable('$invId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [minEndDate] - null
  ///
  /// [maxEndDate] - null
  ///
  /// [filterType] - null
  ///
  /// [filterValue] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InvoiceCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InvoiceCollection> findAllInvoices(core.String svcProviderId,
      core.DateTime minEndDate, core.DateTime maxEndDate,
      {core.String filterType,
      core.List<core.String> filterValue,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if (minEndDate == null) {
      throw new core.ArgumentError("Parameter minEndDate is required.");
    }
    if (maxEndDate == null) {
      throw new core.ArgumentError("Parameter maxEndDate is required.");
    }
    if (filterType != null) {
      _queryParams["filterType"] = [filterType];
    }
    if (filterValue != null) {
      _queryParams["filterValue"] = filterValue;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/invoices/from/' +
        commons.Escaper.ecapeVariable('$minEndDate') +
        '/until/' +
        commons.Escaper.ecapeVariable('$maxEndDate');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new InvoiceCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [startDate] - null
  ///
  /// [endDate] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Invoice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invoice> findCurrentInvoice(core.String svcProviderId,
      core.String custId, core.DateTime startDate, core.DateTime endDate,
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
    if (startDate == null) {
      throw new core.ArgumentError("Parameter startDate is required.");
    }
    if (endDate == null) {
      throw new core.ArgumentError("Parameter endDate is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/invoices/from/' +
        commons.Escaper.ecapeVariable('$startDate') +
        '/until/' +
        commons.Escaper.ecapeVariable('$endDate');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Invoice.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [shortUrlCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Invoice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invoice> findInvoice(
      core.String svcProviderId, core.String shortUrlCode,
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
    if (shortUrlCode == null) {
      throw new core.ArgumentError("Parameter shortUrlCode is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/invoices/' +
        commons.Escaper.ecapeVariable('$shortUrlCode');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Invoice.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [templateName] - null
  ///
  /// [templateVerName] - null
  ///
  /// [invoiceDate] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InvoiceTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InvoiceTemplate> findInvoiceTemplate(core.String svcProviderId,
      {core.String templateName,
      core.String templateVerName,
      core.DateTime invoiceDate,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if (templateName != null) {
      _queryParams["templateName"] = [templateName];
    }
    if (templateVerName != null) {
      _queryParams["templateVerName"] = [templateVerName];
    }
    if (invoiceDate != null) {
      _queryParams["invoiceDate"] = [
        "${(invoiceDate).year.toString().padLeft(4, '0')}-${(invoiceDate).month.toString().padLeft(2, '0')}-${(invoiceDate).day.toString().padLeft(2, '0')}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        commons.Escaper.ecapeVariable('$svcProviderId') + '/invoices/templates';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new InvoiceTemplate.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [invId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Invoice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invoice> getInvoice(
      core.String svcProviderId, core.String custId, core.String invId,
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
    if (invId == null) {
      throw new core.ArgumentError("Parameter invId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/invoices/' +
        commons.Escaper.ecapeVariable('$invId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Invoice.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [templateId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InvoiceTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InvoiceTemplate> getInvoiceTemplate(
      core.String svcProviderId, core.String templateId,
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
    if (templateId == null) {
      throw new core.ArgumentError("Parameter templateId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/invoices/templates/' +
        commons.Escaper.ecapeVariable('$templateId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new InvoiceTemplate.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [invId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Invoice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invoice> updateInvoice(Invoice request,
      core.String svcProviderId, core.String custId, core.String invId,
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
    if (invId == null) {
      throw new core.ArgumentError("Parameter invId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/invoices/' +
        commons.Escaper.ecapeVariable('$invId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Invoice.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [templateId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InvoiceTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InvoiceTemplate> updateInvoiceTemplate(InvoiceTemplate request,
      core.String svcProviderId, core.String templateId,
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
    if (templateId == null) {
      throw new core.ArgumentError("Parameter templateId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/invoices/templates/' +
        commons.Escaper.ecapeVariable('$templateId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new InvoiceTemplate.fromJson(data));
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

class BillingPeriod {
  core.DateTime endDate;
  core.String label;
  core.DateTime startDate;

  BillingPeriod();

  BillingPeriod.fromJson(core.Map _json) {
    if (_json.containsKey("endDate")) {
      endDate = core.DateTime.parse(_json["endDate"]);
    }
    if (_json.containsKey("label")) {
      label = _json["label"];
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
    if (label != null) {
      _json["label"] = label;
    }
    if (startDate != null) {
      _json["startDate"] =
          "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}";
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

class Customer {
  core.bool active;
  core.List<CustomerAddress> addresses;
  core.String businessName;
  ChangeContext changeContext;
  core.List<CustomerContact> contacts;
  core.DateTime creationTimestamp;
  core.String customerId;
  core.bool deleted;
  core.DateTime modificationTimestamp;
  core.String name;
  core.String version;

  Customer();

  Customer.fromJson(core.Map _json) {
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("addresses")) {
      addresses = (_json["addresses"] as core.List)
          .map<CustomerAddress>((value) => new CustomerAddress.fromJson(value))
          .toList();
    }
    if (_json.containsKey("businessName")) {
      businessName = _json["businessName"];
    }
    if (_json.containsKey("changeContext")) {
      changeContext = new ChangeContext.fromJson(_json["changeContext"]);
    }
    if (_json.containsKey("contacts")) {
      contacts = (_json["contacts"] as core.List)
          .map<CustomerContact>((value) => new CustomerContact.fromJson(value))
          .toList();
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
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
    if (addresses != null) {
      _json["addresses"] = addresses.map((value) => (value).toJson()).toList();
    }
    if (businessName != null) {
      _json["businessName"] = businessName;
    }
    if (changeContext != null) {
      _json["changeContext"] = (changeContext).toJson();
    }
    if (contacts != null) {
      _json["contacts"] = contacts.map((value) => (value).toJson()).toList();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class CustomerAddress {
  core.bool active;
  core.String addressId;
  core.String addressLine1;
  core.String addressLine2;
  core.String addressLine3;
  core.String addressType;
  core.String area;
  core.String block;
  core.String building;
  core.String businessName;
  core.String city;
  core.String country;
  core.DateTime creationTimestamp;
  core.bool deleted;
  core.String floor;
  core.String label;
  core.String locality;
  core.DateTime modificationTimestamp;
  core.String postalCode;
  core.bool primary;
  ServiceArea serviceArea;
  core.String serviceAreaId;
  ServicedAddress servicedAddress;
  core.String servicedAddressId;
  core.String state;
  core.String stateCode;
  core.String subLocality;
  core.String unitNumber;
  core.String verificationStatus;
  core.String version;

  CustomerAddress();

  CustomerAddress.fromJson(core.Map _json) {
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("addressId")) {
      addressId = _json["addressId"];
    }
    if (_json.containsKey("addressLine1")) {
      addressLine1 = _json["addressLine1"];
    }
    if (_json.containsKey("addressLine2")) {
      addressLine2 = _json["addressLine2"];
    }
    if (_json.containsKey("addressLine3")) {
      addressLine3 = _json["addressLine3"];
    }
    if (_json.containsKey("addressType")) {
      addressType = _json["addressType"];
    }
    if (_json.containsKey("area")) {
      area = _json["area"];
    }
    if (_json.containsKey("block")) {
      block = _json["block"];
    }
    if (_json.containsKey("building")) {
      building = _json["building"];
    }
    if (_json.containsKey("businessName")) {
      businessName = _json["businessName"];
    }
    if (_json.containsKey("city")) {
      city = _json["city"];
    }
    if (_json.containsKey("country")) {
      country = _json["country"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("floor")) {
      floor = _json["floor"];
    }
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("locality")) {
      locality = _json["locality"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("postalCode")) {
      postalCode = _json["postalCode"];
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("serviceArea")) {
      serviceArea = new ServiceArea.fromJson(_json["serviceArea"]);
    }
    if (_json.containsKey("serviceAreaId")) {
      serviceAreaId = _json["serviceAreaId"];
    }
    if (_json.containsKey("servicedAddress")) {
      servicedAddress = new ServicedAddress.fromJson(_json["servicedAddress"]);
    }
    if (_json.containsKey("servicedAddressId")) {
      servicedAddressId = _json["servicedAddressId"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateCode")) {
      stateCode = _json["stateCode"];
    }
    if (_json.containsKey("subLocality")) {
      subLocality = _json["subLocality"];
    }
    if (_json.containsKey("unitNumber")) {
      unitNumber = _json["unitNumber"];
    }
    if (_json.containsKey("verificationStatus")) {
      verificationStatus = _json["verificationStatus"];
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
    if (addressId != null) {
      _json["addressId"] = addressId;
    }
    if (addressLine1 != null) {
      _json["addressLine1"] = addressLine1;
    }
    if (addressLine2 != null) {
      _json["addressLine2"] = addressLine2;
    }
    if (addressLine3 != null) {
      _json["addressLine3"] = addressLine3;
    }
    if (addressType != null) {
      _json["addressType"] = addressType;
    }
    if (area != null) {
      _json["area"] = area;
    }
    if (block != null) {
      _json["block"] = block;
    }
    if (building != null) {
      _json["building"] = building;
    }
    if (businessName != null) {
      _json["businessName"] = businessName;
    }
    if (city != null) {
      _json["city"] = city;
    }
    if (country != null) {
      _json["country"] = country;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (floor != null) {
      _json["floor"] = floor;
    }
    if (label != null) {
      _json["label"] = label;
    }
    if (locality != null) {
      _json["locality"] = locality;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (postalCode != null) {
      _json["postalCode"] = postalCode;
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (serviceArea != null) {
      _json["serviceArea"] = (serviceArea).toJson();
    }
    if (serviceAreaId != null) {
      _json["serviceAreaId"] = serviceAreaId;
    }
    if (servicedAddress != null) {
      _json["servicedAddress"] = (servicedAddress).toJson();
    }
    if (servicedAddressId != null) {
      _json["servicedAddressId"] = servicedAddressId;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateCode != null) {
      _json["stateCode"] = stateCode;
    }
    if (subLocality != null) {
      _json["subLocality"] = subLocality;
    }
    if (unitNumber != null) {
      _json["unitNumber"] = unitNumber;
    }
    if (verificationStatus != null) {
      _json["verificationStatus"] = verificationStatus;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class CustomerContact {
  core.bool active;
  core.String contactId;
  core.DateTime creationTimestamp;
  core.bool deleted;
  core.List<EmailAddress> emailAddresses;
  core.String label;
  core.DateTime modificationTimestamp;
  core.String name;
  core.List<PhoneNumber> phoneNumbers;
  core.bool primary;
  core.String verificationStatus;
  core.String version;

  CustomerContact();

  CustomerContact.fromJson(core.Map _json) {
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("contactId")) {
      contactId = _json["contactId"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("emailAddresses")) {
      emailAddresses = (_json["emailAddresses"] as core.List)
          .map<EmailAddress>((value) => new EmailAddress.fromJson(value))
          .toList();
    }
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("phoneNumbers")) {
      phoneNumbers = (_json["phoneNumbers"] as core.List)
          .map<PhoneNumber>((value) => new PhoneNumber.fromJson(value))
          .toList();
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("verificationStatus")) {
      verificationStatus = _json["verificationStatus"];
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
    if (contactId != null) {
      _json["contactId"] = contactId;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (emailAddresses != null) {
      _json["emailAddresses"] =
          emailAddresses.map((value) => (value).toJson()).toList();
    }
    if (label != null) {
      _json["label"] = label;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (phoneNumbers != null) {
      _json["phoneNumbers"] =
          phoneNumbers.map((value) => (value).toJson()).toList();
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (verificationStatus != null) {
      _json["verificationStatus"] = verificationStatus;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class EmailAddress {
  core.bool active;
  core.String address;
  core.bool deleted;
  core.String label;
  core.bool primary;
  core.String verificationStatus;

  EmailAddress();

  EmailAddress.fromJson(core.Map _json) {
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("address")) {
      address = _json["address"];
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("verificationStatus")) {
      verificationStatus = _json["verificationStatus"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (active != null) {
      _json["active"] = active;
    }
    if (address != null) {
      _json["address"] = address;
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (label != null) {
      _json["label"] = label;
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (verificationStatus != null) {
      _json["verificationStatus"] = verificationStatus;
    }
    return _json;
  }
}

class Invoice {
  core.String accountName;
  core.List<InvoiceAttribute> attributes;
  BillingAddress billingAddress;
  BillingPeriod billingPeriod;
  core.DateTime creationTimestamp;
  Customer customer;
  core.String customerId;
  Amount dueAmount;
  core.DateTime dueDate;
  core.DateTime invoiceDate;
  core.String invoiceId;
  core.String invoiceNumber;
  core.String invoiceState;
  core.String invoiceStatus;
  core.String invoiceType;
  core.List<InvoiceLineItem> lineItems;
  core.DateTime modificationTimestamp;
  core.String paymentStatus;
  core.String shortUrlCode;
  core.String version;

  Invoice();

  Invoice.fromJson(core.Map _json) {
    if (_json.containsKey("accountName")) {
      accountName = _json["accountName"];
    }
    if (_json.containsKey("attributes")) {
      attributes = (_json["attributes"] as core.List)
          .map<InvoiceAttribute>(
              (value) => new InvoiceAttribute.fromJson(value))
          .toList();
    }
    if (_json.containsKey("billingAddress")) {
      billingAddress = new BillingAddress.fromJson(_json["billingAddress"]);
    }
    if (_json.containsKey("billingPeriod")) {
      billingPeriod = new BillingPeriod.fromJson(_json["billingPeriod"]);
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("customer")) {
      customer = new Customer.fromJson(_json["customer"]);
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("dueAmount")) {
      dueAmount = new Amount.fromJson(_json["dueAmount"]);
    }
    if (_json.containsKey("dueDate")) {
      dueDate = core.DateTime.parse(_json["dueDate"]);
    }
    if (_json.containsKey("invoiceDate")) {
      invoiceDate = core.DateTime.parse(_json["invoiceDate"]);
    }
    if (_json.containsKey("invoiceId")) {
      invoiceId = _json["invoiceId"];
    }
    if (_json.containsKey("invoiceNumber")) {
      invoiceNumber = _json["invoiceNumber"];
    }
    if (_json.containsKey("invoiceState")) {
      invoiceState = _json["invoiceState"];
    }
    if (_json.containsKey("invoiceStatus")) {
      invoiceStatus = _json["invoiceStatus"];
    }
    if (_json.containsKey("invoiceType")) {
      invoiceType = _json["invoiceType"];
    }
    if (_json.containsKey("lineItems")) {
      lineItems = (_json["lineItems"] as core.List)
          .map<InvoiceLineItem>((value) => new InvoiceLineItem.fromJson(value))
          .toList();
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("paymentStatus")) {
      paymentStatus = _json["paymentStatus"];
    }
    if (_json.containsKey("shortUrlCode")) {
      shortUrlCode = _json["shortUrlCode"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (accountName != null) {
      _json["accountName"] = accountName;
    }
    if (attributes != null) {
      _json["attributes"] =
          attributes.map((value) => (value).toJson()).toList();
    }
    if (billingAddress != null) {
      _json["billingAddress"] = (billingAddress).toJson();
    }
    if (billingPeriod != null) {
      _json["billingPeriod"] = (billingPeriod).toJson();
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (customer != null) {
      _json["customer"] = (customer).toJson();
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (dueAmount != null) {
      _json["dueAmount"] = (dueAmount).toJson();
    }
    if (dueDate != null) {
      _json["dueDate"] =
          "${(dueDate).year.toString().padLeft(4, '0')}-${(dueDate).month.toString().padLeft(2, '0')}-${(dueDate).day.toString().padLeft(2, '0')}";
    }
    if (invoiceDate != null) {
      _json["invoiceDate"] =
          "${(invoiceDate).year.toString().padLeft(4, '0')}-${(invoiceDate).month.toString().padLeft(2, '0')}-${(invoiceDate).day.toString().padLeft(2, '0')}";
    }
    if (invoiceId != null) {
      _json["invoiceId"] = invoiceId;
    }
    if (invoiceNumber != null) {
      _json["invoiceNumber"] = invoiceNumber;
    }
    if (invoiceState != null) {
      _json["invoiceState"] = invoiceState;
    }
    if (invoiceStatus != null) {
      _json["invoiceStatus"] = invoiceStatus;
    }
    if (invoiceType != null) {
      _json["invoiceType"] = invoiceType;
    }
    if (lineItems != null) {
      _json["lineItems"] = lineItems.map((value) => (value).toJson()).toList();
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (paymentStatus != null) {
      _json["paymentStatus"] = paymentStatus;
    }
    if (shortUrlCode != null) {
      _json["shortUrlCode"] = shortUrlCode;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class InvoiceAttribute {
  core.String attributeType;
  core.String attributeValue;
  core.String entityCode;
  core.String entityId;
  core.String systemName;

  InvoiceAttribute();

  InvoiceAttribute.fromJson(core.Map _json) {
    if (_json.containsKey("attributeType")) {
      attributeType = _json["attributeType"];
    }
    if (_json.containsKey("attributeValue")) {
      attributeValue = _json["attributeValue"];
    }
    if (_json.containsKey("entityCode")) {
      entityCode = _json["entityCode"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("systemName")) {
      systemName = _json["systemName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (attributeType != null) {
      _json["attributeType"] = attributeType;
    }
    if (attributeValue != null) {
      _json["attributeValue"] = attributeValue;
    }
    if (entityCode != null) {
      _json["entityCode"] = entityCode;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (systemName != null) {
      _json["systemName"] = systemName;
    }
    return _json;
  }
}

class InvoiceCollection {
  core.List<Invoice> items;

  InvoiceCollection();

  InvoiceCollection.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Invoice>((value) => new Invoice.fromJson(value))
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

class InvoiceLineItem {
  core.double amount;
  core.List<InvoiceAttribute> attributes;
  core.String category;
  core.String countLabel;
  core.DateTime creationTimestamp;
  core.String currency;
  core.String description;
  core.DateTime itemDate;
  core.int itemOrder;
  core.String lineItemId;
  core.DateTime modificationTimestamp;
  Pricing pricing;
  core.double quantity;
  core.double quantityCount;
  core.String quantityUnit;
  core.String title;
  core.String version;

  InvoiceLineItem();

  InvoiceLineItem.fromJson(core.Map _json) {
    if (_json.containsKey("amount")) {
      amount = _json["amount"].toDouble();
    }
    if (_json.containsKey("attributes")) {
      attributes = (_json["attributes"] as core.List)
          .map<InvoiceAttribute>(
              (value) => new InvoiceAttribute.fromJson(value))
          .toList();
    }
    if (_json.containsKey("category")) {
      category = _json["category"];
    }
    if (_json.containsKey("countLabel")) {
      countLabel = _json["countLabel"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("currency")) {
      currency = _json["currency"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("itemDate")) {
      itemDate = core.DateTime.parse(_json["itemDate"]);
    }
    if (_json.containsKey("itemOrder")) {
      itemOrder = _json["itemOrder"];
    }
    if (_json.containsKey("lineItemId")) {
      lineItemId = _json["lineItemId"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("pricing")) {
      pricing = new Pricing.fromJson(_json["pricing"]);
    }
    if (_json.containsKey("quantity")) {
      quantity = _json["quantity"].toDouble();
    }
    if (_json.containsKey("quantityCount")) {
      quantityCount = _json["quantityCount"].toDouble();
    }
    if (_json.containsKey("quantityUnit")) {
      quantityUnit = _json["quantityUnit"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
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
    if (attributes != null) {
      _json["attributes"] =
          attributes.map((value) => (value).toJson()).toList();
    }
    if (category != null) {
      _json["category"] = category;
    }
    if (countLabel != null) {
      _json["countLabel"] = countLabel;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (currency != null) {
      _json["currency"] = currency;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (itemDate != null) {
      _json["itemDate"] =
          "${(itemDate).year.toString().padLeft(4, '0')}-${(itemDate).month.toString().padLeft(2, '0')}-${(itemDate).day.toString().padLeft(2, '0')}";
    }
    if (itemOrder != null) {
      _json["itemOrder"] = itemOrder;
    }
    if (lineItemId != null) {
      _json["lineItemId"] = lineItemId;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (pricing != null) {
      _json["pricing"] = (pricing).toJson();
    }
    if (quantity != null) {
      _json["quantity"] = quantity;
    }
    if (quantityCount != null) {
      _json["quantityCount"] = quantityCount;
    }
    if (quantityUnit != null) {
      _json["quantityUnit"] = quantityUnit;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class InvoiceTemplate {
  core.String content;
  core.DateTime creationTimestamp;
  core.bool default_;
  core.DateTime effectiveFromDate;
  core.DateTime effectiveUntilDate;
  core.String engineName;
  core.String invoiceTemplateId;
  core.DateTime modificationTimestamp;
  core.String name;
  core.String version;
  core.String versionName;

  InvoiceTemplate();

  InvoiceTemplate.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("default")) {
      default_ = _json["default"];
    }
    if (_json.containsKey("effectiveFromDate")) {
      effectiveFromDate = core.DateTime.parse(_json["effectiveFromDate"]);
    }
    if (_json.containsKey("effectiveUntilDate")) {
      effectiveUntilDate = core.DateTime.parse(_json["effectiveUntilDate"]);
    }
    if (_json.containsKey("engineName")) {
      engineName = _json["engineName"];
    }
    if (_json.containsKey("invoiceTemplateId")) {
      invoiceTemplateId = _json["invoiceTemplateId"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
    if (_json.containsKey("versionName")) {
      versionName = _json["versionName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (default_ != null) {
      _json["default"] = default_;
    }
    if (effectiveFromDate != null) {
      _json["effectiveFromDate"] =
          "${(effectiveFromDate).year.toString().padLeft(4, '0')}-${(effectiveFromDate).month.toString().padLeft(2, '0')}-${(effectiveFromDate).day.toString().padLeft(2, '0')}";
    }
    if (effectiveUntilDate != null) {
      _json["effectiveUntilDate"] =
          "${(effectiveUntilDate).year.toString().padLeft(4, '0')}-${(effectiveUntilDate).month.toString().padLeft(2, '0')}-${(effectiveUntilDate).day.toString().padLeft(2, '0')}";
    }
    if (engineName != null) {
      _json["engineName"] = engineName;
    }
    if (invoiceTemplateId != null) {
      _json["invoiceTemplateId"] = invoiceTemplateId;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (version != null) {
      _json["version"] = version;
    }
    if (versionName != null) {
      _json["versionName"] = versionName;
    }
    return _json;
  }
}

class PhoneNumber {
  core.bool active;
  core.bool deleted;
  core.String label;
  core.String number;
  core.bool primary;
  core.String verificationStatus;

  PhoneNumber();

  PhoneNumber.fromJson(core.Map _json) {
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("number")) {
      number = _json["number"];
    }
    if (_json.containsKey("primary")) {
      primary = _json["primary"];
    }
    if (_json.containsKey("verificationStatus")) {
      verificationStatus = _json["verificationStatus"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (active != null) {
      _json["active"] = active;
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (label != null) {
      _json["label"] = label;
    }
    if (number != null) {
      _json["number"] = number;
    }
    if (primary != null) {
      _json["primary"] = primary;
    }
    if (verificationStatus != null) {
      _json["verificationStatus"] = verificationStatus;
    }
    return _json;
  }
}

class Pricing {
  core.String currency;
  core.double price;
  core.double pricingQuantity;
  core.String pricingUnit;

  Pricing();

  Pricing.fromJson(core.Map _json) {
    if (_json.containsKey("currency")) {
      currency = _json["currency"];
    }
    if (_json.containsKey("price")) {
      price = _json["price"].toDouble();
    }
    if (_json.containsKey("pricingQuantity")) {
      pricingQuantity = _json["pricingQuantity"].toDouble();
    }
    if (_json.containsKey("pricingUnit")) {
      pricingUnit = _json["pricingUnit"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (currency != null) {
      _json["currency"] = currency;
    }
    if (price != null) {
      _json["price"] = price;
    }
    if (pricingQuantity != null) {
      _json["pricingQuantity"] = pricingQuantity;
    }
    if (pricingUnit != null) {
      _json["pricingUnit"] = pricingUnit;
    }
    return _json;
  }
}

class ServiceArea {
  core.String addressLine1;
  core.String addressLine2;
  core.String addressLine3;
  ChangeContext changeContext;
  core.String city;
  core.String country;
  core.DateTime creationTimestamp;
  core.String fullName;
  core.DateTime modificationTimestamp;
  core.String name;
  core.String parentServiceAreaId;
  core.String parentTreeId;
  core.String postalCode;
  core.String serviceAreaId;
  core.String serviceProviderId;
  core.String state;
  core.String stateCode;
  core.String universalServiceAreaId;
  core.String version;

  ServiceArea();

  ServiceArea.fromJson(core.Map _json) {
    if (_json.containsKey("addressLine1")) {
      addressLine1 = _json["addressLine1"];
    }
    if (_json.containsKey("addressLine2")) {
      addressLine2 = _json["addressLine2"];
    }
    if (_json.containsKey("addressLine3")) {
      addressLine3 = _json["addressLine3"];
    }
    if (_json.containsKey("changeContext")) {
      changeContext = new ChangeContext.fromJson(_json["changeContext"]);
    }
    if (_json.containsKey("city")) {
      city = _json["city"];
    }
    if (_json.containsKey("country")) {
      country = _json["country"];
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("fullName")) {
      fullName = _json["fullName"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parentServiceAreaId")) {
      parentServiceAreaId = _json["parentServiceAreaId"];
    }
    if (_json.containsKey("parentTreeId")) {
      parentTreeId = _json["parentTreeId"];
    }
    if (_json.containsKey("postalCode")) {
      postalCode = _json["postalCode"];
    }
    if (_json.containsKey("serviceAreaId")) {
      serviceAreaId = _json["serviceAreaId"];
    }
    if (_json.containsKey("serviceProviderId")) {
      serviceProviderId = _json["serviceProviderId"];
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("stateCode")) {
      stateCode = _json["stateCode"];
    }
    if (_json.containsKey("universalServiceAreaId")) {
      universalServiceAreaId = _json["universalServiceAreaId"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
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
    if (changeContext != null) {
      _json["changeContext"] = (changeContext).toJson();
    }
    if (city != null) {
      _json["city"] = city;
    }
    if (country != null) {
      _json["country"] = country;
    }
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (fullName != null) {
      _json["fullName"] = fullName;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parentServiceAreaId != null) {
      _json["parentServiceAreaId"] = parentServiceAreaId;
    }
    if (parentTreeId != null) {
      _json["parentTreeId"] = parentTreeId;
    }
    if (postalCode != null) {
      _json["postalCode"] = postalCode;
    }
    if (serviceAreaId != null) {
      _json["serviceAreaId"] = serviceAreaId;
    }
    if (serviceProviderId != null) {
      _json["serviceProviderId"] = serviceProviderId;
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (stateCode != null) {
      _json["stateCode"] = stateCode;
    }
    if (universalServiceAreaId != null) {
      _json["universalServiceAreaId"] = universalServiceAreaId;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class ServicedAddress {
  core.String businessName;
  core.String floor;
  core.String houseNumber;
  ServiceArea serviceArea;
  core.String servicedAddressId;

  ServicedAddress();

  ServicedAddress.fromJson(core.Map _json) {
    if (_json.containsKey("businessName")) {
      businessName = _json["businessName"];
    }
    if (_json.containsKey("floor")) {
      floor = _json["floor"];
    }
    if (_json.containsKey("houseNumber")) {
      houseNumber = _json["houseNumber"];
    }
    if (_json.containsKey("serviceArea")) {
      serviceArea = new ServiceArea.fromJson(_json["serviceArea"]);
    }
    if (_json.containsKey("servicedAddressId")) {
      servicedAddressId = _json["servicedAddressId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (businessName != null) {
      _json["businessName"] = businessName;
    }
    if (floor != null) {
      _json["floor"] = floor;
    }
    if (houseNumber != null) {
      _json["houseNumber"] = houseNumber;
    }
    if (serviceArea != null) {
      _json["serviceArea"] = (serviceArea).toJson();
    }
    if (servicedAddressId != null) {
      _json["servicedAddressId"] = servicedAddressId;
    }
    return _json;
  }
}
