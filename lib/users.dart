// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.users.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client users/v1';

/// API to access Users
class UsersApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  UsersApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: "users/v1/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserAddress> addUserAddress(
      UserAddress request, core.String usrId,
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
    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$usrId') + '/addresses';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserAddress.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EmailAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EmailAddress> addUserEmailAddress(
      EmailAddress request, core.String usrId,
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
    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'users/' + commons.Escaper.ecapeVariable('$usrId') + '/emailAddresses';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EmailAddress.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PhoneNumber].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PhoneNumber> addUserPhoneNumber(
      PhoneNumber request, core.String usrId,
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
    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$usrId') + '/phoneNumbers';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PhoneNumber.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> createUser(User request, {core.String $fields}) {
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

    _url = 'users';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [query] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserCollection> findUsers(core.String query,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (query == null) {
      throw new core.ArgumentError("Parameter query is required.");
    }
    _queryParams["query"] = [query];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserCollection.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> getUser(core.String usrId, {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$usrId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [addrId] - null
  ///
  /// [expunge] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserAddress> removeUserAddress(
      core.String usrId, core.String addrId, core.bool expunge,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if (addrId == null) {
      throw new core.ArgumentError("Parameter addrId is required.");
    }
    if (expunge == null) {
      throw new core.ArgumentError("Parameter expunge is required.");
    }
    _queryParams["expunge"] = ["${expunge}"];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$usrId') +
        '/addresses/' +
        commons.Escaper.ecapeVariable('$addrId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserAddress.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [emailAddr] - null
  ///
  /// [expunge] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EmailAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EmailAddress> removeUserEmailAddress(
      core.String usrId, core.String emailAddr, core.bool expunge,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if (emailAddr == null) {
      throw new core.ArgumentError("Parameter emailAddr is required.");
    }
    if (expunge == null) {
      throw new core.ArgumentError("Parameter expunge is required.");
    }
    _queryParams["expunge"] = ["${expunge}"];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$usrId') +
        '/emailAddresses/' +
        commons.Escaper.ecapeVariable('$emailAddr');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EmailAddress.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [phoneNum] - null
  ///
  /// [expunge] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PhoneNumber].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PhoneNumber> removeUserPhoneNumber(
      core.String usrId, core.String phoneNum, core.bool expunge,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if (phoneNum == null) {
      throw new core.ArgumentError("Parameter phoneNum is required.");
    }
    if (expunge == null) {
      throw new core.ArgumentError("Parameter expunge is required.");
    }
    _queryParams["expunge"] = ["${expunge}"];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$usrId') +
        '/phoneNumbers/' +
        commons.Escaper.ecapeVariable('$phoneNum');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PhoneNumber.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> updateUser(User request, core.String usrId,
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
    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' + commons.Escaper.ecapeVariable('$usrId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new User.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [addrId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UserAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UserAddress> updateUserAddress(
      UserAddress request, core.String usrId, core.String addrId,
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
    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if (addrId == null) {
      throw new core.ArgumentError("Parameter addrId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$usrId') +
        '/addresses/' +
        commons.Escaper.ecapeVariable('$addrId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UserAddress.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [emailAddr] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EmailAddress].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EmailAddress> updateUserEmailAddress(
      EmailAddress request, core.String usrId, core.String emailAddr,
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
    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if (emailAddr == null) {
      throw new core.ArgumentError("Parameter emailAddr is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$usrId') +
        '/emailAddresses/' +
        commons.Escaper.ecapeVariable('$emailAddr');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new EmailAddress.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [usrId] - null
  ///
  /// [phoneNum] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PhoneNumber].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PhoneNumber> updateUserPhoneNumber(
      PhoneNumber request, core.String usrId, core.String phoneNum,
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
    if (usrId == null) {
      throw new core.ArgumentError("Parameter usrId is required.");
    }
    if (phoneNum == null) {
      throw new core.ArgumentError("Parameter phoneNum is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'users/' +
        commons.Escaper.ecapeVariable('$usrId') +
        '/phoneNumbers/' +
        commons.Escaper.ecapeVariable('$phoneNum');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PhoneNumber.fromJson(data));
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

class User {
  core.bool active;
  core.List<UserAddress> addresses;
  core.DateTime creationTimestamp;
  core.bool deleted;
  core.List<EmailAddress> emailAddresses;
  core.DateTime modificationTimestamp;
  core.String name;
  core.List<PhoneNumber> phoneNumbers;
  core.String userId;
  core.String verificationStatus;
  core.String version;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey("active")) {
      active = _json["active"];
    }
    if (_json.containsKey("addresses")) {
      addresses = (_json["addresses"] as core.List)
          .map<UserAddress>((value) => new UserAddress.fromJson(value))
          .toList();
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
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
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
    if (addresses != null) {
      _json["addresses"] = addresses.map((value) => (value).toJson()).toList();
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
    if (userId != null) {
      _json["userId"] = userId;
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

class UserAddress {
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

  UserAddress();

  UserAddress.fromJson(core.Map _json) {
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

class UserCollection {
  core.List<User> items;

  UserCollection();

  UserCollection.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<User>((value) => new User.fromJson(value))
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
