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

import 'package:dothatapis/payment/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterPayment = 0;
api.Payment buildPayment() {
  var o = api.Payment();
  buildCounterPayment++;
  if (buildCounterPayment < 3) {
    o.accountId = 'foo';
    o.additionalInfo = 'foo';
    o.amount = 42.0;
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.currency = 'foo';
    o.customerId = 'foo';
    o.depositAccount = 'foo';
    o.depositAccountProvider = 'foo';
    o.emailAddress = 'foo';
    o.externalPaymentId = 'foo';
    o.merchantTransactionId = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.paymentId = 'foo';
    o.paymentMethod = 'foo';
    o.paymentMethodProvider = 'foo';
    o.paymentSource = 'foo';
    o.paymentSourceName = 'foo';
    o.paymentStatus = 'foo';
    o.paymentTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.phoneNumber = 'foo';
    o.referenceNumber = 'foo';
    o.senderAccount = 'foo';
    o.senderAccountProvider = 'foo';
    o.version = 'foo';
  }
  buildCounterPayment--;
  return o;
}

void checkPayment(api.Payment o) {
  buildCounterPayment++;
  if (buildCounterPayment < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.additionalInfo!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.amount!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.depositAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.depositAccountProvider!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalPaymentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantTransactionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.paymentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentMethodProvider!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentSourceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referenceNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.senderAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.senderAccountProvider!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterPayment--;
}

core.int buildCounterPaymentAttempt = 0;
api.PaymentAttempt buildPaymentAttempt() {
  var o = api.PaymentAttempt();
  buildCounterPaymentAttempt++;
  if (buildCounterPaymentAttempt < 3) {
    o.amount = 42.0;
    o.apiKey = 'foo';
    o.attemptId = 'foo';
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.currency = 'foo';
    o.customerId = 'foo';
    o.externalPaymentId = 'foo';
    o.merchantTransactionId = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.paymentMethod = 'foo';
    o.paymentMethodName = 'foo';
    o.paymentProvider = 'foo';
    o.paymentProviderName = 'foo';
    o.paymentSignature = 'foo';
    o.paymentStatus = 'foo';
    o.paymentTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.providerAttemptId = 'foo';
    o.requestHash = 'foo';
    o.serviceProviderId = 'foo';
    o.verified = true;
    o.version = 'foo';
  }
  buildCounterPaymentAttempt--;
  return o;
}

void checkPaymentAttempt(api.PaymentAttempt o) {
  buildCounterPaymentAttempt++;
  if (buildCounterPaymentAttempt < 3) {
    unittest.expect(
      o.amount!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.apiKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attemptId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalPaymentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.merchantTransactionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.paymentMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentMethodName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentProvider!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentProviderName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentSignature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.providerAttemptId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestHash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceProviderId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.verified!, unittest.isTrue);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterPaymentAttempt--;
}

core.List<api.Payment> buildUnnamed56() {
  var o = <api.Payment>[];
  o.add(buildPayment());
  o.add(buildPayment());
  return o;
}

void checkUnnamed56(core.List<api.Payment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPayment(o[0] as api.Payment);
  checkPayment(o[1] as api.Payment);
}

core.int buildCounterPaymentCollection = 0;
api.PaymentCollection buildPaymentCollection() {
  var o = api.PaymentCollection();
  buildCounterPaymentCollection++;
  if (buildCounterPaymentCollection < 3) {
    o.items = buildUnnamed56();
  }
  buildCounterPaymentCollection--;
  return o;
}

void checkPaymentCollection(api.PaymentCollection o) {
  buildCounterPaymentCollection++;
  if (buildCounterPaymentCollection < 3) {
    checkUnnamed56(o.items!);
  }
  buildCounterPaymentCollection--;
}

core.int buildCounterPaymentProviderConfig = 0;
api.PaymentProviderConfig buildPaymentProviderConfig() {
  var o = api.PaymentProviderConfig();
  buildCounterPaymentProviderConfig++;
  if (buildCounterPaymentProviderConfig < 3) {
    o.apiKey = 'foo';
    o.apiSecret = 'foo';
    o.configId = 'foo';
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.initiatorName = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.providerName = 'foo';
    o.serviceProviderId = 'foo';
    o.version = 'foo';
  }
  buildCounterPaymentProviderConfig--;
  return o;
}

void checkPaymentProviderConfig(api.PaymentProviderConfig o) {
  buildCounterPaymentProviderConfig++;
  if (buildCounterPaymentProviderConfig < 3) {
    unittest.expect(
      o.apiKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.apiSecret!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.configId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.initiatorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.providerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceProviderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterPaymentProviderConfig--;
}

void main() {
  unittest.group('obj-schema-Payment', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPayment();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Payment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPayment(od as api.Payment);
    });
  });

  unittest.group('obj-schema-PaymentAttempt', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPaymentAttempt();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PaymentAttempt.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPaymentAttempt(od as api.PaymentAttempt);
    });
  });

  unittest.group('obj-schema-PaymentCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPaymentCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PaymentCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPaymentCollection(od as api.PaymentCollection);
    });
  });

  unittest.group('obj-schema-PaymentProviderConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPaymentProviderConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PaymentProviderConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPaymentProviderConfig(od as api.PaymentProviderConfig);
    });
  });

  unittest.group('resource-PaymentApi', () {
    unittest.test('method--createAssignedPayment', () async {
      var mock = HttpServerMock();
      var res = api.PaymentApi(mock);
      var arg_request = buildPayment();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Payment.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPayment(obj as api.Payment);

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
        var resp = convert.json.encode(buildPayment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createAssignedPayment(
          arg_request, arg_svcProviderId, arg_custId, arg_acctId,
          $fields: arg_$fields);
      checkPayment(response as api.Payment);
    });

    unittest.test('method--createPayment', () async {
      var mock = HttpServerMock();
      var res = api.PaymentApi(mock);
      var arg_request = buildPayment();
      var arg_svcProviderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Payment.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPayment(obj as api.Payment);

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
        var resp = convert.json.encode(buildPayment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createPayment(arg_request, arg_svcProviderId,
          $fields: arg_$fields);
      checkPayment(response as api.Payment);
    });

    unittest.test('method--createPaymentAttempt', () async {
      var mock = HttpServerMock();
      var res = api.PaymentApi(mock);
      var arg_request = buildPaymentAttempt();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PaymentAttempt.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPaymentAttempt(obj as api.PaymentAttempt);

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
        var resp = convert.json.encode(buildPaymentAttempt());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createPaymentAttempt(
          arg_request, arg_svcProviderId, arg_custId,
          $fields: arg_$fields);
      checkPaymentAttempt(response as api.PaymentAttempt);
    });

    unittest.test('method--createPaymentProviderConfig', () async {
      var mock = HttpServerMock();
      var res = api.PaymentApi(mock);
      var arg_request = buildPaymentProviderConfig();
      var arg_svcProviderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PaymentProviderConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPaymentProviderConfig(obj as api.PaymentProviderConfig);

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
        var resp = convert.json.encode(buildPaymentProviderConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createPaymentProviderConfig(
          arg_request, arg_svcProviderId,
          $fields: arg_$fields);
      checkPaymentProviderConfig(response as api.PaymentProviderConfig);
    });

    unittest.test('method--findAllPayments', () async {
      var mock = HttpServerMock();
      var res = api.PaymentApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_extId = 'foo';
      var arg_startDt = core.DateTime.parse('2002-02-27T14:01:02Z');
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
        var resp = convert.json.encode(buildPaymentCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findAllPayments(
          arg_svcProviderId, arg_extId, arg_startDt,
          $fields: arg_$fields);
      checkPaymentCollection(response as api.PaymentCollection);
    });

    unittest.test('method--findPaymentsForCustomer', () async {
      var mock = HttpServerMock();
      var res = api.PaymentApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_startDt = core.DateTime.parse('2002-02-27T14:01:02Z');
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
        var resp = convert.json.encode(buildPaymentCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findPaymentsForCustomer(
          arg_svcProviderId, arg_custId, arg_acctId, arg_startDt,
          $fields: arg_$fields);
      checkPaymentCollection(response as api.PaymentCollection);
    });

    unittest.test('method--getPayment', () async {
      var mock = HttpServerMock();
      var res = api.PaymentApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_pymtId = 'foo';
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
        var resp = convert.json.encode(buildPayment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPayment(arg_svcProviderId, arg_pymtId,
          $fields: arg_$fields);
      checkPayment(response as api.Payment);
    });

    unittest.test('method--updateAssignedPayment', () async {
      var mock = HttpServerMock();
      var res = api.PaymentApi(mock);
      var arg_request = buildPayment();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_pymtId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Payment.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPayment(obj as api.Payment);

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
        var resp = convert.json.encode(buildPayment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateAssignedPayment(
          arg_request, arg_svcProviderId, arg_custId, arg_acctId, arg_pymtId,
          $fields: arg_$fields);
      checkPayment(response as api.Payment);
    });

    unittest.test('method--updatePayment', () async {
      var mock = HttpServerMock();
      var res = api.PaymentApi(mock);
      var arg_request = buildPayment();
      var arg_svcProviderId = 'foo';
      var arg_pymtId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Payment.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPayment(obj as api.Payment);

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
        var resp = convert.json.encode(buildPayment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updatePayment(
          arg_request, arg_svcProviderId, arg_pymtId,
          $fields: arg_$fields);
      checkPayment(response as api.Payment);
    });

    unittest.test('method--verifyPaymentAttempt', () async {
      var mock = HttpServerMock();
      var res = api.PaymentApi(mock);
      var arg_request = buildPaymentAttempt();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_attmptId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PaymentAttempt.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPaymentAttempt(obj as api.PaymentAttempt);

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
        var resp = convert.json.encode(buildPaymentAttempt());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.verifyPaymentAttempt(
          arg_request, arg_svcProviderId, arg_custId, arg_attmptId,
          $fields: arg_$fields);
      checkPaymentAttempt(response as api.PaymentAttempt);
    });
  });
}
