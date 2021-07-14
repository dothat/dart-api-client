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

/// API to access Payments
library payment.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to access Payments
class PaymentApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  PaymentApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = 'payment/v1/serviceProviders/'})
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
  /// [acctId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Payment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payment> createAssignedPayment(
    Payment request,
    core.String svcProviderId,
    core.String custId,
    core.String acctId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/accounts/' +
        commons.escapeVariable('$acctId') +
        '/payments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Payment.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [Payment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payment> createPayment(
    Payment request,
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/payments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Payment.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

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
  /// Completes with a [PaymentAttempt].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PaymentAttempt> createPaymentAttempt(
    PaymentAttempt request,
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
        '/payments/attempts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PaymentAttempt.fromJson(
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
  /// Completes with a [PaymentProviderConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PaymentProviderConfig> createPaymentProviderConfig(
    PaymentProviderConfig request,
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/payments/configs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PaymentProviderConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [extId] - null
  ///
  /// [startDt] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PaymentCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PaymentCollection> findAllPayments(
    core.String svcProviderId,
    core.String extId,
    core.DateTime startDt, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/payments/externalIds/' +
        commons.escapeVariable('$extId') +
        '/after/' +
        commons.escapeVariable('$startDt');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PaymentCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [acctId] - null
  ///
  /// [startDt] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PaymentCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PaymentCollection> findPaymentsForCustomer(
    core.String svcProviderId,
    core.String custId,
    core.String acctId,
    core.DateTime startDt, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/accounts/' +
        commons.escapeVariable('$acctId') +
        '/payments/after/' +
        commons.escapeVariable('$startDt');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return PaymentCollection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [pymtId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Payment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payment> getPayment(
    core.String svcProviderId,
    core.String pymtId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/payments/' +
        commons.escapeVariable('$pymtId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Payment.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [acctId] - null
  ///
  /// [pymtId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Payment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payment> updateAssignedPayment(
    Payment request,
    core.String svcProviderId,
    core.String custId,
    core.String acctId,
    core.String pymtId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/accounts/' +
        commons.escapeVariable('$acctId') +
        '/payments/' +
        commons.escapeVariable('$pymtId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Payment.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [pymtId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Payment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Payment> updatePayment(
    Payment request,
    core.String svcProviderId,
    core.String pymtId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/payments/' +
        commons.escapeVariable('$pymtId');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Payment.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [attmptId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PaymentAttempt].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PaymentAttempt> verifyPaymentAttempt(
    PaymentAttempt request,
    core.String svcProviderId,
    core.String custId,
    core.String attmptId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/payments/attempts/' +
        commons.escapeVariable('$attmptId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return PaymentAttempt.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class Payment {
  core.String? accountId;
  core.String? additionalInfo;
  core.double? amount;
  core.DateTime? creationTimestamp;
  core.String? currency;
  core.String? customerId;
  core.String? depositAccount;
  core.String? depositAccountProvider;
  core.String? emailAddress;
  core.String? externalPaymentId;
  core.String? merchantTransactionId;
  core.DateTime? modificationTimestamp;
  core.String? paymentId;
  core.String? paymentMethod;
  core.String? paymentMethodProvider;
  core.String? paymentSource;
  core.String? paymentSourceName;
  core.String? paymentStatus;
  core.DateTime? paymentTimestamp;
  core.String? phoneNumber;
  core.String? referenceNumber;
  core.String? senderAccount;
  core.String? senderAccountProvider;
  core.String? version;

  Payment();

  Payment.fromJson(core.Map _json) {
    if (_json.containsKey('accountId')) {
      accountId = _json['accountId'] as core.String;
    }
    if (_json.containsKey('additionalInfo')) {
      additionalInfo = _json['additionalInfo'] as core.String;
    }
    if (_json.containsKey('amount')) {
      amount = (_json['amount'] as core.num).toDouble();
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('depositAccount')) {
      depositAccount = _json['depositAccount'] as core.String;
    }
    if (_json.containsKey('depositAccountProvider')) {
      depositAccountProvider = _json['depositAccountProvider'] as core.String;
    }
    if (_json.containsKey('emailAddress')) {
      emailAddress = _json['emailAddress'] as core.String;
    }
    if (_json.containsKey('externalPaymentId')) {
      externalPaymentId = _json['externalPaymentId'] as core.String;
    }
    if (_json.containsKey('merchantTransactionId')) {
      merchantTransactionId = _json['merchantTransactionId'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('paymentId')) {
      paymentId = _json['paymentId'] as core.String;
    }
    if (_json.containsKey('paymentMethod')) {
      paymentMethod = _json['paymentMethod'] as core.String;
    }
    if (_json.containsKey('paymentMethodProvider')) {
      paymentMethodProvider = _json['paymentMethodProvider'] as core.String;
    }
    if (_json.containsKey('paymentSource')) {
      paymentSource = _json['paymentSource'] as core.String;
    }
    if (_json.containsKey('paymentSourceName')) {
      paymentSourceName = _json['paymentSourceName'] as core.String;
    }
    if (_json.containsKey('paymentStatus')) {
      paymentStatus = _json['paymentStatus'] as core.String;
    }
    if (_json.containsKey('paymentTimestamp')) {
      paymentTimestamp =
          core.DateTime.parse(_json['paymentTimestamp'] as core.String);
    }
    if (_json.containsKey('phoneNumber')) {
      phoneNumber = _json['phoneNumber'] as core.String;
    }
    if (_json.containsKey('referenceNumber')) {
      referenceNumber = _json['referenceNumber'] as core.String;
    }
    if (_json.containsKey('senderAccount')) {
      senderAccount = _json['senderAccount'] as core.String;
    }
    if (_json.containsKey('senderAccountProvider')) {
      senderAccountProvider = _json['senderAccountProvider'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (additionalInfo != null) 'additionalInfo': additionalInfo!,
        if (amount != null) 'amount': amount!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (currency != null) 'currency': currency!,
        if (customerId != null) 'customerId': customerId!,
        if (depositAccount != null) 'depositAccount': depositAccount!,
        if (depositAccountProvider != null)
          'depositAccountProvider': depositAccountProvider!,
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (externalPaymentId != null) 'externalPaymentId': externalPaymentId!,
        if (merchantTransactionId != null)
          'merchantTransactionId': merchantTransactionId!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (paymentId != null) 'paymentId': paymentId!,
        if (paymentMethod != null) 'paymentMethod': paymentMethod!,
        if (paymentMethodProvider != null)
          'paymentMethodProvider': paymentMethodProvider!,
        if (paymentSource != null) 'paymentSource': paymentSource!,
        if (paymentSourceName != null) 'paymentSourceName': paymentSourceName!,
        if (paymentStatus != null) 'paymentStatus': paymentStatus!,
        if (paymentTimestamp != null)
          'paymentTimestamp': paymentTimestamp!.toIso8601String(),
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (referenceNumber != null) 'referenceNumber': referenceNumber!,
        if (senderAccount != null) 'senderAccount': senderAccount!,
        if (senderAccountProvider != null)
          'senderAccountProvider': senderAccountProvider!,
        if (version != null) 'version': version!,
      };
}

class PaymentAttempt {
  core.double? amount;
  core.String? apiKey;
  core.String? attemptId;
  core.DateTime? creationTimestamp;
  core.String? currency;
  core.String? customerId;
  core.String? externalPaymentId;
  core.String? merchantTransactionId;
  core.DateTime? modificationTimestamp;
  core.String? paymentMethod;
  core.String? paymentMethodName;
  core.String? paymentProvider;
  core.String? paymentProviderName;
  core.String? paymentSignature;
  core.String? paymentStatus;
  core.DateTime? paymentTimestamp;
  core.String? providerAttemptId;
  core.String? requestHash;
  core.String? serviceProviderId;
  core.bool? verified;
  core.String? version;

  PaymentAttempt();

  PaymentAttempt.fromJson(core.Map _json) {
    if (_json.containsKey('amount')) {
      amount = (_json['amount'] as core.num).toDouble();
    }
    if (_json.containsKey('apiKey')) {
      apiKey = _json['apiKey'] as core.String;
    }
    if (_json.containsKey('attemptId')) {
      attemptId = _json['attemptId'] as core.String;
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('currency')) {
      currency = _json['currency'] as core.String;
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('externalPaymentId')) {
      externalPaymentId = _json['externalPaymentId'] as core.String;
    }
    if (_json.containsKey('merchantTransactionId')) {
      merchantTransactionId = _json['merchantTransactionId'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('paymentMethod')) {
      paymentMethod = _json['paymentMethod'] as core.String;
    }
    if (_json.containsKey('paymentMethodName')) {
      paymentMethodName = _json['paymentMethodName'] as core.String;
    }
    if (_json.containsKey('paymentProvider')) {
      paymentProvider = _json['paymentProvider'] as core.String;
    }
    if (_json.containsKey('paymentProviderName')) {
      paymentProviderName = _json['paymentProviderName'] as core.String;
    }
    if (_json.containsKey('paymentSignature')) {
      paymentSignature = _json['paymentSignature'] as core.String;
    }
    if (_json.containsKey('paymentStatus')) {
      paymentStatus = _json['paymentStatus'] as core.String;
    }
    if (_json.containsKey('paymentTimestamp')) {
      paymentTimestamp =
          core.DateTime.parse(_json['paymentTimestamp'] as core.String);
    }
    if (_json.containsKey('providerAttemptId')) {
      providerAttemptId = _json['providerAttemptId'] as core.String;
    }
    if (_json.containsKey('requestHash')) {
      requestHash = _json['requestHash'] as core.String;
    }
    if (_json.containsKey('serviceProviderId')) {
      serviceProviderId = _json['serviceProviderId'] as core.String;
    }
    if (_json.containsKey('verified')) {
      verified = _json['verified'] as core.bool;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (amount != null) 'amount': amount!,
        if (apiKey != null) 'apiKey': apiKey!,
        if (attemptId != null) 'attemptId': attemptId!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (currency != null) 'currency': currency!,
        if (customerId != null) 'customerId': customerId!,
        if (externalPaymentId != null) 'externalPaymentId': externalPaymentId!,
        if (merchantTransactionId != null)
          'merchantTransactionId': merchantTransactionId!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (paymentMethod != null) 'paymentMethod': paymentMethod!,
        if (paymentMethodName != null) 'paymentMethodName': paymentMethodName!,
        if (paymentProvider != null) 'paymentProvider': paymentProvider!,
        if (paymentProviderName != null)
          'paymentProviderName': paymentProviderName!,
        if (paymentSignature != null) 'paymentSignature': paymentSignature!,
        if (paymentStatus != null) 'paymentStatus': paymentStatus!,
        if (paymentTimestamp != null)
          'paymentTimestamp': paymentTimestamp!.toIso8601String(),
        if (providerAttemptId != null) 'providerAttemptId': providerAttemptId!,
        if (requestHash != null) 'requestHash': requestHash!,
        if (serviceProviderId != null) 'serviceProviderId': serviceProviderId!,
        if (verified != null) 'verified': verified!,
        if (version != null) 'version': version!,
      };
}

class PaymentCollection {
  core.List<Payment>? items;

  PaymentCollection();

  PaymentCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Payment>((value) =>
              Payment.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}

class PaymentProviderConfig {
  core.String? apiKey;
  core.String? apiSecret;
  core.String? configId;
  core.DateTime? creationTimestamp;
  core.String? initiatorName;
  core.DateTime? modificationTimestamp;
  core.String? providerName;
  core.String? serviceProviderId;
  core.String? version;

  PaymentProviderConfig();

  PaymentProviderConfig.fromJson(core.Map _json) {
    if (_json.containsKey('apiKey')) {
      apiKey = _json['apiKey'] as core.String;
    }
    if (_json.containsKey('apiSecret')) {
      apiSecret = _json['apiSecret'] as core.String;
    }
    if (_json.containsKey('configId')) {
      configId = _json['configId'] as core.String;
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('initiatorName')) {
      initiatorName = _json['initiatorName'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('providerName')) {
      providerName = _json['providerName'] as core.String;
    }
    if (_json.containsKey('serviceProviderId')) {
      serviceProviderId = _json['serviceProviderId'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiKey != null) 'apiKey': apiKey!,
        if (apiSecret != null) 'apiSecret': apiSecret!,
        if (configId != null) 'configId': configId!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (initiatorName != null) 'initiatorName': initiatorName!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (providerName != null) 'providerName': providerName!,
        if (serviceProviderId != null) 'serviceProviderId': serviceProviderId!,
        if (version != null) 'version': version!,
      };
}
