library dothatapis.serviceArea.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/servicearea/v1.dart' as api;

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

buildUnnamed5() {
  var o = new core.List<api.ServiceArea>();
  o.add(buildServiceArea());
  o.add(buildServiceArea());
  return o;
}

checkUnnamed5(core.List<api.ServiceArea> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceArea(o[0]);
  checkServiceArea(o[1]);
}

core.int buildCounterServiceAreaCollection = 0;
buildServiceAreaCollection() {
  var o = new api.ServiceAreaCollection();
  buildCounterServiceAreaCollection++;
  if (buildCounterServiceAreaCollection < 3) {
    o.items = buildUnnamed5();
  }
  buildCounterServiceAreaCollection--;
  return o;
}

checkServiceAreaCollection(api.ServiceAreaCollection o) {
  buildCounterServiceAreaCollection++;
  if (buildCounterServiceAreaCollection < 3) {
    checkUnnamed5(o.items);
  }
  buildCounterServiceAreaCollection--;
}

core.int buildCounterServicedAddress = 0;
buildServicedAddress() {
  var o = new api.ServicedAddress();
  buildCounterServicedAddress++;
  if (buildCounterServicedAddress < 3) {
    o.businessName = "foo";
    o.floor = "foo";
    o.houseNumber = "foo";
    o.serviceArea = buildServiceArea();
    o.servicedAddressId = "foo";
  }
  buildCounterServicedAddress--;
  return o;
}

checkServicedAddress(api.ServicedAddress o) {
  buildCounterServicedAddress++;
  if (buildCounterServicedAddress < 3) {
    unittest.expect(o.businessName, unittest.equals('foo'));
    unittest.expect(o.floor, unittest.equals('foo'));
    unittest.expect(o.houseNumber, unittest.equals('foo'));
    checkServiceArea(o.serviceArea);
    unittest.expect(o.servicedAddressId, unittest.equals('foo'));
  }
  buildCounterServicedAddress--;
}

buildUnnamed6() {
  var o = new core.List<api.ServicedAddress>();
  o.add(buildServicedAddress());
  o.add(buildServicedAddress());
  return o;
}

checkUnnamed6(core.List<api.ServicedAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicedAddress(o[0]);
  checkServicedAddress(o[1]);
}

core.int buildCounterServicedAddressCollection = 0;
buildServicedAddressCollection() {
  var o = new api.ServicedAddressCollection();
  buildCounterServicedAddressCollection++;
  if (buildCounterServicedAddressCollection < 3) {
    o.items = buildUnnamed6();
  }
  buildCounterServicedAddressCollection--;
  return o;
}

checkServicedAddressCollection(api.ServicedAddressCollection o) {
  buildCounterServicedAddressCollection++;
  if (buildCounterServicedAddressCollection < 3) {
    checkUnnamed6(o.items);
  }
  buildCounterServicedAddressCollection--;
}

main() {
  unittest.group("obj-schema-ChangeContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildChangeContext();
      var od = new api.ChangeContext.fromJson(o.toJson());
      checkChangeContext(od);
    });
  });

  unittest.group("obj-schema-ServiceArea", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceArea();
      var od = new api.ServiceArea.fromJson(o.toJson());
      checkServiceArea(od);
    });
  });

  unittest.group("obj-schema-ServiceAreaCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceAreaCollection();
      var od = new api.ServiceAreaCollection.fromJson(o.toJson());
      checkServiceAreaCollection(od);
    });
  });

  unittest.group("obj-schema-ServicedAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildServicedAddress();
      var od = new api.ServicedAddress.fromJson(o.toJson());
      checkServicedAddress(od);
    });
  });

  unittest.group("obj-schema-ServicedAddressCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildServicedAddressCollection();
      var od = new api.ServicedAddressCollection.fromJson(o.toJson());
      checkServicedAddressCollection(od);
    });
  });

  unittest.group("resource-ServiceAreaApi", () {
    unittest.test("method--createServiceArea", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_request = buildServiceArea();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServiceArea.fromJson(json);
        checkServiceArea(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("serviceAreas"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildServiceArea());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createServiceArea(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceArea(response);
      })));
    });

    unittest.test("method--createServiceProviderServiceArea", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_request = buildServiceArea();
      var arg_svcProviderId = "foo";
      var arg_parentSvcAreaId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServiceArea.fromJson(json);
        checkServiceArea(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("serviceProviders/"));
        pathOffset += 17;
        index = path.indexOf("/serviceAreas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_svcProviderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/serviceAreas/"));
        pathOffset += 14;
        index = path.indexOf("/serviceAreas", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_parentSvcAreaId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/serviceAreas"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildServiceArea());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createServiceProviderServiceArea(
              arg_request, arg_svcProviderId, arg_parentSvcAreaId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceArea(response);
      })));
    });

    unittest.test("method--createServicedAddress", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_request = buildServicedAddress();
      var arg_areaId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServicedAddress.fromJson(json);
        checkServicedAddress(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("serviceAreas/"));
        pathOffset += 13;
        index = path.indexOf("/addresses", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_areaId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/addresses"));
        pathOffset += 10;

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
        var resp = convert.json.encode(buildServicedAddress());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createServicedAddress(arg_request, arg_areaId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServicedAddress(response);
      })));
    });

    unittest.test("method--deleteServicedAddress", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_areaId = "foo";
      var arg_addressId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("serviceAreas/"));
        pathOffset += 13;
        index = path.indexOf("/addresses/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_areaId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/addresses/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_addressId"));

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
        var resp = convert.json.encode(buildServicedAddress());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteServicedAddress(arg_areaId, arg_addressId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServicedAddress(response);
      })));
    });

    unittest.test("method--findUnassignedServiceAreas", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_serviceProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 39),
            unittest.equals("serviceAreas/findUnassignedServiceAreas"));
        pathOffset += 39;

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
        unittest.expect(queryMap["serviceProviderId"].first,
            unittest.equals(arg_serviceProviderId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServiceAreaCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findUnassignedServiceAreas(
              serviceProviderId: arg_serviceProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAreaCollection(response);
      })));
    });

    unittest.test("method--getServiceArea", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_svcAreaId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("serviceAreas/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_svcAreaId"));

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
        var resp = convert.json.encode(buildServiceArea());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServiceArea(arg_svcAreaId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceArea(response);
      })));
    });

    unittest.test("method--getServiceProviderServiceArea", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_svcProviderId = "foo";
      var arg_svcAreaId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("serviceProviders/"));
        pathOffset += 17;
        index = path.indexOf("/serviceAreas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_svcProviderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/serviceAreas/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_svcAreaId"));

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
        var resp = convert.json.encode(buildServiceArea());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServiceProviderServiceArea(arg_svcProviderId, arg_svcAreaId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceArea(response);
      })));
    });

    unittest.test("method--getServicedAddress", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_areaId = "foo";
      var arg_addressId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("serviceAreas/"));
        pathOffset += 13;
        index = path.indexOf("/addresses/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_areaId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/addresses/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_addressId"));

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
        var resp = convert.json.encode(buildServicedAddress());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getServicedAddress(arg_areaId, arg_addressId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServicedAddress(response);
      })));
    });

    unittest.test("method--searchServiceAddresses", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_areaId = "foo";
      var arg_businessName = "foo";
      var arg_houseNumber = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("serviceAreas/"));
        pathOffset += 13;
        index = path.indexOf("/addresses", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_areaId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/addresses"));
        pathOffset += 10;

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
            queryMap["businessName"].first, unittest.equals(arg_businessName));
        unittest.expect(
            queryMap["houseNumber"].first, unittest.equals(arg_houseNumber));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServicedAddressCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchServiceAddresses(arg_areaId,
              businessName: arg_businessName,
              houseNumber: arg_houseNumber,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServicedAddressCollection(response);
      })));
    });

    unittest.test("method--searchServiceArea", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_country = "foo";
      var arg_state = "foo";
      var arg_city = "foo";
      var arg_searchQuery = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("serviceAreas"));
        pathOffset += 12;

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
            queryMap["country"].first, unittest.equals(arg_country));
        unittest.expect(queryMap["state"].first, unittest.equals(arg_state));
        unittest.expect(queryMap["city"].first, unittest.equals(arg_city));
        unittest.expect(
            queryMap["searchQuery"].first, unittest.equals(arg_searchQuery));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildServiceAreaCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .searchServiceArea(
              country: arg_country,
              state: arg_state,
              city: arg_city,
              searchQuery: arg_searchQuery,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceAreaCollection(response);
      })));
    });

    unittest.test("method--updateServiceArea", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_request = buildServiceArea();
      var arg_svcAreaId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServiceArea.fromJson(json);
        checkServiceArea(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("serviceAreas/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_svcAreaId"));

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
        var resp = convert.json.encode(buildServiceArea());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateServiceArea(arg_request, arg_svcAreaId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceArea(response);
      })));
    });

    unittest.test("method--updateServiceProviderServiceArea", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_request = buildServiceArea();
      var arg_svcProviderId = "foo";
      var arg_parentSvcAreaId = "foo";
      var arg_svcAreaId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServiceArea.fromJson(json);
        checkServiceArea(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("serviceProviders/"));
        pathOffset += 17;
        index = path.indexOf("/serviceAreas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_svcProviderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/serviceAreas/"));
        pathOffset += 14;
        index = path.indexOf("/serviceAreas/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_parentSvcAreaId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/serviceAreas/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_svcAreaId"));

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
        var resp = convert.json.encode(buildServiceArea());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateServiceProviderServiceArea(arg_request, arg_svcProviderId,
              arg_parentSvcAreaId, arg_svcAreaId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServiceArea(response);
      })));
    });

    unittest.test("method--updateServicedAddress", () {
      var mock = new HttpServerMock();
      api.ServiceAreaApi res = new api.ServiceAreaApi(mock);
      var arg_request = buildServicedAddress();
      var arg_areaId = "foo";
      var arg_addressId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ServicedAddress.fromJson(json);
        checkServicedAddress(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("serviceArea/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("serviceAreas/"));
        pathOffset += 13;
        index = path.indexOf("/addresses/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_areaId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/addresses/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_addressId"));

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
        var resp = convert.json.encode(buildServicedAddress());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateServicedAddress(arg_request, arg_areaId, arg_addressId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkServicedAddress(response);
      })));
    });
  });
}
