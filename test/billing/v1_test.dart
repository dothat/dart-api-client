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

import 'package:dothatapis/billing/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterBillingTransaction = 0;
api.BillingTransaction buildBillingTransaction() {
  var o = api.BillingTransaction();
  buildCounterBillingTransaction++;
  if (buildCounterBillingTransaction < 3) {
    o.accountId = 'foo';
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.customerId = 'foo';
    o.invoiceId = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.notes = 'foo';
    o.reasonDetailId = 'foo';
    o.reasonId = 'foo';
    o.transactionAmount = 42.0;
    o.transactionCurrency = 'foo';
    o.transactionId = 'foo';
    o.transactionReason = 'foo';
    o.transactionStatus = 'foo';
    o.transactionTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.transactionType = 'foo';
    o.version = 'foo';
  }
  buildCounterBillingTransaction--;
  return o;
}

void checkBillingTransaction(api.BillingTransaction o) {
  buildCounterBillingTransaction++;
  if (buildCounterBillingTransaction < 3) {
    unittest.expect(
      o.accountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invoiceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.notes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonDetailId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transactionAmount!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.transactionCurrency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transactionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transactionReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transactionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transactionTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.transactionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingTransaction--;
}

core.List<api.BillingTransaction> buildUnnamed13() {
  var o = <api.BillingTransaction>[];
  o.add(buildBillingTransaction());
  o.add(buildBillingTransaction());
  return o;
}

void checkUnnamed13(core.List<api.BillingTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingTransaction(o[0] as api.BillingTransaction);
  checkBillingTransaction(o[1] as api.BillingTransaction);
}

core.int buildCounterBillingTransactionCollection = 0;
api.BillingTransactionCollection buildBillingTransactionCollection() {
  var o = api.BillingTransactionCollection();
  buildCounterBillingTransactionCollection++;
  if (buildCounterBillingTransactionCollection < 3) {
    o.items = buildUnnamed13();
  }
  buildCounterBillingTransactionCollection--;
  return o;
}

void checkBillingTransactionCollection(api.BillingTransactionCollection o) {
  buildCounterBillingTransactionCollection++;
  if (buildCounterBillingTransactionCollection < 3) {
    checkUnnamed13(o.items!);
  }
  buildCounterBillingTransactionCollection--;
}

core.List<api.BillingTransaction> buildUnnamed14() {
  var o = <api.BillingTransaction>[];
  o.add(buildBillingTransaction());
  o.add(buildBillingTransaction());
  return o;
}

void checkUnnamed14(core.List<api.BillingTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingTransaction(o[0] as api.BillingTransaction);
  checkBillingTransaction(o[1] as api.BillingTransaction);
}

core.int buildCounterBillingTransactionList = 0;
api.BillingTransactionList buildBillingTransactionList() {
  var o = api.BillingTransactionList();
  buildCounterBillingTransactionList++;
  if (buildCounterBillingTransactionList < 3) {
    o.transactions = buildUnnamed14();
  }
  buildCounterBillingTransactionList--;
  return o;
}

void checkBillingTransactionList(api.BillingTransactionList o) {
  buildCounterBillingTransactionList++;
  if (buildCounterBillingTransactionList < 3) {
    checkUnnamed14(o.transactions!);
  }
  buildCounterBillingTransactionList--;
}

void main() {
  unittest.group('obj-schema-BillingTransaction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingTransaction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingTransaction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingTransaction(od as api.BillingTransaction);
    });
  });

  unittest.group('obj-schema-BillingTransactionCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingTransactionCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingTransactionCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingTransactionCollection(od as api.BillingTransactionCollection);
    });
  });

  unittest.group('obj-schema-BillingTransactionList', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingTransactionList();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingTransactionList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingTransactionList(od as api.BillingTransactionList);
    });
  });

  unittest.group('resource-BillingApi', () {
    unittest.test('method--createTransaction', () async {
      var mock = HttpServerMock();
      var res = api.BillingApi(mock);
      var arg_request = buildBillingTransaction();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BillingTransaction.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBillingTransaction(obj as api.BillingTransaction);

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
        var resp = convert.json.encode(buildBillingTransaction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createTransaction(
          arg_request, arg_svcProviderId, arg_custId, arg_acctId,
          $fields: arg_$fields);
      checkBillingTransaction(response as api.BillingTransaction);
    });

    unittest.test('method--getAllTransactions', () async {
      var mock = HttpServerMock();
      var res = api.BillingApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_reasnType = 'foo';
      var arg_reasnId = 'foo';
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
        var resp = convert.json.encode(buildBillingTransactionCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAllTransactions(
          arg_svcProviderId, arg_custId, arg_acctId, arg_reasnType, arg_reasnId,
          $fields: arg_$fields);
      checkBillingTransactionCollection(
          response as api.BillingTransactionCollection);
    });

    unittest.test('method--getTransaction', () async {
      var mock = HttpServerMock();
      var res = api.BillingApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_transId = 'foo';
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
        var resp = convert.json.encode(buildBillingTransaction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getTransaction(
          arg_svcProviderId, arg_custId, arg_acctId, arg_transId,
          $fields: arg_$fields);
      checkBillingTransaction(response as api.BillingTransaction);
    });

    unittest.test('method--replaceTransactionsForOrder', () async {
      var mock = HttpServerMock();
      var res = api.BillingApi(mock);
      var arg_request = buildBillingTransactionList();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_ordId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BillingTransactionList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBillingTransactionList(obj as api.BillingTransactionList);

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
        var resp = convert.json.encode(buildBillingTransactionList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.replaceTransactionsForOrder(
          arg_request, arg_svcProviderId, arg_custId, arg_acctId, arg_ordId,
          $fields: arg_$fields);
      checkBillingTransactionList(response as api.BillingTransactionList);
    });

    unittest.test('method--updateTransaction', () async {
      var mock = HttpServerMock();
      var res = api.BillingApi(mock);
      var arg_request = buildBillingTransaction();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_transId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BillingTransaction.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBillingTransaction(obj as api.BillingTransaction);

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
          queryMap["transId"]!.first,
          unittest.equals(arg_transId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBillingTransaction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateTransaction(
          arg_request, arg_svcProviderId, arg_custId, arg_acctId, arg_transId,
          $fields: arg_$fields);
      checkBillingTransaction(response as api.BillingTransaction);
    });

    unittest.test('method--updateTransactionForInvoice', () async {
      var mock = HttpServerMock();
      var res = api.BillingApi(mock);
      var arg_request = buildBillingTransactionList();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_acctId = 'foo';
      var arg_invId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BillingTransactionList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBillingTransactionList(obj as api.BillingTransactionList);

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
        var resp = convert.json.encode(buildBillingTransactionList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateTransactionForInvoice(
          arg_request, arg_svcProviderId, arg_custId, arg_acctId, arg_invId,
          $fields: arg_$fields);
      checkBillingTransactionList(response as api.BillingTransactionList);
    });
  });
}
