// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.serviceArea.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client serviceArea/v1';

/// API to access Service Areas and Serviced Addresses
class ServiceAreaApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  ServiceAreaApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: "serviceArea/v1/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceArea].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceArea> createServiceArea(ServiceArea request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceAreas';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceArea.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [parentSvcAreaId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceArea].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceArea> createServiceProviderServiceArea(
      ServiceArea request,
      core.String svcProviderId,
      core.String parentSvcAreaId,
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
    if (parentSvcAreaId == null) {
      throw new core.ArgumentError("Parameter parentSvcAreaId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceProviders/' +
        commons.Escaper.ecapeVariable('$svcProviderId') +
        '/serviceAreas/' +
        commons.Escaper.ecapeVariable('$parentSvcAreaId') +
        '/serviceAreas';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceArea.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [areaId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServicedAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServicedAddress> createServicedAddress(
      ServicedAddress request, core.String areaId,
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
    if (areaId == null) {
      throw new core.ArgumentError("Parameter areaId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceAreas/' +
        commons.Escaper.ecapeVariable('$areaId') +
        '/addresses';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServicedAddress.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [areaId] - null
  ///
  /// [addressId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServicedAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServicedAddress> deleteServicedAddress(
      core.String areaId, core.String addressId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (areaId == null) {
      throw new core.ArgumentError("Parameter areaId is required.");
    }
    if (addressId == null) {
      throw new core.ArgumentError("Parameter addressId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceAreas/' +
        commons.Escaper.ecapeVariable('$areaId') +
        '/addresses/' +
        commons.Escaper.ecapeVariable('$addressId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServicedAddress.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [serviceProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAreaCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAreaCollection> findUnassignedServiceAreas(
      {core.String serviceProviderId, core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (serviceProviderId != null) {
      _queryParams["serviceProviderId"] = [serviceProviderId];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceAreas/findUnassignedServiceAreas';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAreaCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcAreaId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceArea].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceArea> getServiceArea(core.String svcAreaId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (svcAreaId == null) {
      throw new core.ArgumentError("Parameter svcAreaId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceAreas/' + commons.Escaper.ecapeVariable('$svcAreaId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceArea.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [svcAreaId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceArea].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceArea> getServiceProviderServiceArea(
      core.String svcProviderId, core.String svcAreaId,
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
    if (svcAreaId == null) {
      throw new core.ArgumentError("Parameter svcAreaId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceProviders/' +
        commons.Escaper.ecapeVariable('$svcProviderId') +
        '/serviceAreas/' +
        commons.Escaper.ecapeVariable('$svcAreaId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceArea.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [areaId] - null
  ///
  /// [addressId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServicedAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServicedAddress> getServicedAddress(
      core.String areaId, core.String addressId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (areaId == null) {
      throw new core.ArgumentError("Parameter areaId is required.");
    }
    if (addressId == null) {
      throw new core.ArgumentError("Parameter addressId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceAreas/' +
        commons.Escaper.ecapeVariable('$areaId') +
        '/addresses/' +
        commons.Escaper.ecapeVariable('$addressId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServicedAddress.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [areaId] - null
  ///
  /// [businessName] - null
  ///
  /// [houseNumber] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServicedAddressCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServicedAddressCollection> searchServiceAddresses(
      core.String areaId,
      {core.String businessName,
      core.String houseNumber,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (areaId == null) {
      throw new core.ArgumentError("Parameter areaId is required.");
    }
    if (businessName != null) {
      _queryParams["businessName"] = [businessName];
    }
    if (houseNumber != null) {
      _queryParams["houseNumber"] = [houseNumber];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceAreas/' +
        commons.Escaper.ecapeVariable('$areaId') +
        '/addresses';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ServicedAddressCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [country] - null
  ///
  /// [state] - null
  ///
  /// [city] - null
  ///
  /// [searchQuery] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceAreaCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceAreaCollection> searchServiceArea(
      {core.String country,
      core.String state,
      core.String city,
      core.String searchQuery,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (country != null) {
      _queryParams["country"] = [country];
    }
    if (state != null) {
      _queryParams["state"] = [state];
    }
    if (city != null) {
      _queryParams["city"] = [city];
    }
    if (searchQuery != null) {
      _queryParams["searchQuery"] = [searchQuery];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceAreas';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceAreaCollection.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcAreaId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceArea].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceArea> updateServiceArea(
      ServiceArea request, core.String svcAreaId,
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
    if (svcAreaId == null) {
      throw new core.ArgumentError("Parameter svcAreaId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceAreas/' + commons.Escaper.ecapeVariable('$svcAreaId');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceArea.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [parentSvcAreaId] - null
  ///
  /// [svcAreaId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServiceArea].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServiceArea> updateServiceProviderServiceArea(
      ServiceArea request,
      core.String svcProviderId,
      core.String parentSvcAreaId,
      core.String svcAreaId,
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
    if (parentSvcAreaId == null) {
      throw new core.ArgumentError("Parameter parentSvcAreaId is required.");
    }
    if (svcAreaId == null) {
      throw new core.ArgumentError("Parameter svcAreaId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceProviders/' +
        commons.Escaper.ecapeVariable('$svcProviderId') +
        '/serviceAreas/' +
        commons.Escaper.ecapeVariable('$parentSvcAreaId') +
        '/serviceAreas/' +
        commons.Escaper.ecapeVariable('$svcAreaId');

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServiceArea.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [areaId] - null
  ///
  /// [addressId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ServicedAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ServicedAddress> updateServicedAddress(
      ServicedAddress request, core.String areaId, core.String addressId,
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
    if (areaId == null) {
      throw new core.ArgumentError("Parameter areaId is required.");
    }
    if (addressId == null) {
      throw new core.ArgumentError("Parameter addressId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'serviceAreas/' +
        commons.Escaper.ecapeVariable('$areaId') +
        '/addresses/' +
        commons.Escaper.ecapeVariable('$addressId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ServicedAddress.fromJson(data));
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

class ServiceAreaCollection {
  core.List<ServiceArea> items;

  ServiceAreaCollection();

  ServiceAreaCollection.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<ServiceArea>((value) => new ServiceArea.fromJson(value))
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

class ServicedAddressCollection {
  core.List<ServicedAddress> items;

  ServicedAddressCollection();

  ServicedAddressCollection.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<ServicedAddress>((value) => new ServicedAddress.fromJson(value))
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
