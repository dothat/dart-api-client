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

/// API to access Routes
library route.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to access Routes
class RouteApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  RouteApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = 'route/v1/serviceProviders/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Route].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Route> createRoute(
    Route request,
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/routes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Route.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RouteCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RouteCollection> findRoutes(
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/routes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RouteCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [rtId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Route].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Route> getRoute(
    core.String svcProviderId,
    core.String rtId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/routes/' +
        commons.escapeVariable('$rtId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Route.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [rtId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RouteAddressList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RouteAddressList> getRouteAddressList(
    core.String svcProviderId,
    core.String rtId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/routes/' +
        commons.escapeVariable('$rtId') +
        '/addresses';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return RouteAddressList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [rtId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Route].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Route> updateRoute(
    Route request,
    core.String svcProviderId,
    core.String rtId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/routes/' +
        commons.escapeVariable('$rtId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Route.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [rtId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RouteAddressList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RouteAddressList> updateRouteAddressList(
    RouteAddressList request,
    core.String svcProviderId,
    core.String rtId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/routes/' +
        commons.escapeVariable('$rtId') +
        '/addresses';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return RouteAddressList.fromJson(
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

class DeliveryInstruction {
  core.String? notes;

  DeliveryInstruction();

  DeliveryInstruction.fromJson(core.Map _json) {
    if (_json.containsKey('notes')) {
      notes = _json['notes'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (notes != null) 'notes': notes!,
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

class Route {
  core.bool? active;
  ChangeContext? changeContext;
  core.DateTime? creationTimestamp;
  core.bool? deleted;
  RouteSchedule? deliverySchedule;
  core.DateTime? modificationTimestamp;
  core.String? name;
  core.String? routeCode;
  core.String? routeId;
  core.String? version;

  Route();

  Route.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
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
    if (_json.containsKey('deliverySchedule')) {
      deliverySchedule = RouteSchedule.fromJson(
          _json['deliverySchedule'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('routeCode')) {
      routeCode = _json['routeCode'] as core.String;
    }
    if (_json.containsKey('routeId')) {
      routeId = _json['routeId'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (active != null) 'active': active!,
        if (changeContext != null) 'changeContext': changeContext!.toJson(),
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (deleted != null) 'deleted': deleted!,
        if (deliverySchedule != null)
          'deliverySchedule': deliverySchedule!.toJson(),
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (name != null) 'name': name!,
        if (routeCode != null) 'routeCode': routeCode!,
        if (routeId != null) 'routeId': routeId!,
        if (version != null) 'version': version!,
      };
}

class RouteAddress {
  CustomerAddress? address;
  core.String? addressId;
  core.DateTime? creationTimestamp;
  Customer? customer;
  core.String? customerId;
  DeliveryInstruction? deliveryInstruction;
  core.DateTime? modificationTimestamp;
  Route? route;
  core.String? routeAddressId;
  core.String? routeId;
  core.int? routeOrder;
  core.String? version;

  RouteAddress();

  RouteAddress.fromJson(core.Map _json) {
    if (_json.containsKey('address')) {
      address = CustomerAddress.fromJson(
          _json['address'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('addressId')) {
      addressId = _json['addressId'] as core.String;
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('customer')) {
      customer = Customer.fromJson(
          _json['customer'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('deliveryInstruction')) {
      deliveryInstruction = DeliveryInstruction.fromJson(
          _json['deliveryInstruction'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('route')) {
      route =
          Route.fromJson(_json['route'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('routeAddressId')) {
      routeAddressId = _json['routeAddressId'] as core.String;
    }
    if (_json.containsKey('routeId')) {
      routeId = _json['routeId'] as core.String;
    }
    if (_json.containsKey('routeOrder')) {
      routeOrder = _json['routeOrder'] as core.int;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!.toJson(),
        if (addressId != null) 'addressId': addressId!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (customer != null) 'customer': customer!.toJson(),
        if (customerId != null) 'customerId': customerId!,
        if (deliveryInstruction != null)
          'deliveryInstruction': deliveryInstruction!.toJson(),
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (route != null) 'route': route!.toJson(),
        if (routeAddressId != null) 'routeAddressId': routeAddressId!,
        if (routeId != null) 'routeId': routeId!,
        if (routeOrder != null) 'routeOrder': routeOrder!,
        if (version != null) 'version': version!,
      };
}

class RouteAddressList {
  core.List<RouteAddress>? addresses;
  ChangeContext? changeContext;
  Route? route;
  core.String? routeId;

  RouteAddressList();

  RouteAddressList.fromJson(core.Map _json) {
    if (_json.containsKey('addresses')) {
      addresses = (_json['addresses'] as core.List)
          .map<RouteAddress>((value) => RouteAddress.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('changeContext')) {
      changeContext = ChangeContext.fromJson(
          _json['changeContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('route')) {
      route =
          Route.fromJson(_json['route'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('routeId')) {
      routeId = _json['routeId'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (addresses != null)
          'addresses': addresses!.map((value) => value.toJson()).toList(),
        if (changeContext != null) 'changeContext': changeContext!.toJson(),
        if (route != null) 'route': route!.toJson(),
        if (routeId != null) 'routeId': routeId!,
      };
}

class RouteCollection {
  core.List<Route>? items;

  RouteCollection();

  RouteCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Route>((value) =>
              Route.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}

class RouteSchedule {
  core.String? policyType;
  core.String? scheduleType;

  RouteSchedule();

  RouteSchedule.fromJson(core.Map _json) {
    if (_json.containsKey('policyType')) {
      policyType = _json['policyType'] as core.String;
    }
    if (_json.containsKey('scheduleType')) {
      scheduleType = _json['scheduleType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (policyType != null) 'policyType': policyType!,
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
