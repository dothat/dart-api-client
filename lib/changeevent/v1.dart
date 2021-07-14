// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// API to access Change Events
library changeEvent.v1;

import 'dart:async' as async;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to access Change Events
class ChangeEventApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  ChangeEventApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [startDate] - null
  ///
  /// [numItems] - null
  ///
  /// [pageToken] - null
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
    core.String svcProviderId,
    core.DateTime startDate, {
    core.int? numItems,
    core.String? pageToken,
    core.String? targetType,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'startDate': [
        "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}"
      ],
      if (numItems != null) 'numItems': ['${numItems}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (targetType != null) 'targetType': [targetType],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'changeEvent/v1/serviceProviders/' +
        commons.escapeVariable('$svcProviderId') +
        '/changes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CollectionResponseChangeEvent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [startDate] - null
  ///
  /// [numItems] - null
  ///
  /// [pageToken] - null
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
    core.DateTime startDate, {
    core.int? numItems,
    core.String? pageToken,
    core.String? targetType,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'startDate': [
        "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}"
      ],
      if (numItems != null) 'numItems': ['${numItems}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (targetType != null) 'targetType': [targetType],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'changes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CollectionResponseChangeEvent.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ChangeContext {
  core.String? initiatorType;
  core.String? messageId;
  core.String? userIdentifier;

  ChangeContext();

  ChangeContext.fromJson(core.Map _json) {
    if (_json.containsKey('initiatorType')) {
      initiatorType = _json['initiatorType'] as core.String;
    }
    if (_json.containsKey('messageId')) {
      messageId = _json['messageId'] as core.String;
    }
    if (_json.containsKey('userIdentifier')) {
      userIdentifier = _json['userIdentifier'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (initiatorType != null) 'initiatorType': initiatorType!,
        if (messageId != null) 'messageId': messageId!,
        if (userIdentifier != null) 'userIdentifier': userIdentifier!,
      };
}

class ChangeEvent {
  core.String? changeEventId;
  core.DateTime? changeTimestamp;
  core.String? changeType;
  core.String? customerId;
  core.String? initiatorType;
  Message? message;
  core.String? messageId;
  Payload? payload;
  core.String? serviceProviderId;
  core.String? targetId;
  core.String? targetType;
  core.String? targetVersion;
  core.String? userIdentifier;

  ChangeEvent();

  ChangeEvent.fromJson(core.Map _json) {
    if (_json.containsKey('changeEventId')) {
      changeEventId = _json['changeEventId'] as core.String;
    }
    if (_json.containsKey('changeTimestamp')) {
      changeTimestamp =
          core.DateTime.parse(_json['changeTimestamp'] as core.String);
    }
    if (_json.containsKey('changeType')) {
      changeType = _json['changeType'] as core.String;
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('initiatorType')) {
      initiatorType = _json['initiatorType'] as core.String;
    }
    if (_json.containsKey('message')) {
      message = Message.fromJson(
          _json['message'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('messageId')) {
      messageId = _json['messageId'] as core.String;
    }
    if (_json.containsKey('payload')) {
      payload = Payload.fromJson(
          _json['payload'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('serviceProviderId')) {
      serviceProviderId = _json['serviceProviderId'] as core.String;
    }
    if (_json.containsKey('targetId')) {
      targetId = _json['targetId'] as core.String;
    }
    if (_json.containsKey('targetType')) {
      targetType = _json['targetType'] as core.String;
    }
    if (_json.containsKey('targetVersion')) {
      targetVersion = _json['targetVersion'] as core.String;
    }
    if (_json.containsKey('userIdentifier')) {
      userIdentifier = _json['userIdentifier'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (changeEventId != null) 'changeEventId': changeEventId!,
        if (changeTimestamp != null)
          'changeTimestamp': changeTimestamp!.toIso8601String(),
        if (changeType != null) 'changeType': changeType!,
        if (customerId != null) 'customerId': customerId!,
        if (initiatorType != null) 'initiatorType': initiatorType!,
        if (message != null) 'message': message!.toJson(),
        if (messageId != null) 'messageId': messageId!,
        if (payload != null) 'payload': payload!.toJson(),
        if (serviceProviderId != null) 'serviceProviderId': serviceProviderId!,
        if (targetId != null) 'targetId': targetId!,
        if (targetType != null) 'targetType': targetType!,
        if (targetVersion != null) 'targetVersion': targetVersion!,
        if (userIdentifier != null) 'userIdentifier': userIdentifier!,
      };
}

class CollectionResponseChangeEvent {
  core.List<ChangeEvent>? items;
  core.String? nextPageToken;

  CollectionResponseChangeEvent();

  CollectionResponseChangeEvent.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<ChangeEvent>((value) => ChangeEvent.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class Customer {
  core.bool? active;
  core.List<CustomerAddress>? addresses;
  core.String? businessName;
  ChangeContext? changeContext;
  core.List<CustomerContact>? contacts;
  core.DateTime? creationTimestamp;
  core.String? customerId;
  core.bool? deleted;
  core.DateTime? modificationTimestamp;
  core.String? name;
  core.String? version;

  Customer();

  Customer.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('addresses')) {
      addresses = (_json['addresses'] as core.List)
          .map<CustomerAddress>((value) => CustomerAddress.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('businessName')) {
      businessName = _json['businessName'] as core.String;
    }
    if (_json.containsKey('changeContext')) {
      changeContext = ChangeContext.fromJson(
          _json['changeContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('contacts')) {
      contacts = (_json['contacts'] as core.List)
          .map<CustomerContact>((value) => CustomerContact.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (addresses != null)
          'addresses': addresses!.map((value) => value.toJson()).toList(),
        if (businessName != null) 'businessName': businessName!,
        if (changeContext != null) 'changeContext': changeContext!.toJson(),
        if (contacts != null)
          'contacts': contacts!.map((value) => value.toJson()).toList(),
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (customerId != null) 'customerId': customerId!,
        if (deleted != null) 'deleted': deleted!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
}

class CustomerAddress {
  core.bool? active;
  core.String? addressId;
  core.String? addressLine1;
  core.String? addressLine2;
  core.String? addressLine3;
  core.String? addressType;
  core.String? area;
  core.String? block;
  core.String? building;
  core.String? businessName;
  core.String? city;
  core.String? country;
  core.DateTime? creationTimestamp;
  core.bool? deleted;
  core.String? floor;
  core.String? label;
  core.String? locality;
  core.DateTime? modificationTimestamp;
  core.String? postalCode;
  core.bool? primary;
  ServiceArea? serviceArea;
  core.String? serviceAreaId;
  ServicedAddress? servicedAddress;
  core.String? servicedAddressId;
  core.String? state;
  core.String? stateCode;
  core.String? subLocality;
  core.String? unitNumber;
  core.String? verificationStatus;
  core.String? version;

  CustomerAddress();

  CustomerAddress.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('addressId')) {
      addressId = _json['addressId'] as core.String;
    }
    if (_json.containsKey('addressLine1')) {
      addressLine1 = _json['addressLine1'] as core.String;
    }
    if (_json.containsKey('addressLine2')) {
      addressLine2 = _json['addressLine2'] as core.String;
    }
    if (_json.containsKey('addressLine3')) {
      addressLine3 = _json['addressLine3'] as core.String;
    }
    if (_json.containsKey('addressType')) {
      addressType = _json['addressType'] as core.String;
    }
    if (_json.containsKey('area')) {
      area = _json['area'] as core.String;
    }
    if (_json.containsKey('block')) {
      block = _json['block'] as core.String;
    }
    if (_json.containsKey('building')) {
      building = _json['building'] as core.String;
    }
    if (_json.containsKey('businessName')) {
      businessName = _json['businessName'] as core.String;
    }
    if (_json.containsKey('city')) {
      city = _json['city'] as core.String;
    }
    if (_json.containsKey('country')) {
      country = _json['country'] as core.String;
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('floor')) {
      floor = _json['floor'] as core.String;
    }
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
    if (_json.containsKey('locality')) {
      locality = _json['locality'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('postalCode')) {
      postalCode = _json['postalCode'] as core.String;
    }
    if (_json.containsKey('primary')) {
      primary = _json['primary'] as core.bool;
    }
    if (_json.containsKey('serviceArea')) {
      serviceArea = ServiceArea.fromJson(
          _json['serviceArea'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('serviceAreaId')) {
      serviceAreaId = _json['serviceAreaId'] as core.String;
    }
    if (_json.containsKey('servicedAddress')) {
      servicedAddress = ServicedAddress.fromJson(
          _json['servicedAddress'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('servicedAddressId')) {
      servicedAddressId = _json['servicedAddressId'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateCode')) {
      stateCode = _json['stateCode'] as core.String;
    }
    if (_json.containsKey('subLocality')) {
      subLocality = _json['subLocality'] as core.String;
    }
    if (_json.containsKey('unitNumber')) {
      unitNumber = _json['unitNumber'] as core.String;
    }
    if (_json.containsKey('verificationStatus')) {
      verificationStatus = _json['verificationStatus'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (addressId != null) 'addressId': addressId!,
        if (addressLine1 != null) 'addressLine1': addressLine1!,
        if (addressLine2 != null) 'addressLine2': addressLine2!,
        if (addressLine3 != null) 'addressLine3': addressLine3!,
        if (addressType != null) 'addressType': addressType!,
        if (area != null) 'area': area!,
        if (block != null) 'block': block!,
        if (building != null) 'building': building!,
        if (businessName != null) 'businessName': businessName!,
        if (city != null) 'city': city!,
        if (country != null) 'country': country!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (deleted != null) 'deleted': deleted!,
        if (floor != null) 'floor': floor!,
        if (label != null) 'label': label!,
        if (locality != null) 'locality': locality!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (postalCode != null) 'postalCode': postalCode!,
        if (primary != null) 'primary': primary!,
        if (serviceArea != null) 'serviceArea': serviceArea!.toJson(),
        if (serviceAreaId != null) 'serviceAreaId': serviceAreaId!,
        if (servicedAddress != null)
          'servicedAddress': servicedAddress!.toJson(),
        if (servicedAddressId != null) 'servicedAddressId': servicedAddressId!,
        if (state != null) 'state': state!,
        if (stateCode != null) 'stateCode': stateCode!,
        if (subLocality != null) 'subLocality': subLocality!,
        if (unitNumber != null) 'unitNumber': unitNumber!,
        if (verificationStatus != null)
          'verificationStatus': verificationStatus!,
        if (version != null) 'version': version!,
      };
}

class CustomerContact {
  core.bool? active;
  core.String? contactId;
  core.DateTime? creationTimestamp;
  core.bool? deleted;
  core.List<EmailAddress>? emailAddresses;
  core.String? label;
  core.DateTime? modificationTimestamp;
  core.String? name;
  core.List<PhoneNumber>? phoneNumbers;
  core.bool? primary;
  core.String? verificationStatus;
  core.String? version;

  CustomerContact();

  CustomerContact.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('contactId')) {
      contactId = _json['contactId'] as core.String;
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('emailAddresses')) {
      emailAddresses = (_json['emailAddresses'] as core.List)
          .map<EmailAddress>((value) => EmailAddress.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('phoneNumbers')) {
      phoneNumbers = (_json['phoneNumbers'] as core.List)
          .map<PhoneNumber>((value) => PhoneNumber.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('primary')) {
      primary = _json['primary'] as core.bool;
    }
    if (_json.containsKey('verificationStatus')) {
      verificationStatus = _json['verificationStatus'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (contactId != null) 'contactId': contactId!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (deleted != null) 'deleted': deleted!,
        if (emailAddresses != null)
          'emailAddresses':
              emailAddresses!.map((value) => value.toJson()).toList(),
        if (label != null) 'label': label!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (name != null) 'name': name!,
        if (phoneNumbers != null)
          'phoneNumbers': phoneNumbers!.map((value) => value.toJson()).toList(),
        if (primary != null) 'primary': primary!,
        if (verificationStatus != null)
          'verificationStatus': verificationStatus!,
        if (version != null) 'version': version!,
      };
}

class EmailAddress {
  core.bool? active;
  core.String? address;
  core.bool? deleted;
  core.String? label;
  core.bool? primary;
  core.String? verificationStatus;

  EmailAddress();

  EmailAddress.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('address')) {
      address = _json['address'] as core.String;
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
    if (_json.containsKey('primary')) {
      primary = _json['primary'] as core.bool;
    }
    if (_json.containsKey('verificationStatus')) {
      verificationStatus = _json['verificationStatus'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (address != null) 'address': address!,
        if (deleted != null) 'deleted': deleted!,
        if (label != null) 'label': label!,
        if (primary != null) 'primary': primary!,
        if (verificationStatus != null)
          'verificationStatus': verificationStatus!,
      };
}

class Message {
  core.String? content;
  Customer? customer;
  core.String? customerId;
  core.String? direction;
  core.String? externalMessageId;
  core.String? failureCode;
  core.String? failureReason;
  core.String? messageId;
  core.String? messagingType;
  core.DateTime? receivedTimestamp;
  core.String? receiver;
  core.String? sender;
  core.DateTime? sentTimestamp;
  core.String? status;
  core.String? subject;

  Message();

  Message.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('customer')) {
      customer = Customer.fromJson(
          _json['customer'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('direction')) {
      direction = _json['direction'] as core.String;
    }
    if (_json.containsKey('externalMessageId')) {
      externalMessageId = _json['externalMessageId'] as core.String;
    }
    if (_json.containsKey('failureCode')) {
      failureCode = _json['failureCode'] as core.String;
    }
    if (_json.containsKey('failureReason')) {
      failureReason = _json['failureReason'] as core.String;
    }
    if (_json.containsKey('messageId')) {
      messageId = _json['messageId'] as core.String;
    }
    if (_json.containsKey('messagingType')) {
      messagingType = _json['messagingType'] as core.String;
    }
    if (_json.containsKey('receivedTimestamp')) {
      receivedTimestamp =
          core.DateTime.parse(_json['receivedTimestamp'] as core.String);
    }
    if (_json.containsKey('receiver')) {
      receiver = _json['receiver'] as core.String;
    }
    if (_json.containsKey('sender')) {
      sender = _json['sender'] as core.String;
    }
    if (_json.containsKey('sentTimestamp')) {
      sentTimestamp =
          core.DateTime.parse(_json['sentTimestamp'] as core.String);
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('subject')) {
      subject = _json['subject'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (customer != null) 'customer': customer!.toJson(),
        if (customerId != null) 'customerId': customerId!,
        if (direction != null) 'direction': direction!,
        if (externalMessageId != null) 'externalMessageId': externalMessageId!,
        if (failureCode != null) 'failureCode': failureCode!,
        if (failureReason != null) 'failureReason': failureReason!,
        if (messageId != null) 'messageId': messageId!,
        if (messagingType != null) 'messagingType': messagingType!,
        if (receivedTimestamp != null)
          'receivedTimestamp': receivedTimestamp!.toIso8601String(),
        if (receiver != null) 'receiver': receiver!,
        if (sender != null) 'sender': sender!,
        if (sentTimestamp != null)
          'sentTimestamp': sentTimestamp!.toIso8601String(),
        if (status != null) 'status': status!,
        if (subject != null) 'subject': subject!,
      };
}

class Payload {
  core.Object? change;
  core.Object? original;

  Payload();

  Payload.fromJson(core.Map _json) {
    if (_json.containsKey('change')) {
      change = _json['change'] as core.Object;
    }
    if (_json.containsKey('original')) {
      original = _json['original'] as core.Object;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (change != null) 'change': change!,
        if (original != null) 'original': original!,
      };
}

class PhoneNumber {
  core.bool? active;
  core.bool? deleted;
  core.String? label;
  core.String? number;
  core.bool? primary;
  core.String? verificationStatus;

  PhoneNumber();

  PhoneNumber.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
    if (_json.containsKey('number')) {
      number = _json['number'] as core.String;
    }
    if (_json.containsKey('primary')) {
      primary = _json['primary'] as core.bool;
    }
    if (_json.containsKey('verificationStatus')) {
      verificationStatus = _json['verificationStatus'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (deleted != null) 'deleted': deleted!,
        if (label != null) 'label': label!,
        if (number != null) 'number': number!,
        if (primary != null) 'primary': primary!,
        if (verificationStatus != null)
          'verificationStatus': verificationStatus!,
      };
}

class ServiceArea {
  core.String? addressLine1;
  core.String? addressLine2;
  core.String? addressLine3;
  ChangeContext? changeContext;
  core.String? city;
  core.String? country;
  core.DateTime? creationTimestamp;
  core.String? fullName;
  core.DateTime? modificationTimestamp;
  core.String? name;
  core.String? parentServiceAreaId;
  core.String? parentTreeId;
  core.String? postalCode;
  core.String? serviceAreaId;
  core.String? serviceProviderId;
  core.String? state;
  core.String? stateCode;
  core.String? universalServiceAreaId;
  core.String? version;

  ServiceArea();

  ServiceArea.fromJson(core.Map _json) {
    if (_json.containsKey('addressLine1')) {
      addressLine1 = _json['addressLine1'] as core.String;
    }
    if (_json.containsKey('addressLine2')) {
      addressLine2 = _json['addressLine2'] as core.String;
    }
    if (_json.containsKey('addressLine3')) {
      addressLine3 = _json['addressLine3'] as core.String;
    }
    if (_json.containsKey('changeContext')) {
      changeContext = ChangeContext.fromJson(
          _json['changeContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('city')) {
      city = _json['city'] as core.String;
    }
    if (_json.containsKey('country')) {
      country = _json['country'] as core.String;
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('fullName')) {
      fullName = _json['fullName'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('parentServiceAreaId')) {
      parentServiceAreaId = _json['parentServiceAreaId'] as core.String;
    }
    if (_json.containsKey('parentTreeId')) {
      parentTreeId = _json['parentTreeId'] as core.String;
    }
    if (_json.containsKey('postalCode')) {
      postalCode = _json['postalCode'] as core.String;
    }
    if (_json.containsKey('serviceAreaId')) {
      serviceAreaId = _json['serviceAreaId'] as core.String;
    }
    if (_json.containsKey('serviceProviderId')) {
      serviceProviderId = _json['serviceProviderId'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateCode')) {
      stateCode = _json['stateCode'] as core.String;
    }
    if (_json.containsKey('universalServiceAreaId')) {
      universalServiceAreaId = _json['universalServiceAreaId'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressLine1 != null) 'addressLine1': addressLine1!,
        if (addressLine2 != null) 'addressLine2': addressLine2!,
        if (addressLine3 != null) 'addressLine3': addressLine3!,
        if (changeContext != null) 'changeContext': changeContext!.toJson(),
        if (city != null) 'city': city!,
        if (country != null) 'country': country!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (fullName != null) 'fullName': fullName!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (name != null) 'name': name!,
        if (parentServiceAreaId != null)
          'parentServiceAreaId': parentServiceAreaId!,
        if (parentTreeId != null) 'parentTreeId': parentTreeId!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (serviceAreaId != null) 'serviceAreaId': serviceAreaId!,
        if (serviceProviderId != null) 'serviceProviderId': serviceProviderId!,
        if (state != null) 'state': state!,
        if (stateCode != null) 'stateCode': stateCode!,
        if (universalServiceAreaId != null)
          'universalServiceAreaId': universalServiceAreaId!,
        if (version != null) 'version': version!,
      };
}

class ServicedAddress {
  core.String? businessName;
  core.String? floor;
  core.String? houseNumber;
  ServiceArea? serviceArea;
  core.String? servicedAddressId;

  ServicedAddress();

  ServicedAddress.fromJson(core.Map _json) {
    if (_json.containsKey('businessName')) {
      businessName = _json['businessName'] as core.String;
    }
    if (_json.containsKey('floor')) {
      floor = _json['floor'] as core.String;
    }
    if (_json.containsKey('houseNumber')) {
      houseNumber = _json['houseNumber'] as core.String;
    }
    if (_json.containsKey('serviceArea')) {
      serviceArea = ServiceArea.fromJson(
          _json['serviceArea'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('servicedAddressId')) {
      servicedAddressId = _json['servicedAddressId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (businessName != null) 'businessName': businessName!,
        if (floor != null) 'floor': floor!,
        if (houseNumber != null) 'houseNumber': houseNumber!,
        if (serviceArea != null) 'serviceArea': serviceArea!.toJson(),
        if (servicedAddressId != null) 'servicedAddressId': servicedAddressId!,
      };
}
