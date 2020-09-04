library dothatapis.serviceProvider.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/serviceprovider/v1.dart' as api;

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

core.int buildCounterCustomerPolicy = 0;
buildCustomerPolicy() {
  var o = new api.CustomerPolicy();
  buildCounterCustomerPolicy++;
  if (buildCounterCustomerPolicy < 3) {
    o.customerNameRequired = true;
    o.emailOrPhoneRequired = true;
    o.emailRequired = true;
    o.emailUnique = true;
    o.phoneRequired = true;
    o.phoneUnique = true;
    o.primaryEmailUnique = true;
    o.primaryPhoneUnique = true;
  }
  buildCounterCustomerPolicy--;
  return o;
}

checkCustomerPolicy(api.CustomerPolicy o) {
  buildCounterCustomerPolicy++;
  if (buildCounterCustomerPolicy < 3) {
    unittest.expect(o.customerNameRequired, unittest.isTrue);
    unittest.expect(o.emailOrPhoneRequired, unittest.isTrue);
    unittest.expect(o.emailRequired, unittest.isTrue);
    unittest.expect(o.emailUnique, unittest.isTrue);
    unittest.expect(o.phoneRequired, unittest.isTrue);
    unittest.expect(o.phoneUnique, unittest.isTrue);
    unittest.expect(o.primaryEmailUnique, unittest.isTrue);
    unittest.expect(o.primaryPhoneUnique, unittest.isTrue);
  }
  buildCounterCustomerPolicy--;
}

core.int buildCounterEmailAddress = 0;
buildEmailAddress() {
  var o = new api.EmailAddress();
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    o.active = true;
    o.address = "foo";
    o.deleted = true;
    o.label = "foo";
    o.primary = true;
    o.verificationStatus = "foo";
  }
  buildCounterEmailAddress--;
  return o;
}

checkEmailAddress(api.EmailAddress o) {
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.verificationStatus, unittest.equals('foo'));
  }
  buildCounterEmailAddress--;
}

core.int buildCounterOrderPolicy = 0;
buildOrderPolicy() {
  var o = new api.OrderPolicy();
  buildCounterOrderPolicy++;
  if (buildCounterOrderPolicy < 3) {
    o.orderMaxQuantity = 42.0;
    o.orderServiceDuration = 42;
    o.orderServiceDurationType = "foo";
  }
  buildCounterOrderPolicy--;
  return o;
}

checkOrderPolicy(api.OrderPolicy o) {
  buildCounterOrderPolicy++;
  if (buildCounterOrderPolicy < 3) {
    unittest.expect(o.orderMaxQuantity, unittest.equals(42.0));
    unittest.expect(o.orderServiceDuration, unittest.equals(42));
    unittest.expect(o.orderServiceDurationType, unittest.equals('foo'));
  }
  buildCounterOrderPolicy--;
}

core.int buildCounterPhoneNumber = 0;
buildPhoneNumber() {
  var o = new api.PhoneNumber();
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    o.active = true;
    o.deleted = true;
    o.label = "foo";
    o.number = "foo";
    o.primary = true;
    o.verificationStatus = "foo";
  }
  buildCounterPhoneNumber--;
  return o;
}

checkPhoneNumber(api.PhoneNumber o) {
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.verificationStatus, unittest.equals('foo'));
  }
  buildCounterPhoneNumber--;
}

core.int buildCounterServiceArea = 0;
buildServiceArea() {
  var o = new api.ServiceArea();
  buildCounterServiceArea++;
  if (buildCounterServiceArea < 3) {
    o.addressLine1 = "foo";
    o.addressLine2 = "foo";
    o.addressLine3 = "foo";
    o.changeContext = buildChangeContext();
    o.city = "foo";
    o.country = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.fullName = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.parentServiceAreaId = "foo";
    o.parentTreeId = "foo";
    o.postalCode = "foo";
    o.serviceAreaId = "foo";
    o.serviceProviderId = "foo";
    o.state = "foo";
    o.stateCode = "foo";
    o.universalServiceAreaId = "foo";
    o.version = "foo";
  }
  buildCounterServiceArea--;
  return o;
}

checkServiceArea(api.ServiceArea o) {
  buildCounterServiceArea++;
  if (buildCounterServiceArea < 3) {
    unittest.expect(o.addressLine1, unittest.equals('foo'));
    unittest.expect(o.addressLine2, unittest.equals('foo'));
    unittest.expect(o.addressLine3, unittest.equals('foo'));
    checkChangeContext(o.changeContext);
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentServiceAreaId, unittest.equals('foo'));
    unittest.expect(o.parentTreeId, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.serviceAreaId, unittest.equals('foo'));
    unittest.expect(o.serviceProviderId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateCode, unittest.equals('foo'));
    unittest.expect(o.universalServiceAreaId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterServiceArea--;
}

buildUnnamed19() {
  var o = new core.List<api.EmailAddress>();
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

checkUnnamed19(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0]);
  checkEmailAddress(o[1]);
}

buildUnnamed20() {
  var o = new core.List<api.PhoneNumber>();
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

checkUnnamed20(core.List<api.PhoneNumber> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoneNumber(o[0]);
  checkPhoneNumber(o[1]);
}

buildUnnamed21() {
  var o = new core.List<api.ServiceArea>();
  o.add(buildServiceArea());
  o.add(buildServiceArea());
  return o;
}

checkUnnamed21(core.List<api.ServiceArea> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceArea(o[0]);
  checkServiceArea(o[1]);
}

core.int buildCounterServiceProvider = 0;
buildServiceProvider() {
  var o = new api.ServiceProvider();
  buildCounterServiceProvider++;
  if (buildCounterServiceProvider < 3) {
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.emailAddresses = buildUnnamed19();
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.phoneNumbers = buildUnnamed20();
    o.policy = buildServiceProviderPolicy();
    o.serviceAreas = buildUnnamed21();
    o.serviceProviderId = "foo";
    o.serviceType = "foo";
    o.version = "foo";
  }
  buildCounterServiceProvider--;
  return o;
}

checkServiceProvider(api.ServiceProvider o) {
  buildCounterServiceProvider++;
  if (buildCounterServiceProvider < 3) {
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed19(o.emailAddresses);
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed20(o.phoneNumbers);
    checkServiceProviderPolicy(o.policy);
    checkUnnamed21(o.serviceAreas);
    unittest.expect(o.serviceProviderId, unittest.equals('foo'));
    unittest.expect(o.serviceType, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterServiceProvider--;
}

buildUnnamed22() {
  var o = new core.List<api.ServiceProvider>();
  o.add(buildServiceProvider());
  o.add(buildServiceProvider());
  return o;
}

checkUnnamed22(core.List<api.ServiceProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceProvider(o[0]);
  checkServiceProvider(o[1]);
}

core.int buildCounterServiceProviderCollection = 0;
buildServiceProviderCollection() {
  var o = new api.ServiceProviderCollection();
  buildCounterServiceProviderCollection++;
  if (buildCounterServiceProviderCollection < 3) {
    o.items = buildUnnamed22();
  }
  buildCounterServiceProviderCollection--;
  return o;
}

checkServiceProviderCollection(api.ServiceProviderCollection o) {
  buildCounterServiceProviderCollection++;
  if (buildCounterServiceProviderCollection < 3) {
    checkUnnamed22(o.items);
  }
  buildCounterServiceProviderCollection--;
}

core.int buildCounterServiceProviderPolicy = 0;
buildServiceProviderPolicy() {
  var o = new api.ServiceProviderPolicy();
  buildCounterServiceProviderPolicy++;
  if (buildCounterServiceProviderPolicy < 3) {
    o.customerPolicy = buildCustomerPolicy();
    o.orderPolicy = buildOrderPolicy();
  }
  buildCounterServiceProviderPolicy--;
  return o;
}

checkServiceProviderPolicy(api.ServiceProviderPolicy o) {
  buildCounterServiceProviderPolicy++;
  if (buildCounterServiceProviderPolicy < 3) {
    checkCustomerPolicy(o.customerPolicy);
    checkOrderPolicy(o.orderPolicy);
  }
  buildCounterServiceProviderPolicy--;
}

buildUnnamed23() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed24() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed25() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-ChangeContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildChangeContext();
      var od = new api.ChangeContext.fromJson(o.toJson());
      checkChangeContext(od);
    });
  });

  unittest.group("obj-schema-CustomerPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerPolicy();
      var od = new api.CustomerPolicy.fromJson(o.toJson());
      checkCustomerPolicy(od);
    });
  });

  unittest.group("obj-schema-EmailAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmailAddress();
      var od = new api.EmailAddress.fromJson(o.toJson());
      checkEmailAddress(od);
    });
  });

  unittest.group("obj-schema-OrderPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildOrderPolicy();
      var od = new api.OrderPolicy.fromJson(o.toJson());
      checkOrderPolicy(od);
    });
  });

  unittest.group("obj-schema-PhoneNumber", () {
    unittest.test("to-json--from-json", () {
      var o = buildPhoneNumber();
      var od = new api.PhoneNumber.fromJson(o.toJson());
      checkPhoneNumber(od);
    });
  });

  unittest.group("obj-schema-ServiceArea", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceArea();
      var od = new api.ServiceArea.fromJson(o.toJson());
      checkServiceArea(od);
    });
  });

  unittest.group("obj-schema-ServiceProvider", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceProvider();
      var od = new api.ServiceProvider.fromJson(o.toJson());
      checkServiceProvider(od);
    });
  });

  unittest.group("obj-schema-ServiceProviderCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceProviderCollection();
      var od = new api.ServiceProviderCollection.fromJson(o.toJson());
      checkServiceProviderCollection(od);
    });
  });

  unittest.group("obj-schema-ServiceProviderPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceProviderPolicy();
      var od = new api.ServiceProviderPolicy.fromJson(o.toJson());
      checkServiceProviderPolicy(od);
    });
  });

  unittest.group("resource-ServiceProviderApi", () {
    unittest.test("method--createServiceProvider", () {
      var mock = new HttpServerMock();
      api.ServiceProviderApi res = new api.ServiceProviderApi(mock);
      var arg_request = buildServiceProvider();
      var arg_svcAreaIds = buildUnnamed23();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServiceProvider.fromJson(json);
        checkServiceProvider(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("serviceProvider/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("serviceProviders"));
        pathOffset += 16;

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
            queryMap["svcAreaIds"], unittest.equals(arg_svcAreaIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServiceProvider());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createServiceProvider(arg_request,
              svcAreaIds: arg_svcAreaIds, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceProvider(response);
      })));
    });

    unittest.test("method--findServiceProviders", () {
      var mock = new HttpServerMock();
      api.ServiceProviderApi res = new api.ServiceProviderApi(mock);
      var arg_svcAreaId = "foo";
      var arg_svcType = "foo";
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("serviceProvider/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("serviceProviders"));
        pathOffset += 16;

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
            queryMap["svcAreaId"].first, unittest.equals(arg_svcAreaId));
        unittest.expect(
            queryMap["svcType"].first, unittest.equals(arg_svcType));
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServiceProviderCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findServiceProviders(
              svcAreaId: arg_svcAreaId,
              svcType: arg_svcType,
              query: arg_query,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceProviderCollection(response);
      })));
    });

    unittest.test("method--getServiceProvider", () {
      var mock = new HttpServerMock();
      api.ServiceProviderApi res = new api.ServiceProviderApi(mock);
      var arg_srvProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("serviceProvider/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("serviceProviders/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_srvProviderId"));

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
        var resp = convert.json.encode(buildServiceProvider());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServiceProvider(arg_srvProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceProvider(response);
      })));
    });

    unittest.test("method--removeAllServiceProviderAreas", () {
      var mock = new HttpServerMock();
      api.ServiceProviderApi res = new api.ServiceProviderApi(mock);
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("serviceProvider/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("serviceProviders/"));
        pathOffset += 17;
        index = path.indexOf("/areas", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_svcProviderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/areas"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildServiceProvider());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .removeAllServiceProviderAreas(arg_svcProviderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceProvider(response);
      })));
    });

    unittest.test("method--updateServiceProvider", () {
      var mock = new HttpServerMock();
      api.ServiceProviderApi res = new api.ServiceProviderApi(mock);
      var arg_request = buildServiceProvider();
      var arg_svcProviderId = "foo";
      var arg_svcAreaIds = buildUnnamed24();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServiceProvider.fromJson(json);
        checkServiceProvider(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("serviceProvider/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("serviceProviders/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_svcProviderId"));

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
            queryMap["svcAreaIds"], unittest.equals(arg_svcAreaIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServiceProvider());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateServiceProvider(arg_request, arg_svcProviderId,
              svcAreaIds: arg_svcAreaIds, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceProvider(response);
      })));
    });

    unittest.test("method--updateServiceProviderAreas", () {
      var mock = new HttpServerMock();
      api.ServiceProviderApi res = new api.ServiceProviderApi(mock);
      var arg_svcProviderId = "foo";
      var arg_svcAreaIds = buildUnnamed25();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("serviceProvider/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("serviceProviders/"));
        pathOffset += 17;
        index = path.indexOf("/areas", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_svcProviderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/areas"));
        pathOffset += 6;

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
            queryMap["svcAreaIds"], unittest.equals(arg_svcAreaIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServiceProvider());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateServiceProviderAreas(arg_svcProviderId, arg_svcAreaIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceProvider(response);
      })));
    });

    unittest.test("method--updateServiceProviderPolicy", () {
      var mock = new HttpServerMock();
      api.ServiceProviderApi res = new api.ServiceProviderApi(mock);
      var arg_request = buildServiceProviderPolicy();
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServiceProviderPolicy.fromJson(json);
        checkServiceProviderPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("serviceProvider/v1/"));
        pathOffset += 19;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("serviceProviders/"));
        pathOffset += 17;
        index = path.indexOf("/policy", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_svcProviderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/policy"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildServiceProvider());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateServiceProviderPolicy(arg_request, arg_svcProviderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceProvider(response);
      })));
    });
  });
}
