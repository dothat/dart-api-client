// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.subscription.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client subscription/v1';

/// API to access Subscriptions
class SubscriptionApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  SubscriptionApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: "subscription/v1/serviceProviders/"})
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
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> createSubscription(
      Subscription request, core.String svcProviderId, core.String custId,
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
        '/subscriptions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [subId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future deleteSubscription(
      core.String svcProviderId, core.String custId, core.String subId,
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
    if (subId == null) {
      throw new core.ArgumentError("Parameter subId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/subscriptions/' +
        commons.Escaper.ecapeVariable('$subId');

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
  /// [custId] - null
  ///
  /// [startDate] - null
  ///
  /// [endDate] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionCollection> findSubscriptionsForCustomer(
      core.String svcProviderId,
      core.String custId,
      core.DateTime startDate,
      core.DateTime endDate,
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
    _queryParams["startDate"] = [
      "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}"
    ];
    if (endDate == null) {
      throw new core.ArgumentError("Parameter endDate is required.");
    }
    _queryParams["endDate"] = [
      "${(endDate).year.toString().padLeft(4, '0')}-${(endDate).month.toString().padLeft(2, '0')}-${(endDate).day.toString().padLeft(2, '0')}"
    ];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/subscriptions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SubscriptionCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [startDate] - null
  ///
  /// [endDate] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SubscriptionCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SubscriptionCollection> findSubscriptionsForServiceProvider(
      core.String svcProviderId, core.DateTime startDate, core.DateTime endDate,
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
    if (startDate == null) {
      throw new core.ArgumentError("Parameter startDate is required.");
    }
    _queryParams["startDate"] = [
      "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}"
    ];
    if (endDate == null) {
      throw new core.ArgumentError("Parameter endDate is required.");
    }
    _queryParams["endDate"] = [
      "${(endDate).year.toString().padLeft(4, '0')}-${(endDate).month.toString().padLeft(2, '0')}-${(endDate).day.toString().padLeft(2, '0')}"
    ];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') + '/subscriptions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SubscriptionCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [subId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> getSubscription(
      core.String svcProviderId, core.String custId, core.String subId,
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
    if (subId == null) {
      throw new core.ArgumentError("Parameter subId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/subscriptions/' +
        commons.Escaper.ecapeVariable('$subId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [subStatus] - null
  /// Possible string values are:
  /// - "PAUSED"
  /// - "ACTIVE"
  ///
  /// [startDate] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> lookupSubscription(core.String svcProviderId,
      core.String custId, core.String subStatus, core.DateTime startDate,
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
    if (subStatus == null) {
      throw new core.ArgumentError("Parameter subStatus is required.");
    }
    if (startDate == null) {
      throw new core.ArgumentError("Parameter startDate is required.");
    }
    _queryParams["startDate"] = [
      "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}"
    ];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/subscriptions/status/' +
        commons.Escaper.ecapeVariable('$subStatus');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [subId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Subscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Subscription> updateSubscription(Subscription request,
      core.String svcProviderId, core.String custId, core.String subId,
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
    if (subId == null) {
      throw new core.ArgumentError("Parameter subId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') +
        '/customers/' +
        commons.Escaper.ecapeVariable('$custId') +
        '/subscriptions/' +
        commons.Escaper.ecapeVariable('$subId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Subscription.fromJson(data));
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

class DeliveryPreference {
  CustomerAddress address;
  core.String customerAddressId;

  DeliveryPreference();

  DeliveryPreference.fromJson(core.Map _json) {
    if (_json.containsKey("address")) {
      address = new CustomerAddress.fromJson(_json["address"]);
    }
    if (_json.containsKey("customerAddressId")) {
      customerAddressId = _json["customerAddressId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (address != null) {
      _json["address"] = (address).toJson();
    }
    if (customerAddressId != null) {
      _json["customerAddressId"] = customerAddressId;
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

class Subscription {
  ChangeContext changeContext;
  core.DateTime creationTimestamp;
  Customer customer;
  core.bool deleted;
  core.DateTime endDate;
  core.String instructionType;
  core.DateTime modificationTimestamp;
  core.DateTime startDate;
  core.String subscriptionId;
  core.List<SubscriptionItem> subscriptionItems;
  core.String subscriptionStatus;
  core.String version;

  Subscription();

  Subscription.fromJson(core.Map _json) {
    if (_json.containsKey("changeContext")) {
      changeContext = new ChangeContext.fromJson(_json["changeContext"]);
    }
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("customer")) {
      customer = new Customer.fromJson(_json["customer"]);
    }
    if (_json.containsKey("deleted")) {
      deleted = _json["deleted"];
    }
    if (_json.containsKey("endDate")) {
      endDate = core.DateTime.parse(_json["endDate"]);
    }
    if (_json.containsKey("instructionType")) {
      instructionType = _json["instructionType"];
    }
    if (_json.containsKey("modificationTimestamp")) {
      modificationTimestamp =
          core.DateTime.parse(_json["modificationTimestamp"]);
    }
    if (_json.containsKey("startDate")) {
      startDate = core.DateTime.parse(_json["startDate"]);
    }
    if (_json.containsKey("subscriptionId")) {
      subscriptionId = _json["subscriptionId"];
    }
    if (_json.containsKey("subscriptionItems")) {
      subscriptionItems = (_json["subscriptionItems"] as core.List)
          .map<SubscriptionItem>(
              (value) => new SubscriptionItem.fromJson(value))
          .toList();
    }
    if (_json.containsKey("subscriptionStatus")) {
      subscriptionStatus = _json["subscriptionStatus"];
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
    if (customer != null) {
      _json["customer"] = (customer).toJson();
    }
    if (deleted != null) {
      _json["deleted"] = deleted;
    }
    if (endDate != null) {
      _json["endDate"] =
          "${(endDate).year.toString().padLeft(4, '0')}-${(endDate).month.toString().padLeft(2, '0')}-${(endDate).day.toString().padLeft(2, '0')}";
    }
    if (instructionType != null) {
      _json["instructionType"] = instructionType;
    }
    if (modificationTimestamp != null) {
      _json["modificationTimestamp"] =
          (modificationTimestamp).toIso8601String();
    }
    if (startDate != null) {
      _json["startDate"] =
          "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}";
    }
    if (subscriptionId != null) {
      _json["subscriptionId"] = subscriptionId;
    }
    if (subscriptionItems != null) {
      _json["subscriptionItems"] =
          subscriptionItems.map((value) => (value).toJson()).toList();
    }
    if (subscriptionStatus != null) {
      _json["subscriptionStatus"] = subscriptionStatus;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class SubscriptionCollection {
  core.List<Subscription> items;

  SubscriptionCollection();

  SubscriptionCollection.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Subscription>((value) => new Subscription.fromJson(value))
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

class SubscriptionItem {
  DeliveryPreference deliveryPreference;
  core.String instructionType;
  Product product;
  core.String productId;
  core.double quantity;
  Schedule schedule;
  core.List<SubscriptionItemSlot> slots;
  core.int totalSlots;

  SubscriptionItem();

  SubscriptionItem.fromJson(core.Map _json) {
    if (_json.containsKey("deliveryPreference")) {
      deliveryPreference =
          new DeliveryPreference.fromJson(_json["deliveryPreference"]);
    }
    if (_json.containsKey("instructionType")) {
      instructionType = _json["instructionType"];
    }
    if (_json.containsKey("product")) {
      product = new Product.fromJson(_json["product"]);
    }
    if (_json.containsKey("productId")) {
      productId = _json["productId"];
    }
    if (_json.containsKey("quantity")) {
      quantity = _json["quantity"].toDouble();
    }
    if (_json.containsKey("schedule")) {
      schedule = new Schedule.fromJson(_json["schedule"]);
    }
    if (_json.containsKey("slots")) {
      slots = (_json["slots"] as core.List)
          .map<SubscriptionItemSlot>(
              (value) => new SubscriptionItemSlot.fromJson(value))
          .toList();
    }
    if (_json.containsKey("totalSlots")) {
      totalSlots = _json["totalSlots"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deliveryPreference != null) {
      _json["deliveryPreference"] = (deliveryPreference).toJson();
    }
    if (instructionType != null) {
      _json["instructionType"] = instructionType;
    }
    if (product != null) {
      _json["product"] = (product).toJson();
    }
    if (productId != null) {
      _json["productId"] = productId;
    }
    if (quantity != null) {
      _json["quantity"] = quantity;
    }
    if (schedule != null) {
      _json["schedule"] = (schedule).toJson();
    }
    if (slots != null) {
      _json["slots"] = slots.map((value) => (value).toJson()).toList();
    }
    if (totalSlots != null) {
      _json["totalSlots"] = totalSlots;
    }
    return _json;
  }
}

class SubscriptionItemSlot {
  core.double quantity;
  core.int slotNumber;

  SubscriptionItemSlot();

  SubscriptionItemSlot.fromJson(core.Map _json) {
    if (_json.containsKey("quantity")) {
      quantity = _json["quantity"].toDouble();
    }
    if (_json.containsKey("slotNumber")) {
      slotNumber = _json["slotNumber"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (quantity != null) {
      _json["quantity"] = quantity;
    }
    if (slotNumber != null) {
      _json["slotNumber"] = slotNumber;
    }
    return _json;
  }
}
