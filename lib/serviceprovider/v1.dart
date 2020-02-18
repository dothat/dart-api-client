// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.serviceProvider.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client serviceProvider/v1';

/// API to access Service Providers
class ServiceProviderApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  ServiceProviderApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: "serviceProvider/v1/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcAreaIds] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceProvider> createServiceProvider(ServiceProvider request,
      {core.List<core.String> svcAreaIds, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (svcAreaIds != null) {
      _queryParams["svcAreaIds"] = svcAreaIds;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceProviders';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceProvider.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcAreaId] - null
  ///
  /// [svcType] - null
  /// Possible string values are:
  /// - "CAR_WASH"
  /// - "NEWSPAPER"
  /// - "MEAL"
  /// - "MILK"
  ///
  /// [query] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceProviderCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceProviderCollection> findServiceProviders(
      {core.String svcAreaId,
      core.String svcType,
      core.String query,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (svcAreaId != null) {
      _queryParams["svcAreaId"] = [svcAreaId];
    }
    if (svcType != null) {
      _queryParams["svcType"] = [svcType];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceProviders';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ServiceProviderCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [srvProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceProvider> getServiceProvider(core.String srvProviderId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (srvProviderId == null) {
      throw new core.ArgumentError("Parameter srvProviderId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'serviceProviders/' + commons.Escaper.ecapeVariable('$srvProviderId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceProvider.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceProvider> removeAllServiceProviderAreas(
      core.String svcProviderId,
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

    _url = 'serviceProviders/' +
        commons.Escaper.ecapeVariable('$svcProviderId') +
        '/areas';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceProvider.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [svcAreaIds] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceProvider> updateServiceProvider(
      ServiceProvider request, core.String svcProviderId,
      {core.List<core.String> svcAreaIds, core.String $fields}) {
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
    if (svcAreaIds != null) {
      _queryParams["svcAreaIds"] = svcAreaIds;
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'serviceProviders/' + commons.Escaper.ecapeVariable('$svcProviderId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceProvider.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [svcAreaIds] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceProvider> updateServiceProviderAreas(
      core.String svcProviderId, core.List<core.String> svcAreaIds,
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
    if (svcAreaIds == null || svcAreaIds.isEmpty) {
      throw new core.ArgumentError("Parameter svcAreaIds is required.");
    }
    _queryParams["svcAreaIds"] = svcAreaIds;
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceProviders/' +
        commons.Escaper.ecapeVariable('$svcProviderId') +
        '/areas';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceProvider.fromJson(data));
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
  /// Completes with a [ServiceProvider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceProvider> updateServiceProviderPolicy(
      ServiceProviderPolicy request, core.String svcProviderId,
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

    _url = 'serviceProviders/' +
        commons.Escaper.ecapeVariable('$svcProviderId') +
        '/policy';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceProvider.fromJson(data));
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

class CustomerPolicy {
  core.bool customerNameRequired;
  core.bool emailOrPhoneRequired;
  core.bool emailRequired;
  core.bool emailUnique;
  core.bool phoneRequired;
  core.bool phoneUnique;
  core.bool primaryEmailUnique;
  core.bool primaryPhoneUnique;

  CustomerPolicy();

  CustomerPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("customerNameRequired")) {
      customerNameRequired = _json["customerNameRequired"];
    }
    if (_json.containsKey("emailOrPhoneRequired")) {
      emailOrPhoneRequired = _json["emailOrPhoneRequired"];
    }
    if (_json.containsKey("emailRequired")) {
      emailRequired = _json["emailRequired"];
    }
    if (_json.containsKey("emailUnique")) {
      emailUnique = _json["emailUnique"];
    }
    if (_json.containsKey("phoneRequired")) {
      phoneRequired = _json["phoneRequired"];
    }
    if (_json.containsKey("phoneUnique")) {
      phoneUnique = _json["phoneUnique"];
    }
    if (_json.containsKey("primaryEmailUnique")) {
      primaryEmailUnique = _json["primaryEmailUnique"];
    }
    if (_json.containsKey("primaryPhoneUnique")) {
      primaryPhoneUnique = _json["primaryPhoneUnique"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customerNameRequired != null) {
      _json["customerNameRequired"] = customerNameRequired;
    }
    if (emailOrPhoneRequired != null) {
      _json["emailOrPhoneRequired"] = emailOrPhoneRequired;
    }
    if (emailRequired != null) {
      _json["emailRequired"] = emailRequired;
    }
    if (emailUnique != null) {
      _json["emailUnique"] = emailUnique;
    }
    if (phoneRequired != null) {
      _json["phoneRequired"] = phoneRequired;
    }
    if (phoneUnique != null) {
      _json["phoneUnique"] = phoneUnique;
    }
    if (primaryEmailUnique != null) {
      _json["primaryEmailUnique"] = primaryEmailUnique;
    }
    if (primaryPhoneUnique != null) {
      _json["primaryPhoneUnique"] = primaryPhoneUnique;
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

class OrderPolicy {
  core.double orderMaxQuantity;
  core.int orderServiceDuration;
  core.String orderServiceDurationType;

  OrderPolicy();

  OrderPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("orderMaxQuantity")) {
      orderMaxQuantity = _json["orderMaxQuantity"].toDouble();
    }
    if (_json.containsKey("orderServiceDuration")) {
      orderServiceDuration = _json["orderServiceDuration"];
    }
    if (_json.containsKey("orderServiceDurationType")) {
      orderServiceDurationType = _json["orderServiceDurationType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (orderMaxQuantity != null) {
      _json["orderMaxQuantity"] = orderMaxQuantity;
    }
    if (orderServiceDuration != null) {
      _json["orderServiceDuration"] = orderServiceDuration;
    }
    if (orderServiceDurationType != null) {
      _json["orderServiceDurationType"] = orderServiceDurationType;
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

class ServiceProvider {
  core.DateTime creationTimestamp;
  core.List<EmailAddress> emailAddresses;
  core.DateTime modificationTimestamp;
  core.String name;
  core.List<PhoneNumber> phoneNumbers;
  ServiceProviderPolicy policy;
  core.List<ServiceArea> serviceAreas;
  core.String serviceProviderId;
  core.String serviceType;
  core.String version;

  ServiceProvider();

  ServiceProvider.fromJson(core.Map _json) {
    if (_json.containsKey("creationTimestamp")) {
      creationTimestamp = core.DateTime.parse(_json["creationTimestamp"]);
    }
    if (_json.containsKey("emailAddresses")) {
      emailAddresses = (_json["emailAddresses"] as core.List)
          .map<EmailAddress>((value) => new EmailAddress.fromJson(value))
          .toList();
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
    if (_json.containsKey("policy")) {
      policy = new ServiceProviderPolicy.fromJson(_json["policy"]);
    }
    if (_json.containsKey("serviceAreas")) {
      serviceAreas = (_json["serviceAreas"] as core.List)
          .map<ServiceArea>((value) => new ServiceArea.fromJson(value))
          .toList();
    }
    if (_json.containsKey("serviceProviderId")) {
      serviceProviderId = _json["serviceProviderId"];
    }
    if (_json.containsKey("serviceType")) {
      serviceType = _json["serviceType"];
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (creationTimestamp != null) {
      _json["creationTimestamp"] = (creationTimestamp).toIso8601String();
    }
    if (emailAddresses != null) {
      _json["emailAddresses"] =
          emailAddresses.map((value) => (value).toJson()).toList();
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
    if (policy != null) {
      _json["policy"] = (policy).toJson();
    }
    if (serviceAreas != null) {
      _json["serviceAreas"] =
          serviceAreas.map((value) => (value).toJson()).toList();
    }
    if (serviceProviderId != null) {
      _json["serviceProviderId"] = serviceProviderId;
    }
    if (serviceType != null) {
      _json["serviceType"] = serviceType;
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

class ServiceProviderCollection {
  core.List<ServiceProvider> items;

  ServiceProviderCollection();

  ServiceProviderCollection.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<ServiceProvider>((value) => new ServiceProvider.fromJson(value))
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

class ServiceProviderPolicy {
  CustomerPolicy customerPolicy;
  OrderPolicy orderPolicy;

  ServiceProviderPolicy();

  ServiceProviderPolicy.fromJson(core.Map _json) {
    if (_json.containsKey("customerPolicy")) {
      customerPolicy = new CustomerPolicy.fromJson(_json["customerPolicy"]);
    }
    if (_json.containsKey("orderPolicy")) {
      orderPolicy = new OrderPolicy.fromJson(_json["orderPolicy"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (customerPolicy != null) {
      _json["customerPolicy"] = (customerPolicy).toJson();
    }
    if (orderPolicy != null) {
      _json["orderPolicy"] = (orderPolicy).toJson();
    }
    return _json;
  }
}
