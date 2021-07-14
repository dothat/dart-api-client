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

/// API to access Accounts
library account.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to access Accounts
class AccountApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  AccountApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = 'account/v1/serviceProviders/'})
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
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> createAccount(
    BillingAccount request,
    core.String svcProviderId,
    core.String custId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      'custId': [custId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/accounts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BillingAccount.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccountCollection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccountCollection> findAccountsForCustomer(
    core.String svcProviderId,
    core.String custId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/accounts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BillingAccountCollection.fromJson(
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> getAccount(
    core.String svcProviderId,
    core.String custId,
    core.String acctId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/accounts/' +
        commons.escapeVariable('$acctId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BillingAccount.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [custId] - null
  ///
  /// [balanceDt] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AccountBalanceSummary].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AccountBalanceSummary> getAccountBalanceSummary(
    core.String svcProviderId,
    core.String custId,
    core.DateTime balanceDt, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'balanceDt': [
        "${(balanceDt).year.toString().padLeft(4, '0')}-${(balanceDt).month.toString().padLeft(2, '0')}-${(balanceDt).day.toString().padLeft(2, '0')}"
      ],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') +
        '/customers/' +
        commons.escapeVariable('$custId') +
        '/accounts/balance';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return AccountBalanceSummary.fromJson(
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BillingAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BillingAccount> updateAccount(
    BillingAccount request,
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
        commons.escapeVariable('$acctId');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return BillingAccount.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AccountBalanceSummary {
  core.DateTime? balanceDate;
  core.String? billingType;
  core.double? unpaidBillBalance;
  core.double? walletBalance;

  AccountBalanceSummary();

  AccountBalanceSummary.fromJson(core.Map _json) {
    if (_json.containsKey('balanceDate')) {
      balanceDate = core.DateTime.parse(_json['balanceDate'] as core.String);
    }
    if (_json.containsKey('billingType')) {
      billingType = _json['billingType'] as core.String;
    }
    if (_json.containsKey('unpaidBillBalance')) {
      unpaidBillBalance = (_json['unpaidBillBalance'] as core.num).toDouble();
    }
    if (_json.containsKey('walletBalance')) {
      walletBalance = (_json['walletBalance'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (balanceDate != null)
          'balanceDate':
              "${(balanceDate!).year.toString().padLeft(4, '0')}-${(balanceDate!).month.toString().padLeft(2, '0')}-${(balanceDate!).day.toString().padLeft(2, '0')}",
        if (billingType != null) 'billingType': billingType!,
        if (unpaidBillBalance != null) 'unpaidBillBalance': unpaidBillBalance!,
        if (walletBalance != null) 'walletBalance': walletBalance!,
      };
}

class BillingAccount {
  core.String? accountId;
  core.String? accountName;
  core.bool? active;
  core.String? billedEntityName;
  BillingAddress? billingAddress;
  core.String? billingCurrency;
  core.String? billingType;
  core.DateTime? creationTimestamp;
  core.double? creditLimit;
  core.bool? customerAddressUsedForBilling;
  core.String? customerId;
  core.bool? customerNameUsedForBilling;
  core.DateTime? modificationTimestamp;
  core.String? preferredPaymentMethod;
  core.String? preferredPaymentMethodName;
  PricingPlan? pricingPlan;
  core.String? pricingPlanId;
  core.String? version;

  BillingAccount();

  BillingAccount.fromJson(core.Map _json) {
    if (_json.containsKey('accountId')) {
      accountId = _json['accountId'] as core.String;
    }
    if (_json.containsKey('accountName')) {
      accountName = _json['accountName'] as core.String;
    }
    if (_json.containsKey('active')) {
      active = _json['active'] as core.bool;
    }
    if (_json.containsKey('billedEntityName')) {
      billedEntityName = _json['billedEntityName'] as core.String;
    }
    if (_json.containsKey('billingAddress')) {
      billingAddress = BillingAddress.fromJson(
          _json['billingAddress'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('billingCurrency')) {
      billingCurrency = _json['billingCurrency'] as core.String;
    }
    if (_json.containsKey('billingType')) {
      billingType = _json['billingType'] as core.String;
    }
    if (_json.containsKey('creationTimestamp')) {
      creationTimestamp =
          core.DateTime.parse(_json['creationTimestamp'] as core.String);
    }
    if (_json.containsKey('creditLimit')) {
      creditLimit = (_json['creditLimit'] as core.num).toDouble();
    }
    if (_json.containsKey('customerAddressUsedForBilling')) {
      customerAddressUsedForBilling =
          _json['customerAddressUsedForBilling'] as core.bool;
    }
    if (_json.containsKey('customerId')) {
      customerId = _json['customerId'] as core.String;
    }
    if (_json.containsKey('customerNameUsedForBilling')) {
      customerNameUsedForBilling =
          _json['customerNameUsedForBilling'] as core.bool;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('preferredPaymentMethod')) {
      preferredPaymentMethod = _json['preferredPaymentMethod'] as core.String;
    }
    if (_json.containsKey('preferredPaymentMethodName')) {
      preferredPaymentMethodName =
          _json['preferredPaymentMethodName'] as core.String;
    }
    if (_json.containsKey('pricingPlan')) {
      pricingPlan = PricingPlan.fromJson(
          _json['pricingPlan'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pricingPlanId')) {
      pricingPlanId = _json['pricingPlanId'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (accountName != null) 'accountName': accountName!,
        if (active != null) 'active': active!,
        if (billedEntityName != null) 'billedEntityName': billedEntityName!,
        if (billingAddress != null) 'billingAddress': billingAddress!.toJson(),
        if (billingCurrency != null) 'billingCurrency': billingCurrency!,
        if (billingType != null) 'billingType': billingType!,
        if (creationTimestamp != null)
          'creationTimestamp': creationTimestamp!.toIso8601String(),
        if (creditLimit != null) 'creditLimit': creditLimit!,
        if (customerAddressUsedForBilling != null)
          'customerAddressUsedForBilling': customerAddressUsedForBilling!,
        if (customerId != null) 'customerId': customerId!,
        if (customerNameUsedForBilling != null)
          'customerNameUsedForBilling': customerNameUsedForBilling!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (preferredPaymentMethod != null)
          'preferredPaymentMethod': preferredPaymentMethod!,
        if (preferredPaymentMethodName != null)
          'preferredPaymentMethodName': preferredPaymentMethodName!,
        if (pricingPlan != null) 'pricingPlan': pricingPlan!.toJson(),
        if (pricingPlanId != null) 'pricingPlanId': pricingPlanId!,
        if (version != null) 'version': version!,
      };
}

class BillingAccountCollection {
  core.List<BillingAccount>? items;

  BillingAccountCollection();

  BillingAccountCollection.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<BillingAccount>((value) => BillingAccount.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
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

class PricingPlan {
  core.bool? active;
  ChangeContext? changeContext;
  core.DateTime? creationTimestamp;
  core.bool? default_;
  core.DateTime? modificationTimestamp;
  core.String? planCode;
  core.String? planId;
  core.String? planName;
  core.String? version;

  PricingPlan();

  PricingPlan.fromJson(core.Map _json) {
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
    if (_json.containsKey('default')) {
      default_ = _json['default'] as core.bool;
    }
    if (_json.containsKey('modificationTimestamp')) {
      modificationTimestamp =
          core.DateTime.parse(_json['modificationTimestamp'] as core.String);
    }
    if (_json.containsKey('planCode')) {
      planCode = _json['planCode'] as core.String;
    }
    if (_json.containsKey('planId')) {
      planId = _json['planId'] as core.String;
    }
    if (_json.containsKey('planName')) {
      planName = _json['planName'] as core.String;
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
        if (default_ != null) 'default': default_!,
        if (modificationTimestamp != null)
          'modificationTimestamp': modificationTimestamp!.toIso8601String(),
        if (planCode != null) 'planCode': planCode!,
        if (planId != null) 'planId': planId!,
        if (planName != null) 'planName': planName!,
        if (version != null) 'version': version!,
      };
}
