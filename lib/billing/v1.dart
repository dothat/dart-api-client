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

/// API to access Billing Transactions
library billing.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to access Billing Transactions
class BillingApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  BillingApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = 'billing/v1/serviceProviders/'})
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
  /// Completes with a [BillingTransaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransaction> createTransaction(
    BillingTransaction request,
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
        '/transactions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BillingTransaction.fromJson(
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
  /// [reasnType] - null
  /// Possible string values are:
  /// - "BALANCE"
  /// - "BILL"
  /// - "BILL_BALANCE"
  /// - "ORDER"
  /// - "ORDER_REVERSAL"
  /// - "PAYMENT"
  /// - "PAYMENT_REVERSAL"
  /// - "CHARGE"
  /// - "CREDIT"
  /// - "ADVANCE"
  /// - "TRANSFER"
  ///
  /// [reasnId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransactionCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransactionCollection> getAllTransactions(
    core.String svcProviderId,
    core.String custId,
    core.String acctId,
    core.String reasnType,
    core.String reasnId, {
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
        '/transactions/reasons/' +
        commons.escapeVariable('$reasnType') +
        '/' +
        commons.escapeVariable('$reasnId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BillingTransactionCollection.fromJson(
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
  /// [transId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransaction> getTransaction(
    core.String svcProviderId,
    core.String custId,
    core.String acctId,
    core.String transId, {
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
        '/transactions/' +
        commons.escapeVariable('$transId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BillingTransaction.fromJson(
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
  /// [acctId] - null
  ///
  /// [ordId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransactionList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransactionList> replaceTransactionsForOrder(
    BillingTransactionList request,
    core.String svcProviderId,
    core.String custId,
    core.String acctId,
    core.String ordId, {
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
        '/orders/' +
        commons.escapeVariable('$ordId') +
        '/transactions';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return BillingTransactionList.fromJson(
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
  /// [acctId] - null
  ///
  /// [transId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransaction> updateTransaction(
    BillingTransaction request,
    core.String svcProviderId,
    core.String custId,
    core.String acctId,
    core.String transId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      'transId': [transId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/accounts/' +
        commons.escapeVariable('$acctId') +
        '/transactions';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return BillingTransaction.fromJson(
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
  /// [acctId] - null
  ///
  /// [invId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingTransactionList].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingTransactionList> updateTransactionForInvoice(
    BillingTransactionList request,
    core.String svcProviderId,
    core.String custId,
    core.String acctId,
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
        '/accounts/' +
        commons.escapeVariable('$acctId') +
        '/invoices/' +
        commons.escapeVariable('$invId') +
        '/transactions';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return BillingTransactionList.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class BillingTransaction {
  core.String? accountId;
  core.DateTime? creationTimestamp;
  core.String? customerId;
  core.String? invoiceId;
  core.DateTime? modificationTimestamp;
  core.String? notes;
  core.String? reasonDetailId;
  core.String? reasonId;
  core.double? transactionAmount;
  core.String? transactionCurrency;
  core.String? transactionId;
  core.String? transactionReason;
  core.String? transactionStatus;
  core.DateTime? transactionTimestamp;
  core.String? transactionType;
  core.String? version;

  BillingTransaction();

  BillingTransaction.fromJson(core.Map _json) {
    if (_json.containsKey('accountId')) {
      accountId = _json['accountId'] as core.String;
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('invoiceId')) {
      invoiceId = _json['invoiceId'] as core.String;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('notes')) {
      notes = _json['notes'] as core.String;
    }
    if (_json.containsKey('reasonDetailId')) {
      reasonDetailId = _json['reasonDetailId'] as core.String;
    }
    if (_json.containsKey('reasonId')) {
      reasonId = _json['reasonId'] as core.String;
    }
    if (_json.containsKey('transactionAmount')) {
      transactionAmount = (_json['transactionAmount'] as core.num).toDouble();
    }
    if (_json.containsKey('transactionCurrency')) {
      transactionCurrency = _json['transactionCurrency'] as core.String;
    }
    if (_json.containsKey('transactionId')) {
      transactionId = _json['transactionId'] as core.String;
    }
    if (_json.containsKey('transactionReason')) {
      transactionReason = _json['transactionReason'] as core.String;
    }
    if (_json.containsKey('transactionStatus')) {
      transactionStatus = _json['transactionStatus'] as core.String;
    }
    if (_json.containsKey('transactionTimestamp')) {
      transactionTimestamp =
          core.DateTime.parse(_json['transactionTimestamp'] as core.String);
    }
    if (_json.containsKey('transactionType')) {
      transactionType = _json['transactionType'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (customerId != null) 'customerId': customerId!,
        if (invoiceId != null) 'invoiceId': invoiceId!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (notes != null) 'notes': notes!,
        if (reasonDetailId != null) 'reasonDetailId': reasonDetailId!,
        if (reasonId != null) 'reasonId': reasonId!,
        if (transactionAmount != null) 'transactionAmount': transactionAmount!,
        if (transactionCurrency != null)
          'transactionCurrency': transactionCurrency!,
        if (transactionId != null) 'transactionId': transactionId!,
        if (transactionReason != null) 'transactionReason': transactionReason!,
        if (transactionStatus != null) 'transactionStatus': transactionStatus!,
        if (transactionTimestamp != null)
          'transactionTimestamp': transactionTimestamp!.toIso8601String(),
        if (transactionType != null) 'transactionType': transactionType!,
        if (version != null) 'version': version!,
      };
}

class BillingTransactionCollection {
  core.List<BillingTransaction>? items;

  BillingTransactionCollection();

  BillingTransactionCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<BillingTransaction>((value) => BillingTransaction.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
      };
}

class BillingTransactionList {
  core.List<BillingTransaction>? transactions;

  BillingTransactionList();

  BillingTransactionList.fromJson(core.Map _json) {
    if (_json.containsKey('transactions')) {
      transactions = (_json['transactions'] as core.List)
          .map<BillingTransaction>((value) => BillingTransaction.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (transactions != null)
          'transactions': transactions!.map((value) => value.toJson()).toList(),
      };
}
