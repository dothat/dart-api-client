// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.changeEvent.v1;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client changeEvent/v1';

/// API to access Change Events
class ChangeEventApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  ChangeEventApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [startDate] - null
  ///
  /// [targetType] - null
  /// Possible string values are:
  /// - "CUSTOMER"
  /// - "ORDER"
  /// - "PRODUCT"
  /// - "ROUTE"
  /// - "SUBSCRIPTION"
  /// - "MESSAGE"
  /// - "SERVICE_AREA"
  /// - "ROUTE_ADDRESS"
  ///
  /// [numItems] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CollectionResponseChangeEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CollectionResponseChangeEvent> getChangeEvents(
      core.String svcProviderId, core.DateTime startDate,
      {core.String targetType,
      core.int numItems,
      core.String pageToken,
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
    if (startDate == null) {
      throw new core.ArgumentError("Parameter startDate is required.");
    }
    _queryParams["startDate"] = [
      "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}"
    ];
    if (targetType != null) {
      _queryParams["targetType"] = [targetType];
    }
    if (numItems != null) {
      _queryParams["numItems"] = ["${numItems}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'changeEvent/v1/serviceProviders/' +
        commons.Escaper.ecapeVariable('$svcProviderId') +
        '/changes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new CollectionResponseChangeEvent.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [startDate] - null
  ///
  /// [targetType] - null
  /// Possible string values are:
  /// - "CUSTOMER"
  /// - "ORDER"
  /// - "PRODUCT"
  /// - "ROUTE"
  /// - "SUBSCRIPTION"
  /// - "MESSAGE"
  /// - "SERVICE_AREA"
  /// - "ROUTE_ADDRESS"
  ///
  /// [numItems] - null
  ///
  /// [pageToken] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CollectionResponseChangeEvent].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CollectionResponseChangeEvent> getUniversalChangeEvents(
      core.DateTime startDate,
      {core.String targetType,
      core.int numItems,
      core.String pageToken,
      core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (startDate == null) {
      throw new core.ArgumentError("Parameter startDate is required.");
    }
    _queryParams["startDate"] = [
      "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}"
    ];
    if (targetType != null) {
      _queryParams["targetType"] = [targetType];
    }
    if (numItems != null) {
      _queryParams["numItems"] = ["${numItems}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'changes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new CollectionResponseChangeEvent.fromJson(data));
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

class ChangeEvent {
  core.String changeEventId;
  core.DateTime changeTimestamp;
  core.String changeType;
  core.String customerId;
  core.String initiatorType;
  Message message;
  core.String messageId;
  Payload payload;
  core.String serviceProviderId;
  core.String targetId;
  core.String targetType;
  core.String targetVersion;

  ChangeEvent();

  ChangeEvent.fromJson(core.Map _json) {
    if (_json.containsKey("changeEventId")) {
      changeEventId = _json["changeEventId"];
    }
    if (_json.containsKey("changeTimestamp")) {
      changeTimestamp = core.DateTime.parse(_json["changeTimestamp"]);
    }
    if (_json.containsKey("changeType")) {
      changeType = _json["changeType"];
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("initiatorType")) {
      initiatorType = _json["initiatorType"];
    }
    if (_json.containsKey("message")) {
      message = new Message.fromJson(_json["message"]);
    }
    if (_json.containsKey("messageId")) {
      messageId = _json["messageId"];
    }
    if (_json.containsKey("payload")) {
      payload = new Payload.fromJson(_json["payload"]);
    }
    if (_json.containsKey("serviceProviderId")) {
      serviceProviderId = _json["serviceProviderId"];
    }
    if (_json.containsKey("targetId")) {
      targetId = _json["targetId"];
    }
    if (_json.containsKey("targetType")) {
      targetType = _json["targetType"];
    }
    if (_json.containsKey("targetVersion")) {
      targetVersion = _json["targetVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (changeEventId != null) {
      _json["changeEventId"] = changeEventId;
    }
    if (changeTimestamp != null) {
      _json["changeTimestamp"] = (changeTimestamp).toIso8601String();
    }
    if (changeType != null) {
      _json["changeType"] = changeType;
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (initiatorType != null) {
      _json["initiatorType"] = initiatorType;
    }
    if (message != null) {
      _json["message"] = (message).toJson();
    }
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    if (payload != null) {
      _json["payload"] = (payload).toJson();
    }
    if (serviceProviderId != null) {
      _json["serviceProviderId"] = serviceProviderId;
    }
    if (targetId != null) {
      _json["targetId"] = targetId;
    }
    if (targetType != null) {
      _json["targetType"] = targetType;
    }
    if (targetVersion != null) {
      _json["targetVersion"] = targetVersion;
    }
    return _json;
  }
}

class CollectionResponseChangeEvent {
  core.List<ChangeEvent> items;
  core.String nextPageToken;

  CollectionResponseChangeEvent();

  CollectionResponseChangeEvent.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<ChangeEvent>((value) => new ChangeEvent.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
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

class Message {
  core.String content;
  Customer customer;
  core.String customerId;
  core.String direction;
  core.String externalMessageId;
  core.String failureCode;
  core.String failureReason;
  core.String messageId;
  core.String messagingType;
  core.DateTime receivedTimestamp;
  core.String receiver;
  core.String sender;
  core.DateTime sentTimestamp;
  core.String status;
  core.String subject;

  Message();

  Message.fromJson(core.Map _json) {
    if (_json.containsKey("content")) {
      content = _json["content"];
    }
    if (_json.containsKey("customer")) {
      customer = new Customer.fromJson(_json["customer"]);
    }
    if (_json.containsKey("customerId")) {
      customerId = _json["customerId"];
    }
    if (_json.containsKey("direction")) {
      direction = _json["direction"];
    }
    if (_json.containsKey("externalMessageId")) {
      externalMessageId = _json["externalMessageId"];
    }
    if (_json.containsKey("failureCode")) {
      failureCode = _json["failureCode"];
    }
    if (_json.containsKey("failureReason")) {
      failureReason = _json["failureReason"];
    }
    if (_json.containsKey("messageId")) {
      messageId = _json["messageId"];
    }
    if (_json.containsKey("messagingType")) {
      messagingType = _json["messagingType"];
    }
    if (_json.containsKey("receivedTimestamp")) {
      receivedTimestamp = core.DateTime.parse(_json["receivedTimestamp"]);
    }
    if (_json.containsKey("receiver")) {
      receiver = _json["receiver"];
    }
    if (_json.containsKey("sender")) {
      sender = _json["sender"];
    }
    if (_json.containsKey("sentTimestamp")) {
      sentTimestamp = core.DateTime.parse(_json["sentTimestamp"]);
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("subject")) {
      subject = _json["subject"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (content != null) {
      _json["content"] = content;
    }
    if (customer != null) {
      _json["customer"] = (customer).toJson();
    }
    if (customerId != null) {
      _json["customerId"] = customerId;
    }
    if (direction != null) {
      _json["direction"] = direction;
    }
    if (externalMessageId != null) {
      _json["externalMessageId"] = externalMessageId;
    }
    if (failureCode != null) {
      _json["failureCode"] = failureCode;
    }
    if (failureReason != null) {
      _json["failureReason"] = failureReason;
    }
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    if (messagingType != null) {
      _json["messagingType"] = messagingType;
    }
    if (receivedTimestamp != null) {
      _json["receivedTimestamp"] = (receivedTimestamp).toIso8601String();
    }
    if (receiver != null) {
      _json["receiver"] = receiver;
    }
    if (sender != null) {
      _json["sender"] = sender;
    }
    if (sentTimestamp != null) {
      _json["sentTimestamp"] = (sentTimestamp).toIso8601String();
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (subject != null) {
      _json["subject"] = subject;
    }
    return _json;
  }
}

class Payload {
  core.Object change;
  core.Object original;

  Payload();

  Payload.fromJson(core.Map _json) {
    if (_json.containsKey("change")) {
      change = _json["change"];
    }
    if (_json.containsKey("original")) {
      original = _json["original"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (change != null) {
      _json["change"] = change;
    }
    if (original != null) {
      _json["original"] = original;
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
