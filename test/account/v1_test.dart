library dothatapis.account.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/account/v1.dart' as api;

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

core.int buildCounterAccountBalanceSummary = 0;
buildAccountBalanceSummary() {
  var o = new api.AccountBalanceSummary();
  buildCounterAccountBalanceSummary++;
  if (buildCounterAccountBalanceSummary < 3) {
    o.balanceDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.billingType = "foo";
    o.unpaidBillBalance = 42.0;
    o.walletBalance = 42.0;
  }
  buildCounterAccountBalanceSummary--;
  return o;
}

checkAccountBalanceSummary(api.AccountBalanceSummary o) {
  buildCounterAccountBalanceSummary++;
  if (buildCounterAccountBalanceSummary < 3) {
    unittest.expect(o.balanceDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.billingType, unittest.equals('foo'));
    unittest.expect(o.unpaidBillBalance, unittest.equals(42.0));
    unittest.expect(o.walletBalance, unittest.equals(42.0));
  }
  buildCounterAccountBalanceSummary--;
}

core.int buildCounterBillingAccount = 0;
buildBillingAccount() {
  var o = new api.BillingAccount();
  buildCounterBillingAccount++;
  if (buildCounterBillingAccount < 3) {
    o.accountId = "foo";
    o.accountName = "foo";
    o.active = true;
    o.billedEntityName = "foo";
    o.billingAddress = buildBillingAddress();
    o.billingCurrency = "foo";
    o.billingType = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.creditLimit = 42.0;
    o.customerAddressUsedForBilling = true;
    o.customerId = "foo";
    o.customerNameUsedForBilling = true;
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.preferredPaymentMethod = "foo";
    o.preferredPaymentMethodName = "foo";
    o.pricingPlan = buildPricingPlan();
    o.pricingPlanId = "foo";
    o.version = "foo";
  }
  buildCounterBillingAccount--;
  return o;
}

checkBillingAccount(api.BillingAccount o) {
  buildCounterBillingAccount++;
  if (buildCounterBillingAccount < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.accountName, unittest.equals('foo'));
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.billedEntityName, unittest.equals('foo'));
    checkBillingAddress(o.billingAddress);
    unittest.expect(o.billingCurrency, unittest.equals('foo'));
    unittest.expect(o.billingType, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.creditLimit, unittest.equals(42.0));
    unittest.expect(o.customerAddressUsedForBilling, unittest.isTrue);
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.customerNameUsedForBilling, unittest.isTrue);
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.preferredPaymentMethod, unittest.equals('foo'));
    unittest.expect(o.preferredPaymentMethodName, unittest.equals('foo'));
    checkPricingPlan(o.pricingPlan);
    unittest.expect(o.pricingPlanId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterBillingAccount--;
}

buildUnnamed73() {
  var o = new core.List<api.BillingAccount>();
  o.add(buildBillingAccount());
  o.add(buildBillingAccount());
  return o;
}

checkUnnamed73(core.List<api.BillingAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBillingAccount(o[0]);
  checkBillingAccount(o[1]);
}

core.int buildCounterBillingAccountCollection = 0;
buildBillingAccountCollection() {
  var o = new api.BillingAccountCollection();
  buildCounterBillingAccountCollection++;
  if (buildCounterBillingAccountCollection < 3) {
    o.items = buildUnnamed73();
  }
  buildCounterBillingAccountCollection--;
  return o;
}

checkBillingAccountCollection(api.BillingAccountCollection o) {
  buildCounterBillingAccountCollection++;
  if (buildCounterBillingAccountCollection < 3) {
    checkUnnamed73(o.items);
  }
  buildCounterBillingAccountCollection--;
}

core.int buildCounterBillingAddress = 0;
buildBillingAddress() {
  var o = new api.BillingAddress();
  buildCounterBillingAddress++;
  if (buildCounterBillingAddress < 3) {
    o.addressLine1 = "foo";
    o.addressLine2 = "foo";
    o.addressLine3 = "foo";
    o.city = "foo";
    o.state = "foo";
  }
  buildCounterBillingAddress--;
  return o;
}

checkBillingAddress(api.BillingAddress o) {
  buildCounterBillingAddress++;
  if (buildCounterBillingAddress < 3) {
    unittest.expect(o.addressLine1, unittest.equals('foo'));
    unittest.expect(o.addressLine2, unittest.equals('foo'));
    unittest.expect(o.addressLine3, unittest.equals('foo'));
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterBillingAddress--;
}

core.int buildCounterChangeContext = 0;
buildChangeContext() {
  var o = new api.ChangeContext();
  buildCounterChangeContext++;
  if (buildCounterChangeContext < 3) {
    o.initiatorType = "foo";
    o.messageId = "foo";
    o.userIdentifier = "foo";
  }
  buildCounterChangeContext--;
  return o;
}

checkChangeContext(api.ChangeContext o) {
  buildCounterChangeContext++;
  if (buildCounterChangeContext < 3) {
    unittest.expect(o.initiatorType, unittest.equals('foo'));
    unittest.expect(o.messageId, unittest.equals('foo'));
    unittest.expect(o.userIdentifier, unittest.equals('foo'));
  }
  buildCounterChangeContext--;
}

core.int buildCounterPricingPlan = 0;
buildPricingPlan() {
  var o = new api.PricingPlan();
  buildCounterPricingPlan++;
  if (buildCounterPricingPlan < 3) {
    o.active = true;
    o.changeContext = buildChangeContext();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.default_ = true;
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.planCode = "foo";
    o.planId = "foo";
    o.planName = "foo";
    o.version = "foo";
  }
  buildCounterPricingPlan--;
  return o;
}

checkPricingPlan(api.PricingPlan o) {
  buildCounterPricingPlan++;
  if (buildCounterPricingPlan < 3) {
    unittest.expect(o.active, unittest.isTrue);
    checkChangeContext(o.changeContext);
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.default_, unittest.isTrue);
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.planCode, unittest.equals('foo'));
    unittest.expect(o.planId, unittest.equals('foo'));
    unittest.expect(o.planName, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterPricingPlan--;
}

main() {
  unittest.group("obj-schema-AccountBalanceSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildAccountBalanceSummary();
      var od = new api.AccountBalanceSummary.fromJson(o.toJson());
      checkAccountBalanceSummary(od);
    });
  });

  unittest.group("obj-schema-BillingAccount", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingAccount();
      var od = new api.BillingAccount.fromJson(o.toJson());
      checkBillingAccount(od);
    });
  });

  unittest.group("obj-schema-BillingAccountCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingAccountCollection();
      var od = new api.BillingAccountCollection.fromJson(o.toJson());
      checkBillingAccountCollection(od);
    });
  });

  unittest.group("obj-schema-BillingAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingAddress();
      var od = new api.BillingAddress.fromJson(o.toJson());
      checkBillingAddress(od);
    });
  });

  unittest.group("obj-schema-ChangeContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildChangeContext();
      var od = new api.ChangeContext.fromJson(o.toJson());
      checkChangeContext(od);
    });
  });

  unittest.group("obj-schema-PricingPlan", () {
    unittest.test("to-json--from-json", () {
      var o = buildPricingPlan();
      var od = new api.PricingPlan.fromJson(o.toJson());
      checkPricingPlan(od);
    });
  });

  unittest.group("resource-AccountApi", () {
    unittest.test("method--createAccount", () {
      var mock = new HttpServerMock();
      api.AccountApi res = new api.AccountApi(mock);
      var arg_request = buildBillingAccount();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BillingAccount.fromJson(json);
        checkBillingAccount(obj);

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
        unittest.expect(queryMap["custId"].first, unittest.equals(arg_custId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBillingAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createAccount(arg_request, arg_svcProviderId, arg_custId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingAccount(response);
      })));
    });

    unittest.test("method--findAccountsForCustomer", () {
      var mock = new HttpServerMock();
      api.AccountApi res = new api.AccountApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
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
        var resp = convert.json.encode(buildBillingAccountCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findAccountsForCustomer(arg_svcProviderId, arg_custId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingAccountCollection(response);
      })));
    });

    unittest.test("method--getAccount", () {
      var mock = new HttpServerMock();
      api.AccountApi res = new api.AccountApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
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
        var resp = convert.json.encode(buildBillingAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAccount(arg_svcProviderId, arg_custId, arg_acctId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingAccount(response);
      })));
    });

    unittest.test("method--getAccountBalanceSummary", () {
      var mock = new HttpServerMock();
      api.AccountApi res = new api.AccountApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_balanceDt = core.DateTime.parse("2002-02-27T14:01:02Z");
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
        unittest.expect(core.DateTime.parse(queryMap["balanceDt"].first),
            unittest.equals(arg_balanceDt));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildAccountBalanceSummary());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getAccountBalanceSummary(
              arg_svcProviderId, arg_custId, arg_balanceDt,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountBalanceSummary(response);
      })));
    });

    unittest.test("method--updateAccount", () {
      var mock = new HttpServerMock();
      api.AccountApi res = new api.AccountApi(mock);
      var arg_request = buildBillingAccount();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_acctId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BillingAccount.fromJson(json);
        checkBillingAccount(obj);

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
        var resp = convert.json.encode(buildBillingAccount());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateAccount(arg_request, arg_svcProviderId, arg_custId, arg_acctId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBillingAccount(response);
      })));
    });
  });
}
