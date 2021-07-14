// ignore_for_file: avoid_returning_null
// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:dothatapis/account/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAccountBalanceSummary = 0;
api.AccountBalanceSummary buildAccountBalanceSummary() {
  var o = api.AccountBalanceSummary();
  buildCounterAccountBalanceSummary++;
  if (buildCounterAccountBalanceSummary < 3) {
    o.balanceDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.billingType = 'foo';
    o.unpaidBillBalance = 42.0;
    o.walletBalance = 42.0;
  }
  buildCounterAccountBalanceSummary--;
  return o;
}

void checkAccountBalanceSummary(api.AccountBalanceSummary o) {
  buildCounterAccountBalanceSummary++;
  if (buildCounterAccountBalanceSummary < 3) {
    unittest.expect(
      o.balanceDate!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.billingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unpaidBillBalance!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.walletBalance!,
      unittest.equals(42.0),
    );
  }
  buildCounterAccountBalanceSummary--;
}

core.int buildCounterBillingAccount = 0;
api.BillingAccount buildBillingAccount() {
  var o = api.BillingAccount();
  buildCounterBillingAccount++;
  if (buildCounterBillingAccount < 3) {
    o.accountId = 'foo';
    o.accountName = 'foo';
    o.active = true;
    o.billedEntityName = 'foo';
    o.billingAddress = buildBillingAddress();
    o.billingCurrency = 'foo';
    o.billingType = 'foo';
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.creditLimit = 42.0;
    o.customerAddressUsedForBilling = true;
    o.customerId = 'foo';
    o.customerNameUsedForBilling = true;
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.preferredPaymentMethod = 'foo';
    o.preferredPaymentMethodName = 'foo';
    o.pricingPlan = buildPricingPlan();
    o.pricingPlanId = 'foo';
    o.version = 'foo';
  }
  buildCounterBillingAccount--;
  return o;
}

void checkBillingAccount(api.BillingAccount o) {
  buildCounterBillingAccount++;
  if (buildCounterBillingAccount < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.accountName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.billedEntityName!,
      unittest.equals('foo'),
    );
    checkBillingAddress(o.billingAddress! as api.BillingAddress);
    unittest.expect(
      o.billingCurrency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.billingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.creditLimit!,
      unittest.equals(42.0),
    );
    unittest.expect(o.customerAddressUsedForBilling!, unittest.isTrue);
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.customerNameUsedForBilling!, unittest.isTrue);
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.preferredPaymentMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preferredPaymentMethodName!,
      unittest.equals('foo'),
    );
    checkPricingPlan(o.pricingPlan! as api.PricingPlan);
    unittest.expect(
      o.pricingPlanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingAccount--;
}

core.List<api.BillingAccount> buildUnnamed73() {
  var o = <api.BillingAccount>[];
  o.add(buildBillingAccount());
  o.add(buildBillingAccount());
  return o;
}

void checkUnnamed73(core.List<api.BillingAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingAccount(o[0] as api.BillingAccount);
  checkBillingAccount(o[1] as api.BillingAccount);
}

core.int buildCounterBillingAccountCollection = 0;
api.BillingAccountCollection buildBillingAccountCollection() {
  var o = api.BillingAccountCollection();
  buildCounterBillingAccountCollection++;
  if (buildCounterBillingAccountCollection < 3) {
    o.items = buildUnnamed73();
  }
  buildCounterBillingAccountCollection--;
  return o;
}

void checkBillingAccountCollection(api.BillingAccountCollection o) {
  buildCounterBillingAccountCollection++;
  if (buildCounterBillingAccountCollection < 3) {
    checkUnnamed73(o.items!);
  }
  buildCounterBillingAccountCollection--;
}

core.int buildCounterBillingAddress = 0;
api.BillingAddress buildBillingAddress() {
  var o = api.BillingAddress();
  buildCounterBillingAddress++;
  if (buildCounterBillingAddress < 3) {
    o.addressLine1 = 'foo';
    o.addressLine2 = 'foo';
    o.addressLine3 = 'foo';
    o.city = 'foo';
    o.state = 'foo';
  }
  buildCounterBillingAddress--;
  return o;
}

void checkBillingAddress(api.BillingAddress o) {
  buildCounterBillingAddress++;
  if (buildCounterBillingAddress < 3) {
    unittest.expect(
      o.addressLine1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.addressLine2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.addressLine3!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.city!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingAddress--;
}

core.int buildCounterChangeContext = 0;
api.ChangeContext buildChangeContext() {
  var o = api.ChangeContext();
  buildCounterChangeContext++;
  if (buildCounterChangeContext < 3) {
    o.initiatorType = 'foo';
    o.messageId = 'foo';
    o.userIdentifier = 'foo';
  }
  buildCounterChangeContext--;
  return o;
}

void checkChangeContext(api.ChangeContext o) {
  buildCounterChangeContext++;
  if (buildCounterChangeContext < 3) {
    unittest.expect(
      o.initiatorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userIdentifier!,
      unittest.equals('foo'),
    );
  }
  buildCounterChangeContext--;
}

core.int buildCounterPricingPlan = 0;
api.PricingPlan buildPricingPlan() {
  var o = api.PricingPlan();
  buildCounterPricingPlan++;
  if (buildCounterPricingPlan < 3) {
    o.active = true;
    o.changeContext = buildChangeContext();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.default_ = true;
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.planCode = 'foo';
    o.planId = 'foo';
    o.planName = 'foo';
    o.version = 'foo';
  }
  buildCounterPricingPlan--;
  return o;
}

void checkPricingPlan(api.PricingPlan o) {
  buildCounterPricingPlan++;
  if (buildCounterPricingPlan < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    checkChangeContext(o.changeContext! as api.ChangeContext);
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(o.default_!, unittest.isTrue);
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.planCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.planId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.planName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterPricingPlan--;
}

void main() {
  unittest.group('obj-schema-AccountBalanceSummary', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAccountBalanceSummary();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.AccountBalanceSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAccountBalanceSummary(od as api.AccountBalanceSummary);
    });
  });

  unittest.group('obj-schema-BillingAccount', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingAccount();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingAccount(od as api.BillingAccount);
    });
  });

  unittest.group('obj-schema-BillingAccountCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingAccountCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingAccountCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingAccountCollection(od as api.BillingAccountCollection);
    });
  });

  unittest.group('obj-schema-BillingAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingAddress(od as api.BillingAddress);
    });
  });

  unittest.group('obj-schema-ChangeContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildChangeContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ChangeContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChangeContext(od as api.ChangeContext);
    });
  });

  unittest.group('obj-schema-PricingPlan', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPricingPlan();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PricingPlan.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPricingPlan(od as api.PricingPlan);
    });
  });

  unittest.group('resource-AccountApi', () {
    unittest.test('method--createAccount', () async {
      var mock = HttpServerMock();
      var res = api.AccountApi(mock);
      var arg_request = buildBillingAccount();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BillingAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBillingAccount(obj as api.BillingAccount);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["custId"]!.first,
          unittest.equals(arg_custId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBillingAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createAccount(
          arg_request, arg_svcProviderId, arg_custId,
          $fields: arg_$fields);
      checkBillingAccount(response as api.BillingAccount);
    });

    unittest.test('method--findAccountsForCustomer', () async {
      var mock = HttpServerMock();
      var res = api.AccountApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBillingAccountCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findAccountsForCustomer(
          arg_svcProviderId, arg_custId,
          $fields: arg_$fields);
      checkBillingAccountCollection(response as api.BillingAccountCollection);
    });

    unittest.test('method--getAccount', () async {
      var mock = HttpServerMock();
      var res = api.AccountApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBillingAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAccount(
          arg_svcProviderId, arg_custId, arg_acctId,
          $fields: arg_$fields);
      checkBillingAccount(response as api.BillingAccount);
    });

    unittest.test('method--getAccountBalanceSummary', () async {
      var mock = HttpServerMock();
      var res = api.AccountApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_balanceDt = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          core.DateTime.parse(queryMap["balanceDt"]!.first),
          unittest.equals(arg_balanceDt),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountBalanceSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAccountBalanceSummary(
          arg_svcProviderId, arg_custId, arg_balanceDt,
          $fields: arg_$fields);
      checkAccountBalanceSummary(response as api.AccountBalanceSummary);
    });

    unittest.test('method--updateAccount', () async {
      var mock = HttpServerMock();
      var res = api.AccountApi(mock);
      var arg_request = buildBillingAccount();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BillingAccount.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBillingAccount(obj as api.BillingAccount);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBillingAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateAccount(
          arg_request, arg_svcProviderId, arg_custId, arg_acctId,
          $fields: arg_$fields);
      checkBillingAccount(response as api.BillingAccount);
    });
  });
}
