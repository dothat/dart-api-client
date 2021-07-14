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

/// API to access Invoices
library invoice.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to access Invoices
class InvoiceApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  InvoiceApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = 'invoice/v1/serviceProviders/'})
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
  /// Completes with a [Invoice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invoice> createInvoice(
    Invoice request,
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
        '/invoices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Invoice.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [InvoiceTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InvoiceTemplate> createInvoiceTemplate(
    InvoiceTemplate request,
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        commons.escapeVariable('$svcProviderId') + '/invoices/templates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return InvoiceTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [invId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<void> deleteInvoice(
    core.String svcProviderId,
    core.String custId,
    core.String invId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/invoices/' +
        commons.escapeVariable('$invId');

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
  /// [minEndDate] - null
  ///
  /// [maxEndDate] - null
  ///
  /// [filterType] - null
  ///
  /// [filterValue] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InvoiceCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InvoiceCollection> findAllInvoices(
    core.String svcProviderId,
    core.DateTime minEndDate,
    core.DateTime maxEndDate, {
    core.String? filterType,
    core.List<core.String>? filterValue,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filterType != null) 'filterType': [filterType],
      if (filterValue != null) 'filterValue': filterValue,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/invoices/from/' +
        commons.escapeVariable('$minEndDate') +
        '/until/' +
        commons.escapeVariable('$maxEndDate');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return InvoiceCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [Invoice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invoice> findCurrentInvoice(
    core.String svcProviderId,
    core.String custId,
    core.DateTime startDate,
    core.DateTime endDate, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/invoices/from/' +
        commons.escapeVariable('$startDate') +
        '/until/' +
        commons.escapeVariable('$endDate');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Invoice.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [shortUrlCode] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Invoice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invoice> findInvoice(
    core.String svcProviderId,
    core.String shortUrlCode, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/invoices/' +
        commons.escapeVariable('$shortUrlCode');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Invoice.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [invoiceDate] - null
  ///
  /// [templateName] - null
  ///
  /// [templateVerName] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InvoiceTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InvoiceTemplate> findInvoiceTemplate(
    core.String svcProviderId, {
    core.DateTime? invoiceDate,
    core.String? templateName,
    core.String? templateVerName,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (invoiceDate != null)
        'invoiceDate': [
          "${(invoiceDate).year.toString().padLeft(4, '0')}-${(invoiceDate).month.toString().padLeft(2, '0')}-${(invoiceDate).day.toString().padLeft(2, '0')}"
        ],
      if (templateName != null) 'templateName': [templateName],
      if (templateVerName != null) 'templateVerName': [templateVerName],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        commons.escapeVariable('$svcProviderId') + '/invoices/templates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return InvoiceTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [invId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Invoice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invoice> getInvoice(
    core.String svcProviderId,
    core.String custId,
    core.String invId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/invoices/' +
        commons.escapeVariable('$invId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Invoice.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [templateId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InvoiceTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InvoiceTemplate> getInvoiceTemplate(
    core.String svcProviderId,
    core.String templateId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/invoices/templates/' +
        commons.escapeVariable('$templateId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return InvoiceTemplate.fromJson(
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
  /// [invId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Invoice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Invoice> updateInvoice(
    Invoice request,
    core.String svcProviderId,
    core.String custId,
    core.String invId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/invoices/' +
        commons.escapeVariable('$invId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Invoice.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [templateId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InvoiceTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InvoiceTemplate> updateInvoiceTemplate(
    InvoiceTemplate request,
    core.String svcProviderId,
    core.String templateId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/invoices/templates/' +
        commons.escapeVariable('$templateId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return InvoiceTemplate.fromJson(
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

class BillingAddress {
  core.String? addressLine1;
  core.String? addressLine2;
  core.String? addressLine3;
  core.String? city;
  core.String? state;

  BillingAddress();

  BillingAddress.fromJson(core.Map _json) {
    if (_json.containsKey('addressLine1')) {
      addressLine1 = _json['addressLine1'] as core.String;
    }
    if (_json.containsKey('addressLine2')) {
      addressLine2 = _json['addressLine2'] as core.String;
    }
    if (_json.containsKey('addressLine3')) {
      addressLine3 = _json['addressLine3'] as core.String;
    }
    if (_json.containsKey('city')) {
      city = _json['city'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressLine1 != null) 'addressLine1': addressLine1!,
        if (addressLine2 != null) 'addressLine2': addressLine2!,
        if (addressLine3 != null) 'addressLine3': addressLine3!,
        if (city != null) 'city': city!,
        if (state != null) 'state': state!,
      };
}

class BillingPeriod {
  core.DateTime? endDate;
  core.String? label;
  core.DateTime? startDate;

  BillingPeriod();

  BillingPeriod.fromJson(core.Map _json) {
    if (_json.containsKey('endDate')) {
      endDate = core.DateTime.parse(_json['endDate'] as core.String);
    }
    if (_json.containsKey('label')) {
      label = _json['label'] as core.String;
    }
    if (_json.containsKey('startDate')) {
      startDate = core.DateTime.parse(_json['startDate'] as core.String);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null)
          'endDate':
              "${(endDate!).year.toString().padLeft(4, '0')}-${(endDate!).month.toString().padLeft(2, '0')}-${(endDate!).day.toString().padLeft(2, '0')}",
        if (label != null) 'label': label!,
        if (startDate != null)
          'startDate':
              "${(startDate!).year.toString().padLeft(4, '0')}-${(startDate!).month.toString().padLeft(2, '0')}-${(startDate!).day.toString().padLeft(2, '0')}",
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

class Invoice {
  core.String? accountName;
  core.List<InvoiceAttribute>? attributes;
  BillingAddress? billingAddress;
  BillingPeriod? billingPeriod;
  core.DateTime? creationTimestamp;
  Customer? customer;
  core.String? customerId;
  Amount? dueAmount;
  core.DateTime? dueDate;
  core.DateTime? invoiceDate;
  core.String? invoiceId;
  core.String? invoiceNumber;
  core.String? invoiceState;
  core.String? invoiceStatus;
  core.String? invoiceType;
  core.List<InvoiceLineItem>? lineItems;
  core.DateTime? modificationTimestamp;
  core.String? paymentStatus;
  core.String? shortUrlCode;
  core.String? version;

  Invoice();

  Invoice.fromJson(core.Map _json) {
    if (_json.containsKey('accountName')) {
      accountName = _json['accountName'] as core.String;
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<InvoiceAttribute>((value) => InvoiceAttribute.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('billingAddress')) {
      billingAddress = BillingAddress.fromJson(
          _json['billingAddress'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('billingPeriod')) {
      billingPeriod = BillingPeriod.fromJson(
          _json['billingPeriod'] as core.Map<core.String, core.dynamic>);
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
    if (_json.containsKey('dueAmount')) {
      dueAmount = Amount.fromJson(
          _json['dueAmount'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dueDate')) {
      dueDate = core.DateTime.parse(_json['dueDate'] as core.String);
    }
    if (_json.containsKey('invoiceDate')) {
      invoiceDate = core.DateTime.parse(_json['invoiceDate'] as core.String);
    }
    if (_json.containsKey('invoiceId')) {
      invoiceId = _json['invoiceId'] as core.String;
    }
    if (_json.containsKey('invoiceNumber')) {
      invoiceNumber = _json['invoiceNumber'] as core.String;
    }
    if (_json.containsKey('invoiceState')) {
      invoiceState = _json['invoiceState'] as core.String;
    }
    if (_json.containsKey('invoiceStatus')) {
      invoiceStatus = _json['invoiceStatus'] as core.String;
    }
    if (_json.containsKey('invoiceType')) {
      invoiceType = _json['invoiceType'] as core.String;
    }
    if (_json.containsKey('lineItems')) {
      lineItems = (_json['lineItems'] as core.List)
          .map<InvoiceLineItem>((value) => InvoiceLineItem.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('paymentStatus')) {
      paymentStatus = _json['paymentStatus'] as core.String;
    }
    if (_json.containsKey('shortUrlCode')) {
      shortUrlCode = _json['shortUrlCode'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountName != null) 'accountName': accountName!,
        if (attributes != null)
          'attributes': attributes!.map((value) => value.toJson()).toList(),
        if (billingAddress != null) 'billingAddress': billingAddress!.toJson(),
        if (billingPeriod != null) 'billingPeriod': billingPeriod!.toJson(),
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (customer != null) 'customer': customer!.toJson(),
        if (customerId != null) 'customerId': customerId!,
        if (dueAmount != null) 'dueAmount': dueAmount!.toJson(),
        if (dueDate != null)
          'dueDate':
              "${(dueDate!).year.toString().padLeft(4, '0')}-${(dueDate!).month.toString().padLeft(2, '0')}-${(dueDate!).day.toString().padLeft(2, '0')}",
        if (invoiceDate != null)
          'invoiceDate':
              "${(invoiceDate!).year.toString().padLeft(4, '0')}-${(invoiceDate!).month.toString().padLeft(2, '0')}-${(invoiceDate!).day.toString().padLeft(2, '0')}",
        if (invoiceId != null) 'invoiceId': invoiceId!,
        if (invoiceNumber != null) 'invoiceNumber': invoiceNumber!,
        if (invoiceState != null) 'invoiceState': invoiceState!,
        if (invoiceStatus != null) 'invoiceStatus': invoiceStatus!,
        if (invoiceType != null) 'invoiceType': invoiceType!,
        if (lineItems != null)
          'lineItems': lineItems!.map((value) => value.toJson()).toList(),
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (paymentStatus != null) 'paymentStatus': paymentStatus!,
        if (shortUrlCode != null) 'shortUrlCode': shortUrlCode!,
        if (version != null) 'version': version!,
      };
}

class InvoiceAttribute {
  core.String? attributeType;
  core.String? attributeValue;
  core.String? entityCode;
  core.String? entityId;
  core.String? systemName;

  InvoiceAttribute();

  InvoiceAttribute.fromJson(core.Map _json) {
    if (_json.containsKey('attributeType')) {
      attributeType = _json['attributeType'] as core.String;
    }
    if (_json.containsKey('attributeValue')) {
      attributeValue = _json['attributeValue'] as core.String;
    }
    if (_json.containsKey('entityCode')) {
      entityCode = _json['entityCode'] as core.String;
    }
    if (_json.containsKey('entityId')) {
      entityId = _json['entityId'] as core.String;
    }
    if (_json.containsKey('systemName')) {
      systemName = _json['systemName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeType != null) 'attributeType': attributeType!,
        if (attributeValue != null) 'attributeValue': attributeValue!,
        if (entityCode != null) 'entityCode': entityCode!,
        if (entityId != null) 'entityId': entityId!,
        if (systemName != null) 'systemName': systemName!,
      };
}

class InvoiceCollection {
  core.List<Invoice>? items;

  InvoiceCollection();

  InvoiceCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Invoice>((value) =>
              Invoice.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}

class InvoiceLineItem {
  core.double? amount;
  core.List<InvoiceAttribute>? attributes;
  core.String? category;
  core.String? countLabel;
  core.DateTime? creationTimestamp;
  core.String? currency;
  core.String? description;
  core.DateTime? itemDate;
  core.int? itemOrder;
  core.String? lineItemId;
  core.DateTime? modificationTimestamp;
  Pricing? pricing;
  core.double? quantity;
  core.double? quantityCount;
  core.String? quantityUnit;
  core.String? title;
  core.String? version;

  InvoiceLineItem();

  InvoiceLineItem.fromJson(core.Map _json) {
    if (_json.containsKey('amount')) {
      amount = (_json['amount'] as core.num).toDouble();
    }
    if (_json.containsKey('attributes')) {
      attributes = (_json['attributes'] as core.List)
          .map<InvoiceAttribute>((value) => InvoiceAttribute.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('category')) {
      category = _json['category'] as core.String;
    }
    if (_json.containsKey('countLabel')) {
      countLabel = _json['countLabel'] as core.String;
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('itemDate')) {
      itemDate = core.DateTime.parse(_json['itemDate'] as core.String);
    }
    if (_json.containsKey('itemOrder')) {
      itemOrder = _json['itemOrder'] as core.int;
    }
    if (_json.containsKey('lineItemId')) {
      lineItemId = _json['lineItemId'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('pricing')) {
      pricing = Pricing.fromJson(
          _json['pricing'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('quantity')) {
      quantity = (_json['quantity'] as core.num).toDouble();
    }
    if (_json.containsKey('quantityCount')) {
      quantityCount = (_json['quantityCount'] as core.num).toDouble();
    }
    if (_json.containsKey('quantityUnit')) {
      quantityUnit = _json['quantityUnit'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (attributes != null)
          'attributes': attributes!.map((value) => value.toJson()).toList(),
        if (category != null) 'category': category!,
        if (countLabel != null) 'countLabel': countLabel!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (currency != null) 'currency': currency!,
        if (description != null) 'description': description!,
        if (itemDate != null)
          'itemDate':
              "${(itemDate!).year.toString().padLeft(4, '0')}-${(itemDate!).month.toString().padLeft(2, '0')}-${(itemDate!).day.toString().padLeft(2, '0')}",
        if (itemOrder != null) 'itemOrder': itemOrder!,
        if (lineItemId != null) 'lineItemId': lineItemId!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (pricing != null) 'pricing': pricing!.toJson(),
        if (quantity != null) 'quantity': quantity!,
        if (quantityCount != null) 'quantityCount': quantityCount!,
        if (quantityUnit != null) 'quantityUnit': quantityUnit!,
        if (title != null) 'title': title!,
        if (version != null) 'version': version!,
      };
}

class InvoiceTemplate {
  core.String? content;
  core.DateTime? creationTimestamp;
  core.bool? default_;
  core.DateTime? effectiveFromDate;
  core.DateTime? effectiveUntilDate;
  core.String? engineName;
  core.String? invoiceTemplateId;
  core.DateTime? modificationTimestamp;
  core.String? name;
  core.String? version;
  core.String? versionName;

  InvoiceTemplate();

  InvoiceTemplate.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('default')) {
      default_ = _json['default'] as core.bool;
    }
    if (_json.containsKey('effectiveFromDate')) {
      effectiveFromDate =
          core.DateTime.parse(_json['effectiveFromDate'] as core.String);
    }
    if (_json.containsKey('effectiveUntilDate')) {
      effectiveUntilDate =
          core.DateTime.parse(_json['effectiveUntilDate'] as core.String);
    }
    if (_json.containsKey('engineName')) {
      engineName = _json['engineName'] as core.String;
    }
    if (_json.containsKey('invoiceTemplateId')) {
      invoiceTemplateId = _json['invoiceTemplateId'] as core.String;
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
    if (_json.containsKey('versionName')) {
      versionName = _json['versionName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (default_ != null) 'default': default_!,
        if (effectiveFromDate != null)
          'effectiveFromDate':
              "${(effectiveFromDate!).year.toString().padLeft(4, '0')}-${(effectiveFromDate!).month.toString().padLeft(2, '0')}-${(effectiveFromDate!).day.toString().padLeft(2, '0')}",
        if (effectiveUntilDate != null)
          'effectiveUntilDate':
              "${(effectiveUntilDate!).year.toString().padLeft(4, '0')}-${(effectiveUntilDate!).month.toString().padLeft(2, '0')}-${(effectiveUntilDate!).day.toString().padLeft(2, '0')}",
        if (engineName != null) 'engineName': engineName!,
        if (invoiceTemplateId != null) 'invoiceTemplateId': invoiceTemplateId!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
        if (versionName != null) 'versionName': versionName!,
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

class Pricing {
  core.String? currency;
  core.double? price;
  core.double? pricingQuantity;
  core.String? pricingUnit;

  Pricing();

  Pricing.fromJson(core.Map _json) {
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('price')) {
      price = (_json['price'] as core.num).toDouble();
    }
    if (_json.containsKey('pricingQuantity')) {
      pricingQuantity = (_json['pricingQuantity'] as core.num).toDouble();
    }
    if (_json.containsKey('pricingUnit')) {
      pricingUnit = _json['pricingUnit'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (currency != null) 'currency': currency!,
        if (price != null) 'price': price!,
        if (pricingQuantity != null) 'pricingQuantity': pricingQuantity!,
        if (pricingUnit != null) 'pricingUnit': pricingUnit!,
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
