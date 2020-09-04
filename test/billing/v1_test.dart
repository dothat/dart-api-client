library dothatapis.billing.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/billing/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterBillingTransaction = 0;
buildBillingTransaction() {
  var o = new api.BillingTransaction();
  buildCounterBillingTransaction++;
  if (buildCounterBillingTransaction < 3) {
    o.accountId = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.customerId = "foo";
    o.invoiceId = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.notes = "foo";
    o.reasonDetailId = "foo";
    o.reasonId = "foo";
    o.transactionAmount = 42.0;
    o.transactionCurrency = "foo";
    o.transactionId = "foo";
    o.transactionReason = "foo";
    o.transactionStatus = "foo";
    o.transactionTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.transactionType = "foo";
    o.version = "foo";
  }
  buildCounterBillingTransaction--;
  return o;
}

checkBillingTransaction(api.BillingTransaction o) {
  buildCounterBillingTransaction++;
  if (buildCounterBillingTransaction < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.invoiceId, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.notes, unittest.equals('foo'));
    unittest.expect(o.reasonDetailId, unittest.equals('foo'));
    unittest.expect(o.reasonId, unittest.equals('foo'));
    unittest.expect(o.transactionAmount, unittest.equals(42.0));
    unittest.expect(o.transactionCurrency, unittest.equals('foo'));
    unittest.expect(o.transactionId, unittest.equals('foo'));
    unittest.expect(o.transactionReason, unittest.equals('foo'));
    unittest.expect(o.transactionStatus, unittest.equals('foo'));
    unittest.expect(o.transactionTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.transactionType, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterBillingTransaction--;
}

buildUnnamed13() {
  var o = new core.List<api.BillingTransaction>();
  o.add(buildBillingTransaction());
  o.add(buildBillingTransaction());
  return o;
}

checkUnnamed13(core.List<api.BillingTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingTransaction(o[0]);
  checkBillingTransaction(o[1]);
}

core.int buildCounterBillingTransactionCollection = 0;
buildBillingTransactionCollection() {
  var o = new api.BillingTransactionCollection();
  buildCounterBillingTransactionCollection++;
  if (buildCounterBillingTransactionCollection < 3) {
    o.items = buildUnnamed13();
  }
  buildCounterBillingTransactionCollection--;
  return o;
}

checkBillingTransactionCollection(api.BillingTransactionCollection o) {
  buildCounterBillingTransactionCollection++;
  if (buildCounterBillingTransactionCollection < 3) {
    checkUnnamed13(o.items);
  }
  buildCounterBillingTransactionCollection--;
}

buildUnnamed14() {
  var o = new core.List<api.BillingTransaction>();
  o.add(buildBillingTransaction());
  o.add(buildBillingTransaction());
  return o;
}

checkUnnamed14(core.List<api.BillingTransaction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingTransaction(o[0]);
  checkBillingTransaction(o[1]);
}

core.int buildCounterBillingTransactionList = 0;
buildBillingTransactionList() {
  var o = new api.BillingTransactionList();
  buildCounterBillingTransactionList++;
  if (buildCounterBillingTransactionList < 3) {
    o.transactions = buildUnnamed14();
  }
  buildCounterBillingTransactionList--;
  return o;
}

checkBillingTransactionList(api.BillingTransactionList o) {
  buildCounterBillingTransactionList++;
  if (buildCounterBillingTransactionList < 3) {
    checkUnnamed14(o.transactions);
  }
  buildCounterBillingTransactionList--;
}

main() {
  unittest.group("obj-schema-BillingTransaction", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingTransaction();
      var od = new api.BillingTransaction.fromJson(o.toJson());
      checkBillingTransaction(od);
    });
  });

  unittest.group("obj-schema-BillingTransactionCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingTransactionCollection();
      var od = new api.BillingTransactionCollection.fromJson(o.toJson());
      checkBillingTransactionCollection(od);
    });
  });

  unittest.group("obj-schema-BillingTransactionList", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingTransactionList();
      var od = new api.BillingTransactionList.fromJson(o.toJson());
      checkBillingTransactionList(od);
    });
  });

  unittest.group("resource-BillingApi", () {
    unittest.test("method--createTransaction", () {
      var mock = new HttpServerMock();
      api.BillingApi res = new api.BillingApi(mock);
      var arg_request = buildBillingTransaction();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BillingTransaction.fromJson(json);
        checkBillingTransaction(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingTransaction());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createTransaction(
              arg_request, arg_svcProviderId, arg_custId, arg_acctId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingTransaction(response);
      })));
    });

    unittest.test("method--getAllTransactions", () {
      var mock = new HttpServerMock();
      api.BillingApi res = new api.BillingApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
      var arg_reasnType = "foo";
      var arg_reasnId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingTransactionCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAllTransactions(arg_svcProviderId, arg_custId, arg_acctId,
              arg_reasnType, arg_reasnId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingTransactionCollection(response);
      })));
    });

    unittest.test("method--getTransaction", () {
      var mock = new HttpServerMock();
      api.BillingApi res = new api.BillingApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
      var arg_transId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingTransaction());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getTransaction(
              arg_svcProviderId, arg_custId, arg_acctId, arg_transId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingTransaction(response);
      })));
    });

    unittest.test("method--replaceTransactionsForOrder", () {
      var mock = new HttpServerMock();
      api.BillingApi res = new api.BillingApi(mock);
      var arg_request = buildBillingTransactionList();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
      var arg_ordId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BillingTransactionList.fromJson(json);
        checkBillingTransactionList(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingTransactionList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .replaceTransactionsForOrder(
              arg_request, arg_svcProviderId, arg_custId, arg_acctId, arg_ordId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingTransactionList(response);
      })));
    });

    unittest.test("method--updateTransaction", () {
      var mock = new HttpServerMock();
      api.BillingApi res = new api.BillingApi(mock);
      var arg_request = buildBillingTransaction();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
      var arg_transId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BillingTransaction.fromJson(json);
        checkBillingTransaction(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["transId"].first, unittest.equals(arg_transId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingTransaction());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateTransaction(arg_request, arg_svcProviderId, arg_custId,
              arg_acctId, arg_transId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingTransaction(response);
      })));
    });

    unittest.test("method--updateTransactionForInvoice", () {
      var mock = new HttpServerMock();
      api.BillingApi res = new api.BillingApi(mock);
      var arg_request = buildBillingTransactionList();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
      var arg_invId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BillingTransactionList.fromJson(json);
        checkBillingTransactionList(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingTransactionList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateTransactionForInvoice(
              arg_request, arg_svcProviderId, arg_custId, arg_acctId, arg_invId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingTransactionList(response);
      })));
    });
  });
}
