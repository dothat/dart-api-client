library dothatapis.packaging.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/packaging/v1.dart' as api;

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

core.int buildCounterPackaging = 0;
buildPackaging() {
  var o = new api.Packaging();
  buildCounterPackaging++;
  if (buildCounterPackaging < 3) {
    o.active = true;
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.packagingCode = "foo";
    o.packagingId = "foo";
    o.version = "foo";
  }
  buildCounterPackaging--;
  return o;
}

checkPackaging(api.Packaging o) {
  buildCounterPackaging++;
  if (buildCounterPackaging < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.packagingCode, unittest.equals('foo'));
    unittest.expect(o.packagingId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterPackaging--;
}

buildUnnamed29() {
  var o = new core.List<api.Packaging>();
  o.add(buildPackaging());
  o.add(buildPackaging());
  return o;
}

checkUnnamed29(core.List<api.Packaging> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackaging(o[0]);
  checkPackaging(o[1]);
}

core.int buildCounterPackagingCollection = 0;
buildPackagingCollection() {
  var o = new api.PackagingCollection();
  buildCounterPackagingCollection++;
  if (buildCounterPackagingCollection < 3) {
    o.items = buildUnnamed29();
  }
  buildCounterPackagingCollection--;
  return o;
}

checkPackagingCollection(api.PackagingCollection o) {
  buildCounterPackagingCollection++;
  if (buildCounterPackagingCollection < 3) {
    checkUnnamed29(o.items);
  }
  buildCounterPackagingCollection--;
}

main() {
  unittest.group("obj-schema-Packaging", () {
    unittest.test("to-json--from-json", () {
      var o = buildPackaging();
      var od = new api.Packaging.fromJson(o.toJson());
      checkPackaging(od);
    });
  });

  unittest.group("obj-schema-PackagingCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildPackagingCollection();
      var od = new api.PackagingCollection.fromJson(o.toJson());
      checkPackagingCollection(od);
    });
  });

  unittest.group("resource-PackagingApi", () {
    unittest.test("method--createPackaging", () {
      var mock = new HttpServerMock();
      api.PackagingApi res = new api.PackagingApi(mock);
      var arg_request = buildPackaging();
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Packaging.fromJson(json);
        checkPackaging(obj);

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
        var resp = convert.json.encode(buildPackaging());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createPackaging(arg_request, arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPackaging(response);
      })));
    });

    unittest.test("method--deletePackaging", () {
      var mock = new HttpServerMock();
      api.PackagingApi res = new api.PackagingApi(mock);
      var arg_svcProviderId = "foo";
      var arg_pkgId = "foo";
      var arg_expunge = true;
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
        unittest.expect(
            queryMap["expunge"].first, unittest.equals("$arg_expunge"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deletePackaging(arg_svcProviderId, arg_pkgId,
              expunge: arg_expunge, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--findPackagings", () {
      var mock = new HttpServerMock();
      api.PackagingApi res = new api.PackagingApi(mock);
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
        var resp = convert.json.encode(buildPackagingCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findPackagings(arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPackagingCollection(response);
      })));
    });

    unittest.test("method--getPackaging", () {
      var mock = new HttpServerMock();
      api.PackagingApi res = new api.PackagingApi(mock);
      var arg_svcProviderId = "foo";
      var arg_pkgId = "foo";
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
        var resp = convert.json.encode(buildPackaging());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPackaging(arg_svcProviderId, arg_pkgId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPackaging(response);
      })));
    });

    unittest.test("method--updatePackaging", () {
      var mock = new HttpServerMock();
      api.PackagingApi res = new api.PackagingApi(mock);
      var arg_request = buildPackaging();
      var arg_svcProviderId = "foo";
      var arg_pkgId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Packaging.fromJson(json);
        checkPackaging(obj);

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
        var resp = convert.json.encode(buildPackaging());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatePackaging(arg_request, arg_svcProviderId, arg_pkgId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPackaging(response);
      })));
    });
  });
}
