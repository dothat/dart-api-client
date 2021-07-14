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

/// API to access Service Providers
library serviceProvider.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to access Service Providers
class ServiceProviderApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  ServiceProviderApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = 'serviceProvider/v1/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);

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
  async.Future<ServiceProvider> createServiceProvider(
    ServiceProvider request, {
    core.List<core.String>? svcAreaIds,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (svcAreaIds != null) 'svcAreaIds': svcAreaIds,
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'serviceProviders';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ServiceProvider.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [query] - null
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
  async.Future<ServiceProviderCollection> findServiceProviders({
    core.String? query,
    core.String? svcAreaId,
    core.String? svcType,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (query != null) 'query': [query],
      if (svcAreaId != null) 'svcAreaId': [svcAreaId],
      if (svcType != null) 'svcType': [svcType],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'serviceProviders';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ServiceProviderCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  async.Future<ServiceProvider> getServiceProvider(
    core.String srvProviderId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'serviceProviders/' + commons.escapeVariable('$srvProviderId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ServiceProvider.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'serviceProviders/' +
        commons.escapeVariable('$svcProviderId') +
        '/areas';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return ServiceProvider.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    ServiceProvider request,
    core.String svcProviderId, {
    core.List<core.String>? svcAreaIds,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (svcAreaIds != null) 'svcAreaIds': svcAreaIds,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'serviceProviders/' + commons.escapeVariable('$svcProviderId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ServiceProvider.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    core.String svcProviderId,
    core.List<core.String> svcAreaIds, {
    core.String? $fields,
  }) async {
    if (svcAreaIds.isEmpty) {
      throw core.ArgumentError('Parameter svcAreaIds cannot be empty.');
    }
    final _queryParams = <core.String, core.List<core.String>>{
      'svcAreaIds': svcAreaIds,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'serviceProviders/' +
        commons.escapeVariable('$svcProviderId') +
        '/areas';

    final _response = await _requester.request(
      _url,
      'PUT',
      queryParams: _queryParams,
    );
    return ServiceProvider.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    ServiceProviderPolicy request,
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'serviceProviders/' +
        commons.escapeVariable('$svcProviderId') +
        '/policy';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return ServiceProvider.fromJson(
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

class CustomerPolicy {
  core.bool? customerNameRequired;
  core.bool? emailOrPhoneRequired;
  core.bool? emailRequired;
  core.bool? emailUnique;
  core.bool? phoneRequired;
  core.bool? phoneUnique;
  core.bool? primaryEmailUnique;
  core.bool? primaryPhoneUnique;

  CustomerPolicy();

  CustomerPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('customerNameRequired')) {
      customerNameRequired = _json['customerNameRequired'] as core.bool;
    }
    if (_json.containsKey('emailOrPhoneRequired')) {
      emailOrPhoneRequired = _json['emailOrPhoneRequired'] as core.bool;
    }
    if (_json.containsKey('emailRequired')) {
      emailRequired = _json['emailRequired'] as core.bool;
    }
    if (_json.containsKey('emailUnique')) {
      emailUnique = _json['emailUnique'] as core.bool;
    }
    if (_json.containsKey('phoneRequired')) {
      phoneRequired = _json['phoneRequired'] as core.bool;
    }
    if (_json.containsKey('phoneUnique')) {
      phoneUnique = _json['phoneUnique'] as core.bool;
    }
    if (_json.containsKey('primaryEmailUnique')) {
      primaryEmailUnique = _json['primaryEmailUnique'] as core.bool;
    }
    if (_json.containsKey('primaryPhoneUnique')) {
      primaryPhoneUnique = _json['primaryPhoneUnique'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerNameRequired != null)
          'customerNameRequired': customerNameRequired!,
        if (emailOrPhoneRequired != null)
          'emailOrPhoneRequired': emailOrPhoneRequired!,
        if (emailRequired != null) 'emailRequired': emailRequired!,
        if (emailUnique != null) 'emailUnique': emailUnique!,
        if (phoneRequired != null) 'phoneRequired': phoneRequired!,
        if (phoneUnique != null) 'phoneUnique': phoneUnique!,
        if (primaryEmailUnique != null)
          'primaryEmailUnique': primaryEmailUnique!,
        if (primaryPhoneUnique != null)
          'primaryPhoneUnique': primaryPhoneUnique!,
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

class OrderPolicy {
  core.double? orderMaxQuantity;
  core.int? orderServiceDuration;
  core.String? orderServiceDurationType;

  OrderPolicy();

  OrderPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('orderMaxQuantity')) {
      orderMaxQuantity = (_json['orderMaxQuantity'] as core.num).toDouble();
    }
    if (_json.containsKey('orderServiceDuration')) {
      orderServiceDuration = _json['orderServiceDuration'] as core.int;
    }
    if (_json.containsKey('orderServiceDurationType')) {
      orderServiceDurationType =
          _json['orderServiceDurationType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (orderMaxQuantity != null) 'orderMaxQuantity': orderMaxQuantity!,
        if (orderServiceDuration != null)
          'orderServiceDuration': orderServiceDuration!,
        if (orderServiceDurationType != null)
          'orderServiceDurationType': orderServiceDurationType!,
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

class ServiceProvider {
  core.DateTime? creationTimestamp;
  core.List<EmailAddress>? emailAddresses;
  core.DateTime? modificationTimestamp;
  core.String? name;
  core.List<PhoneNumber>? phoneNumbers;
  ServiceProviderPolicy? policy;
  core.List<ServiceArea>? serviceAreas;
  core.String? serviceProviderId;
  core.String? serviceType;
  core.String? version;

  ServiceProvider();

  ServiceProvider.fromJson(core.Map _json) {
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
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
    if (_json.containsKey('policy')) {
      policy = ServiceProviderPolicy.fromJson(
          _json['policy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('serviceAreas')) {
      serviceAreas = (_json['serviceAreas'] as core.List)
          .map<ServiceArea>((value) => ServiceArea.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('serviceProviderId')) {
      serviceProviderId = _json['serviceProviderId'] as core.String;
    }
    if (_json.containsKey('serviceType')) {
      serviceType = _json['serviceType'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (emailAddresses != null)
          'emailAddresses':
              emailAddresses!.map((value) => value.toJson()).toList(),
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (name != null) 'name': name!,
        if (phoneNumbers != null)
          'phoneNumbers': phoneNumbers!.map((value) => value.toJson()).toList(),
        if (policy != null) 'policy': policy!.toJson(),
        if (serviceAreas != null)
          'serviceAreas': serviceAreas!.map((value) => value.toJson()).toList(),
        if (serviceProviderId != null) 'serviceProviderId': serviceProviderId!,
        if (serviceType != null) 'serviceType': serviceType!,
        if (version != null) 'version': version!,
      };
}

class ServiceProviderCollection {
  core.List<ServiceProvider>? items;

  ServiceProviderCollection();

  ServiceProviderCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<ServiceProvider>((value) => ServiceProvider.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}

class ServiceProviderPolicy {
  CustomerPolicy? customerPolicy;
  OrderPolicy? orderPolicy;

  ServiceProviderPolicy();

  ServiceProviderPolicy.fromJson(core.Map _json) {
    if (_json.containsKey('customerPolicy')) {
      customerPolicy = CustomerPolicy.fromJson(
          _json['customerPolicy'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('orderPolicy')) {
      orderPolicy = OrderPolicy.fromJson(
          _json['orderPolicy'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (customerPolicy != null) 'customerPolicy': customerPolicy!.toJson(),
        if (orderPolicy != null) 'orderPolicy': orderPolicy!.toJson(),
      };
}
