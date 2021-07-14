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

/// API to access Users
library users.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to access Users
class UsersApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  UsersApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = 'users/v1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);

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
    UserAddress request,
    core.String usrId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'users/' + commons.escapeVariable('$usrId') + '/addresses';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return UserAddress.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    EmailAddress request,
    core.String usrId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'users/' + commons.escapeVariable('$usrId') + '/emailAddresses';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return EmailAddress.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    PhoneNumber request,
    core.String usrId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'users/' + commons.escapeVariable('$usrId') + '/phoneNumbers';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PhoneNumber.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<User> createUser(
    User request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'users';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return User.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  async.Future<UserCollection> findUsers(
    core.String query, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'users';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return UserCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<User> getUser(
    core.String usrId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'users/' + commons.escapeVariable('$usrId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return User.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String usrId,
    core.String addrId,
    core.bool expunge, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'expunge': ['${expunge}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'users/' +
        commons.escapeVariable('$usrId') +
        '/addresses/' +
        commons.escapeVariable('$addrId');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return UserAddress.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.String usrId,
    core.String emailAddr,
    core.bool expunge, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'expunge': ['${expunge}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'users/' +
        commons.escapeVariable('$usrId') +
        '/emailAddresses/' +
        commons.escapeVariable('$emailAddr');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return EmailAddress.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.String usrId,
    core.String phoneNum,
    core.bool expunge, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'expunge': ['${expunge}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'users/' +
        commons.escapeVariable('$usrId') +
        '/phoneNumbers/' +
        commons.escapeVariable('$phoneNum');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return PhoneNumber.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<User> updateUser(
    User request,
    core.String usrId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'users/' + commons.escapeVariable('$usrId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return User.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    UserAddress request,
    core.String usrId,
    core.String addrId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'users/' +
        commons.escapeVariable('$usrId') +
        '/addresses/' +
        commons.escapeVariable('$addrId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return UserAddress.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    EmailAddress request,
    core.String usrId,
    core.String emailAddr, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'users/' +
        commons.escapeVariable('$usrId') +
        '/emailAddresses/' +
        commons.escapeVariable('$emailAddr');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return EmailAddress.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    PhoneNumber request,
    core.String usrId,
    core.String phoneNum, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'users/' +
        commons.escapeVariable('$usrId') +
        '/phoneNumbers/' +
        commons.escapeVariable('$phoneNum');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return PhoneNumber.fromJson(
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

class User {
  core.bool? active;
  core.List<UserAddress>? addresses;
  core.DateTime? creationTimestamp;
  core.bool? deleted;
  core.List<EmailAddress>? emailAddresses;
  core.DateTime? modificationTimestamp;
  core.String? name;
  core.List<PhoneNumber>? phoneNumbers;
  core.String? userId;
  core.String? verificationStatus;
  core.String? version;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('addresses')) {
      addresses = (_json['addresses'] as core.List)
          .map<UserAddress>((value) => UserAddress.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
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
    if (_json.containsKey('userId')) {
      userId = _json['userId'] as core.String;
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
        if (addresses != null)
          'addresses': addresses!.map((value) => value.toJson()).toList(),
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (deleted != null) 'deleted': deleted!,
        if (emailAddresses != null)
          'emailAddresses':
              emailAddresses!.map((value) => value.toJson()).toList(),
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (name != null) 'name': name!,
        if (phoneNumbers != null)
          'phoneNumbers': phoneNumbers!.map((value) => value.toJson()).toList(),
        if (userId != null) 'userId': userId!,
        if (verificationStatus != null)
          'verificationStatus': verificationStatus!,
        if (version != null) 'version': version!,
      };
}

class UserAddress {
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

  UserAddress();

  UserAddress.fromJson(core.Map _json) {
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

class UserCollection {
  core.List<User>? items;

  UserCollection();

  UserCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<User>((value) =>
              User.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}
