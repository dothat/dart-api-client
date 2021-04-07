library dothatapis.payment.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/payment/v1.dart' as api;

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

core.int buildCounterPayment = 0;
buildPayment() {
  var o = new api.Payment();
  buildCounterPayment++;
  if (buildCounterPayment < 3) {
    o.accountId = "foo";
    o.additionalInfo = "foo";
    o.amount = 42.0;
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.currency = "foo";
    o.customerId = "foo";
    o.depositAccount = "foo";
    o.depositAccountProvider = "foo";
    o.emailAddress = "foo";
    o.externalPaymentId = "foo";
    o.merchantTransactionId = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.paymentId = "foo";
    o.paymentMethod = "foo";
    o.paymentMethodProvider = "foo";
    o.paymentSource = "foo";
    o.paymentSourceName = "foo";
    o.paymentStatus = "foo";
    o.paymentTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.phoneNumber = "foo";
    o.referenceNumber = "foo";
    o.senderAccount = "foo";
    o.senderAccountProvider = "foo";
    o.version = "foo";
  }
  buildCounterPayment--;
  return o;
}

checkPayment(api.Payment o) {
  buildCounterPayment++;
  if (buildCounterPayment < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.additionalInfo, unittest.equals('foo'));
    unittest.expect(o.amount, unittest.equals(42.0));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.depositAccount, unittest.equals('foo'));
    unittest.expect(o.depositAccountProvider, unittest.equals('foo'));
    unittest.expect(o.emailAddress, unittest.equals('foo'));
    unittest.expect(o.externalPaymentId, unittest.equals('foo'));
    unittest.expect(o.merchantTransactionId, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.paymentId, unittest.equals('foo'));
    unittest.expect(o.paymentMethod, unittest.equals('foo'));
    unittest.expect(o.paymentMethodProvider, unittest.equals('foo'));
    unittest.expect(o.paymentSource, unittest.equals('foo'));
    unittest.expect(o.paymentSourceName, unittest.equals('foo'));
    unittest.expect(o.paymentStatus, unittest.equals('foo'));
    unittest.expect(o.paymentTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.referenceNumber, unittest.equals('foo'));
    unittest.expect(o.senderAccount, unittest.equals('foo'));
    unittest.expect(o.senderAccountProvider, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterPayment--;
}

core.int buildCounterPaymentAttempt = 0;
buildPaymentAttempt() {
  var o = new api.PaymentAttempt();
  buildCounterPaymentAttempt++;
  if (buildCounterPaymentAttempt < 3) {
    o.amount = 42.0;
    o.apiKey = "foo";
    o.attemptId = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.currency = "foo";
    o.customerId = "foo";
    o.externalPaymentId = "foo";
    o.merchantTransactionId = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.paymentMethod = "foo";
    o.paymentMethodName = "foo";
    o.paymentProvider = "foo";
    o.paymentProviderName = "foo";
    o.paymentSignature = "foo";
    o.paymentStatus = "foo";
    o.paymentTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.providerAttemptId = "foo";
    o.requestHash = "foo";
    o.serviceProviderId = "foo";
    o.verified = true;
    o.version = "foo";
  }
  buildCounterPaymentAttempt--;
  return o;
}

checkPaymentAttempt(api.PaymentAttempt o) {
  buildCounterPaymentAttempt++;
  if (buildCounterPaymentAttempt < 3) {
    unittest.expect(o.amount, unittest.equals(42.0));
    unittest.expect(o.apiKey, unittest.equals('foo'));
    unittest.expect(o.attemptId, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.externalPaymentId, unittest.equals('foo'));
    unittest.expect(o.merchantTransactionId, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.paymentMethod, unittest.equals('foo'));
    unittest.expect(o.paymentMethodName, unittest.equals('foo'));
    unittest.expect(o.paymentProvider, unittest.equals('foo'));
    unittest.expect(o.paymentProviderName, unittest.equals('foo'));
    unittest.expect(o.paymentSignature, unittest.equals('foo'));
    unittest.expect(o.paymentStatus, unittest.equals('foo'));
    unittest.expect(o.paymentTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.providerAttemptId, unittest.equals('foo'));
    unittest.expect(o.requestHash, unittest.equals('foo'));
    unittest.expect(o.serviceProviderId, unittest.equals('foo'));
    unittest.expect(o.verified, unittest.isTrue);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterPaymentAttempt--;
}

buildUnnamed56() {
  var o = new core.List<api.Payment>();
  o.add(buildPayment());
  o.add(buildPayment());
  return o;
}

checkUnnamed56(core.List<api.Payment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPayment(o[0]);
  checkPayment(o[1]);
}

core.int buildCounterPaymentCollection = 0;
buildPaymentCollection() {
  var o = new api.PaymentCollection();
  buildCounterPaymentCollection++;
  if (buildCounterPaymentCollection < 3) {
    o.items = buildUnnamed56();
  }
  buildCounterPaymentCollection--;
  return o;
}

checkPaymentCollection(api.PaymentCollection o) {
  buildCounterPaymentCollection++;
  if (buildCounterPaymentCollection < 3) {
    checkUnnamed56(o.items);
  }
  buildCounterPaymentCollection--;
}

core.int buildCounterPaymentProviderConfig = 0;
buildPaymentProviderConfig() {
  var o = new api.PaymentProviderConfig();
  buildCounterPaymentProviderConfig++;
  if (buildCounterPaymentProviderConfig < 3) {
    o.apiKey = "foo";
    o.apiSecret = "foo";
    o.configId = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.initiatorName = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.providerName = "foo";
    o.serviceProviderId = "foo";
    o.version = "foo";
  }
  buildCounterPaymentProviderConfig--;
  return o;
}

checkPaymentProviderConfig(api.PaymentProviderConfig o) {
  buildCounterPaymentProviderConfig++;
  if (buildCounterPaymentProviderConfig < 3) {
    unittest.expect(o.apiKey, unittest.equals('foo'));
    unittest.expect(o.apiSecret, unittest.equals('foo'));
    unittest.expect(o.configId, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.initiatorName, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.providerName, unittest.equals('foo'));
    unittest.expect(o.serviceProviderId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterPaymentProviderConfig--;
}

main() {
  unittest.group("obj-schema-Payment", () {
    unittest.test("to-json--from-json", () {
      var o = buildPayment();
      var od = new api.Payment.fromJson(o.toJson());
      checkPayment(od);
    });
  });

  unittest.group("obj-schema-PaymentAttempt", () {
    unittest.test("to-json--from-json", () {
      var o = buildPaymentAttempt();
      var od = new api.PaymentAttempt.fromJson(o.toJson());
      checkPaymentAttempt(od);
    });
  });

  unittest.group("obj-schema-PaymentCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildPaymentCollection();
      var od = new api.PaymentCollection.fromJson(o.toJson());
      checkPaymentCollection(od);
    });
  });

  unittest.group("obj-schema-PaymentProviderConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildPaymentProviderConfig();
      var od = new api.PaymentProviderConfig.fromJson(o.toJson());
      checkPaymentProviderConfig(od);
    });
  });

  unittest.group("resource-PaymentApi", () {
    unittest.test("method--createAssignedPayment", () {
      var mock = new HttpServerMock();
      api.PaymentApi res = new api.PaymentApi(mock);
      var arg_request = buildPayment();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Payment.fromJson(json);
        checkPayment(obj);

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
        var resp = convert.json.encode(buildPayment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createAssignedPayment(
              arg_request, arg_svcProviderId, arg_custId, arg_acctId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPayment(response);
      })));
    });

    unittest.test("method--createPayment", () {
      var mock = new HttpServerMock();
      api.PaymentApi res = new api.PaymentApi(mock);
      var arg_request = buildPayment();
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Payment.fromJson(json);
        checkPayment(obj);

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
        var resp = convert.json.encode(buildPayment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createPayment(arg_request, arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPayment(response);
      })));
    });

    unittest.test("method--createPaymentAttempt", () {
      var mock = new HttpServerMock();
      api.PaymentApi res = new api.PaymentApi(mock);
      var arg_request = buildPaymentAttempt();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PaymentAttempt.fromJson(json);
        checkPaymentAttempt(obj);

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
        var resp = convert.json.encode(buildPaymentAttempt());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createPaymentAttempt(arg_request, arg_svcProviderId, arg_custId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPaymentAttempt(response);
      })));
    });

    unittest.test("method--createPaymentProviderConfig", () {
      var mock = new HttpServerMock();
      api.PaymentApi res = new api.PaymentApi(mock);
      var arg_request = buildPaymentProviderConfig();
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PaymentProviderConfig.fromJson(json);
        checkPaymentProviderConfig(obj);

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
        var resp = convert.json.encode(buildPaymentProviderConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createPaymentProviderConfig(arg_request, arg_svcProviderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPaymentProviderConfig(response);
      })));
    });

    unittest.test("method--findAllPayments", () {
      var mock = new HttpServerMock();
      api.PaymentApi res = new api.PaymentApi(mock);
      var arg_svcProviderId = "foo";
      var arg_extId = "foo";
      var arg_startDt = core.DateTime.parse("2002-02-27T14:01:02Z");
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
        var resp = convert.json.encode(buildPaymentCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findAllPayments(arg_svcProviderId, arg_extId, arg_startDt,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPaymentCollection(response);
      })));
    });

    unittest.test("method--findPaymentsForCustomer", () {
      var mock = new HttpServerMock();
      api.PaymentApi res = new api.PaymentApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
      var arg_startDt = core.DateTime.parse("2002-02-27T14:01:02Z");
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
        var resp = convert.json.encode(buildPaymentCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findPaymentsForCustomer(
              arg_svcProviderId, arg_custId, arg_acctId, arg_startDt,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPaymentCollection(response);
      })));
    });

    unittest.test("method--getPayment", () {
      var mock = new HttpServerMock();
      api.PaymentApi res = new api.PaymentApi(mock);
      var arg_svcProviderId = "foo";
      var arg_pymtId = "foo";
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
        var resp = convert.json.encode(buildPayment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPayment(arg_svcProviderId, arg_pymtId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPayment(response);
      })));
    });

    unittest.test("method--updateAssignedPayment", () {
      var mock = new HttpServerMock();
      api.PaymentApi res = new api.PaymentApi(mock);
      var arg_request = buildPayment();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
      var arg_pymtId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Payment.fromJson(json);
        checkPayment(obj);

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
        var resp = convert.json.encode(buildPayment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateAssignedPayment(arg_request, arg_svcProviderId, arg_custId,
              arg_acctId, arg_pymtId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPayment(response);
      })));
    });

    unittest.test("method--updatePayment", () {
      var mock = new HttpServerMock();
      api.PaymentApi res = new api.PaymentApi(mock);
      var arg_request = buildPayment();
      var arg_svcProviderId = "foo";
      var arg_pymtId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Payment.fromJson(json);
        checkPayment(obj);

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
        var resp = convert.json.encode(buildPayment());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatePayment(arg_request, arg_svcProviderId, arg_pymtId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPayment(response);
      })));
    });

    unittest.test("method--verifyPaymentAttempt", () {
      var mock = new HttpServerMock();
      api.PaymentApi res = new api.PaymentApi(mock);
      var arg_request = buildPaymentAttempt();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_attmptId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PaymentAttempt.fromJson(json);
        checkPaymentAttempt(obj);

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
        var resp = convert.json.encode(buildPaymentAttempt());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .verifyPaymentAttempt(
              arg_request, arg_svcProviderId, arg_custId, arg_attmptId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPaymentAttempt(response);
      })));
    });
  });
}
