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

/// API to access Subscriptions
library subscription.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to access Subscriptions
class SubscriptionApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  SubscriptionApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = 'subscription/v1/serviceProviders/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);

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
    Subscription request,
    core.String svcProviderId,
    core.String custId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/subscriptions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<void> deleteSubscription(
    core.String svcProviderId,
    core.String custId,
    core.String subId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/subscriptions/' +
        commons.escapeVariable('$subId');

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [endDate] - null
  ///
  /// [startDate] - null
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
    core.DateTime endDate,
    core.DateTime startDate, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'endDate': [
        "${(endDate).year.toString().padLeft(4, '0')}-${(endDate).month.toString().padLeft(2, '0')}-${(endDate).day.toString().padLeft(2, '0')}"
      ],
      'startDate': [
        "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}"
      ],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/subscriptions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SubscriptionCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [endDate] - null
  ///
  /// [startDate] - null
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
    core.String svcProviderId,
    core.DateTime endDate,
    core.DateTime startDate, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'endDate': [
        "${(endDate).year.toString().padLeft(4, '0')}-${(endDate).month.toString().padLeft(2, '0')}-${(endDate).day.toString().padLeft(2, '0')}"
      ],
      'startDate': [
        "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}"
      ],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/subscriptions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SubscriptionCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.String svcProviderId,
    core.String custId,
    core.String subId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/subscriptions/' +
        commons.escapeVariable('$subId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [subStatus] - null
  /// Possible string values are:
  /// - "ACTIVE"
  /// - "PAUSED"
  /// - "STOPPED"
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
  async.Future<Subscription> lookupSubscription(
    core.String svcProviderId,
    core.String custId,
    core.String subStatus,
    core.DateTime startDate, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'startDate': [
        "${(startDate).year.toString().padLeft(4, '0')}-${(startDate).month.toString().padLeft(2, '0')}-${(startDate).day.toString().padLeft(2, '0')}"
      ],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/subscriptions/status/' +
        commons.escapeVariable('$subStatus');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<Subscription> updateSubscription(
    Subscription request,
    core.String svcProviderId,
    core.String custId,
    core.String subId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/subscriptions/' +
        commons.escapeVariable('$subId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Subscription.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class Amount {
  core.String? currency;
  core.double? value;

  Amount();

  Amount.fromJson(core.Map _json) {
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = (_json['value'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (currency != null) 'currency': currency!,
        if (value != null) 'value': value!,
      };
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

class DeliveryPreference {
  CustomerAddress? address;
  core.String? customerAddressId;

  DeliveryPreference();

  DeliveryPreference.fromJson(core.Map _json) {
    if (_json.containsKey('address')) {
      address = CustomerAddress.fromJson(
          _json['address'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('customerAddressId')) {
      customerAddressId = _json['customerAddressId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!.toJson(),
        if (customerAddressId != null) 'customerAddressId': customerAddressId!,
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

class Measurement {
  core.double? quantity;
  core.String? quantityUnit;
  core.String? unitName;

  Measurement();

  Measurement.fromJson(core.Map _json) {
    if (_json.containsKey('quantity')) {
      quantity = (_json['quantity'] as core.num).toDouble();
    }
    if (_json.containsKey('quantityUnit')) {
      quantityUnit = _json['quantityUnit'] as core.String;
    }
    if (_json.containsKey('unitName')) {
      unitName = _json['unitName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (quantity != null) 'quantity': quantity!,
        if (quantityUnit != null) 'quantityUnit': quantityUnit!,
        if (unitName != null) 'unitName': unitName!,
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

class Product {
  core.bool? active;
  ProductAvailability? availability;
  core.String? category;
  ChangeContext? changeContext;
  core.DateTime? creationTimestamp;
  core.bool? deleted;
  core.String? description;
  core.int? displayRank;
  core.List<ProductImage>? images;
  core.double? measurementQuantity;
  core.String? measurementUnit;
  core.DateTime? modificationTimestamp;
  core.String? name;
  core.List<ProductPrice>? prices;
  ProductCategory? productCategory;
  core.String? productCode;
  ProductGroup? productGroup;
  core.String? productId;
  core.double? quantity;
  core.String? quantityLabel;
  core.String? quantityUnit;
  core.String? serviceProviderId;
  core.String? version;
  ProductVisibility? visibility;

  Product();

  Product.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('availability')) {
      availability = ProductAvailability.fromJson(
          _json['availability'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('category')) {
      category = _json['category'] as core.String;
    }
    if (_json.containsKey('changeContext')) {
      changeContext = ChangeContext.fromJson(
          _json['changeContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('displayRank')) {
      displayRank = _json['displayRank'] as core.int;
    }
    if (_json.containsKey('images')) {
      images = (_json['images'] as core.List)
          .map<ProductImage>((value) => ProductImage.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('measurementQuantity')) {
      measurementQuantity =
          (_json['measurementQuantity'] as core.num).toDouble();
    }
    if (_json.containsKey('measurementUnit')) {
      measurementUnit = _json['measurementUnit'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('prices')) {
      prices = (_json['prices'] as core.List)
          .map<ProductPrice>((value) => ProductPrice.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('productCategory')) {
      productCategory = ProductCategory.fromJson(
          _json['productCategory'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('productCode')) {
      productCode = _json['productCode'] as core.String;
    }
    if (_json.containsKey('productGroup')) {
      productGroup = ProductGroup.fromJson(
          _json['productGroup'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('productId')) {
      productId = _json['productId'] as core.String;
    }
    if (_json.containsKey('quantity')) {
      quantity = (_json['quantity'] as core.num).toDouble();
    }
    if (_json.containsKey('quantityLabel')) {
      quantityLabel = _json['quantityLabel'] as core.String;
    }
    if (_json.containsKey('quantityUnit')) {
      quantityUnit = _json['quantityUnit'] as core.String;
    }
    if (_json.containsKey('serviceProviderId')) {
      serviceProviderId = _json['serviceProviderId'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
    if (_json.containsKey('visibility')) {
      visibility = ProductVisibility.fromJson(
          _json['visibility'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (availability != null) 'availability': availability!.toJson(),
        if (category != null) 'category': category!,
        if (changeContext != null) 'changeContext': changeContext!.toJson(),
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (deleted != null) 'deleted': deleted!,
        if (description != null) 'description': description!,
        if (displayRank != null) 'displayRank': displayRank!,
        if (images != null)
          'images': images!.map((value) => value.toJson()).toList(),
        if (measurementQuantity != null)
          'measurementQuantity': measurementQuantity!,
        if (measurementUnit != null) 'measurementUnit': measurementUnit!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (name != null) 'name': name!,
        if (prices != null)
          'prices': prices!.map((value) => value.toJson()).toList(),
        if (productCategory != null)
          'productCategory': productCategory!.toJson(),
        if (productCode != null) 'productCode': productCode!,
        if (productGroup != null) 'productGroup': productGroup!.toJson(),
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
        if (quantityLabel != null) 'quantityLabel': quantityLabel!,
        if (quantityUnit != null) 'quantityUnit': quantityUnit!,
        if (serviceProviderId != null) 'serviceProviderId': serviceProviderId!,
        if (version != null) 'version': version!,
        if (visibility != null) 'visibility': visibility!.toJson(),
      };
}

class ProductAvailability {
  core.DateTime? availableFrom;
  core.DateTime? availableUntil;
  Schedule? schedule;

  ProductAvailability();

  ProductAvailability.fromJson(core.Map _json) {
    if (_json.containsKey('availableFrom')) {
      availableFrom =
          core.DateTime.parse(_json['availableFrom'] as core.String);
    }
    if (_json.containsKey('availableUntil')) {
      availableUntil =
          core.DateTime.parse(_json['availableUntil'] as core.String);
    }
    if (_json.containsKey('schedule')) {
      schedule = Schedule.fromJson(
          _json['schedule'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableFrom != null)
          'availableFrom':
              "${(availableFrom!).year.toString().padLeft(4, '0')}-${(availableFrom!).month.toString().padLeft(2, '0')}-${(availableFrom!).day.toString().padLeft(2, '0')}",
        if (availableUntil != null)
          'availableUntil':
              "${(availableUntil!).year.toString().padLeft(4, '0')}-${(availableUntil!).month.toString().padLeft(2, '0')}-${(availableUntil!).day.toString().padLeft(2, '0')}",
        if (schedule != null) 'schedule': schedule!.toJson(),
      };
}

class ProductCategory {
  core.String? categoryName;
  core.List<ProductImage>? images;

  ProductCategory();

  ProductCategory.fromJson(core.Map _json) {
    if (_json.containsKey('categoryName')) {
      categoryName = _json['categoryName'] as core.String;
    }
    if (_json.containsKey('images')) {
      images = (_json['images'] as core.List)
          .map<ProductImage>((value) => ProductImage.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (categoryName != null) 'categoryName': categoryName!,
        if (images != null)
          'images': images!.map((value) => value.toJson()).toList(),
      };
}

class ProductGroup {
  core.String? groupDescription;
  core.String? groupName;
  core.List<ProductImage>? images;

  ProductGroup();

  ProductGroup.fromJson(core.Map _json) {
    if (_json.containsKey('groupDescription')) {
      groupDescription = _json['groupDescription'] as core.String;
    }
    if (_json.containsKey('groupName')) {
      groupName = _json['groupName'] as core.String;
    }
    if (_json.containsKey('images')) {
      images = (_json['images'] as core.List)
          .map<ProductImage>((value) => ProductImage.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupDescription != null) 'groupDescription': groupDescription!,
        if (groupName != null) 'groupName': groupName!,
        if (images != null)
          'images': images!.map((value) => value.toJson()).toList(),
      };
}

class ProductImage {
  core.String? assetName;
  core.String? imageType;
  core.String? imageUrl;

  ProductImage();

  ProductImage.fromJson(core.Map _json) {
    if (_json.containsKey('assetName')) {
      assetName = _json['assetName'] as core.String;
    }
    if (_json.containsKey('imageType')) {
      imageType = _json['imageType'] as core.String;
    }
    if (_json.containsKey('imageUrl')) {
      imageUrl = _json['imageUrl'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (assetName != null) 'assetName': assetName!,
        if (imageType != null) 'imageType': imageType!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
      };
}

class ProductPrice {
  Amount? amount;
  core.double? duration;
  core.String? durationType;
  Measurement? measurement;
  Schedule? schedule;

  ProductPrice();

  ProductPrice.fromJson(core.Map _json) {
    if (_json.containsKey('amount')) {
      amount = Amount.fromJson(
          _json['amount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('duration')) {
      duration = (_json['duration'] as core.num).toDouble();
    }
    if (_json.containsKey('durationType')) {
      durationType = _json['durationType'] as core.String;
    }
    if (_json.containsKey('measurement')) {
      measurement = Measurement.fromJson(
          _json['measurement'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('schedule')) {
      schedule = Schedule.fromJson(
          _json['schedule'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!.toJson(),
        if (duration != null) 'duration': duration!,
        if (durationType != null) 'durationType': durationType!,
        if (measurement != null) 'measurement': measurement!.toJson(),
        if (schedule != null) 'schedule': schedule!.toJson(),
      };
}

class ProductVisibility {
  core.bool? visibleOnlyForServiceProvider;
  core.bool? visibleOnlyForWhiteListedCustomers;

  ProductVisibility();

  ProductVisibility.fromJson(core.Map _json) {
    if (_json.containsKey('visibleOnlyForServiceProvider')) {
      visibleOnlyForServiceProvider =
          _json['visibleOnlyForServiceProvider'] as core.bool;
    }
    if (_json.containsKey('visibleOnlyForWhiteListedCustomers')) {
      visibleOnlyForWhiteListedCustomers =
          _json['visibleOnlyForWhiteListedCustomers'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (visibleOnlyForServiceProvider != null)
          'visibleOnlyForServiceProvider': visibleOnlyForServiceProvider!,
        if (visibleOnlyForWhiteListedCustomers != null)
          'visibleOnlyForWhiteListedCustomers':
              visibleOnlyForWhiteListedCustomers!,
      };
}

class Schedule {
  core.List<core.String>? daysOfWeek;
  core.int? frequency;
  core.String? frequencyType;
  core.List<ScheduleRestriction>? restrictions;
  core.String? scheduleType;

  Schedule();

  Schedule.fromJson(core.Map _json) {
    if (_json.containsKey('daysOfWeek')) {
      daysOfWeek = (_json['daysOfWeek'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('frequency')) {
      frequency = _json['frequency'] as core.int;
    }
    if (_json.containsKey('frequencyType')) {
      frequencyType = _json['frequencyType'] as core.String;
    }
    if (_json.containsKey('restrictions')) {
      restrictions = (_json['restrictions'] as core.List)
          .map<ScheduleRestriction>((value) => ScheduleRestriction.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('scheduleType')) {
      scheduleType = _json['scheduleType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysOfWeek != null) 'daysOfWeek': daysOfWeek!,
        if (frequency != null) 'frequency': frequency!,
        if (frequencyType != null) 'frequencyType': frequencyType!,
        if (restrictions != null)
          'restrictions': restrictions!.map((value) => value.toJson()).toList(),
        if (scheduleType != null) 'scheduleType': scheduleType!,
      };
}

class ScheduleRestriction {
  core.List<core.String>? daysOfWeek;
  core.String? scheduleType;

  ScheduleRestriction();

  ScheduleRestriction.fromJson(core.Map _json) {
    if (_json.containsKey('daysOfWeek')) {
      daysOfWeek = (_json['daysOfWeek'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('scheduleType')) {
      scheduleType = _json['scheduleType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysOfWeek != null) 'daysOfWeek': daysOfWeek!,
        if (scheduleType != null) 'scheduleType': scheduleType!,
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

class Subscription {
  ChangeContext? changeContext;
  core.DateTime? creationTimestamp;
  Customer? customer;
  core.bool? deleted;
  core.DateTime? endDate;
  core.String? instructionType;
  core.DateTime? modificationTimestamp;
  core.DateTime? startDate;
  core.String? subscriptionId;
  core.List<SubscriptionItem>? subscriptionItems;
  core.String? subscriptionStatus;
  core.String? version;

  Subscription();

  Subscription.fromJson(core.Map _json) {
    if (_json.containsKey('changeContext')) {
      changeContext = ChangeContext.fromJson(
          _json['changeContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('customer')) {
      customer = Customer.fromJson(
          _json['customer'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('deleted')) {
      deleted = _json['deleted'] as core.bool;
    }
    if (_json.containsKey('endDate')) {
      endDate = core.DateTime.parse(_json['endDate'] as core.String);
    }
    if (_json.containsKey('instructionType')) {
      instructionType = _json['instructionType'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('startDate')) {
      startDate = core.DateTime.parse(_json['startDate'] as core.String);
    }
    if (_json.containsKey('subscriptionId')) {
      subscriptionId = _json['subscriptionId'] as core.String;
    }
    if (_json.containsKey('subscriptionItems')) {
      subscriptionItems = (_json['subscriptionItems'] as core.List)
          .map<SubscriptionItem>((value) => SubscriptionItem.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('subscriptionStatus')) {
      subscriptionStatus = _json['subscriptionStatus'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (changeContext != null) 'changeContext': changeContext!.toJson(),
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (customer != null) 'customer': customer!.toJson(),
        if (deleted != null) 'deleted': deleted!,
        if (endDate != null)
          'endDate':
              "${(endDate!).year.toString().padLeft(4, '0')}-${(endDate!).month.toString().padLeft(2, '0')}-${(endDate!).day.toString().padLeft(2, '0')}",
        if (instructionType != null) 'instructionType': instructionType!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (startDate != null)
          'startDate':
              "${(startDate!).year.toString().padLeft(4, '0')}-${(startDate!).month.toString().padLeft(2, '0')}-${(startDate!).day.toString().padLeft(2, '0')}",
        if (subscriptionId != null) 'subscriptionId': subscriptionId!,
        if (subscriptionItems != null)
          'subscriptionItems':
              subscriptionItems!.map((value) => value.toJson()).toList(),
        if (subscriptionStatus != null)
          'subscriptionStatus': subscriptionStatus!,
        if (version != null) 'version': version!,
      };
}

class SubscriptionCollection {
  core.List<Subscription>? items;

  SubscriptionCollection();

  SubscriptionCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Subscription>((value) => Subscription.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}

class SubscriptionItem {
  DeliveryPreference? deliveryPreference;
  core.String? instructionType;
  Product? product;
  core.String? productId;
  core.double? quantity;
  Schedule? schedule;
  core.List<SubscriptionItemSlot>? slots;
  core.int? totalSlots;

  SubscriptionItem();

  SubscriptionItem.fromJson(core.Map _json) {
    if (_json.containsKey('deliveryPreference')) {
      deliveryPreference = DeliveryPreference.fromJson(
          _json['deliveryPreference'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('instructionType')) {
      instructionType = _json['instructionType'] as core.String;
    }
    if (_json.containsKey('product')) {
      product = Product.fromJson(
          _json['product'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('productId')) {
      productId = _json['productId'] as core.String;
    }
    if (_json.containsKey('quantity')) {
      quantity = (_json['quantity'] as core.num).toDouble();
    }
    if (_json.containsKey('schedule')) {
      schedule = Schedule.fromJson(
          _json['schedule'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('slots')) {
      slots = (_json['slots'] as core.List)
          .map<SubscriptionItemSlot>((value) => SubscriptionItemSlot.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('totalSlots')) {
      totalSlots = _json['totalSlots'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (deliveryPreference != null)
          'deliveryPreference': deliveryPreference!.toJson(),
        if (instructionType != null) 'instructionType': instructionType!,
        if (product != null) 'product': product!.toJson(),
        if (productId != null) 'productId': productId!,
        if (quantity != null) 'quantity': quantity!,
        if (schedule != null) 'schedule': schedule!.toJson(),
        if (slots != null)
          'slots': slots!.map((value) => value.toJson()).toList(),
        if (totalSlots != null) 'totalSlots': totalSlots!,
      };
}

class SubscriptionItemSlot {
  core.double? quantity;
  core.int? slotNumber;

  SubscriptionItemSlot();

  SubscriptionItemSlot.fromJson(core.Map _json) {
    if (_json.containsKey('quantity')) {
      quantity = (_json['quantity'] as core.num).toDouble();
    }
    if (_json.containsKey('slotNumber')) {
      slotNumber = _json['slotNumber'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (quantity != null) 'quantity': quantity!,
        if (slotNumber != null) 'slotNumber': slotNumber!,
      };
}
