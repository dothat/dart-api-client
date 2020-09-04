library dothatapis.smsConfig.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/smsconfig/v1.dart' as api;

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

core.int buildCounterParserConfig = 0;
buildParserConfig() {
  var o = new api.ParserConfig();
  buildCounterParserConfig++;
  if (buildCounterParserConfig < 3) {
    o.parserConfigId = "foo";
    o.parserName = "foo";
    o.parserType = "foo";
    o.typeSpecificConfig = buildParserTypeSpecificConfig();
  }
  buildCounterParserConfig--;
  return o;
}

checkParserConfig(api.ParserConfig o) {
  buildCounterParserConfig++;
  if (buildCounterParserConfig < 3) {
    unittest.expect(o.parserConfigId, unittest.equals('foo'));
    unittest.expect(o.parserName, unittest.equals('foo'));
    unittest.expect(o.parserType, unittest.equals('foo'));
    checkParserTypeSpecificConfig(o.typeSpecificConfig);
  }
  buildCounterParserConfig--;
}

buildUnnamed71() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterParserRegexConfig = 0;
buildParserRegexConfig() {
  var o = new api.ParserRegexConfig();
  buildCounterParserRegexConfig++;
  if (buildCounterParserRegexConfig < 3) {
    o.changeType = "foo";
    o.extractExpressions = buildUnnamed71();
    o.matchExpression = "foo";
  }
  buildCounterParserRegexConfig--;
  return o;
}

checkParserRegexConfig(api.ParserRegexConfig o) {
  buildCounterParserRegexConfig++;
  if (buildCounterParserRegexConfig < 3) {
    unittest.expect(o.changeType, unittest.equals('foo'));
    checkUnnamed71(o.extractExpressions);
    unittest.expect(o.matchExpression, unittest.equals('foo'));
  }
  buildCounterParserRegexConfig--;
}

core.int buildCounterParserTypeSpecificConfig = 0;
buildParserTypeSpecificConfig() {
  var o = new api.ParserTypeSpecificConfig();
  buildCounterParserTypeSpecificConfig++;
  if (buildCounterParserTypeSpecificConfig < 3) {
    o.regexConfig = buildParserRegexConfig();
    o.urlConfig = buildParserUrlConfig();
  }
  buildCounterParserTypeSpecificConfig--;
  return o;
}

checkParserTypeSpecificConfig(api.ParserTypeSpecificConfig o) {
  buildCounterParserTypeSpecificConfig++;
  if (buildCounterParserTypeSpecificConfig < 3) {
    checkParserRegexConfig(o.regexConfig);
    checkParserUrlConfig(o.urlConfig);
  }
  buildCounterParserTypeSpecificConfig--;
}

core.int buildCounterParserUrlConfig = 0;
buildParserUrlConfig() {
  var o = new api.ParserUrlConfig();
  buildCounterParserUrlConfig++;
  if (buildCounterParserUrlConfig < 3) {
    o.url = "foo";
  }
  buildCounterParserUrlConfig--;
  return o;
}

checkParserUrlConfig(api.ParserUrlConfig o) {
  buildCounterParserUrlConfig++;
  if (buildCounterParserUrlConfig < 3) {
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterParserUrlConfig--;
}

buildUnnamed72() {
  var o = new core.List<api.ParserConfig>();
  o.add(buildParserConfig());
  o.add(buildParserConfig());
  return o;
}

checkUnnamed72(core.List<api.ParserConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParserConfig(o[0]);
  checkParserConfig(o[1]);
}

buildUnnamed73() {
  var o = new core.List<api.SmsReceiverConfig>();
  o.add(buildSmsReceiverConfig());
  o.add(buildSmsReceiverConfig());
  return o;
}

checkUnnamed73(core.List<api.SmsReceiverConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSmsReceiverConfig(o[0]);
  checkSmsReceiverConfig(o[1]);
}

core.int buildCounterSmsConfig = 0;
buildSmsConfig() {
  var o = new api.SmsConfig();
  buildCounterSmsConfig++;
  if (buildCounterSmsConfig < 3) {
    o.parsers = buildUnnamed72();
    o.receivers = buildUnnamed73();
  }
  buildCounterSmsConfig--;
  return o;
}

checkSmsConfig(api.SmsConfig o) {
  buildCounterSmsConfig++;
  if (buildCounterSmsConfig < 3) {
    checkUnnamed72(o.parsers);
    checkUnnamed73(o.receivers);
  }
  buildCounterSmsConfig--;
}

core.int buildCounterSmsReceiverConfig = 0;
buildSmsReceiverConfig() {
  var o = new api.SmsReceiverConfig();
  buildCounterSmsReceiverConfig++;
  if (buildCounterSmsReceiverConfig < 3) {
    o.messageExtractor = "foo";
    o.phoneNumber = "foo";
    o.uri = "foo";
  }
  buildCounterSmsReceiverConfig--;
  return o;
}

checkSmsReceiverConfig(api.SmsReceiverConfig o) {
  buildCounterSmsReceiverConfig++;
  if (buildCounterSmsReceiverConfig < 3) {
    unittest.expect(o.messageExtractor, unittest.equals('foo'));
    unittest.expect(o.phoneNumber, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterSmsReceiverConfig--;
}

main() {
  unittest.group("obj-schema-ParserConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildParserConfig();
      var od = new api.ParserConfig.fromJson(o.toJson());
      checkParserConfig(od);
    });
  });

  unittest.group("obj-schema-ParserRegexConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildParserRegexConfig();
      var od = new api.ParserRegexConfig.fromJson(o.toJson());
      checkParserRegexConfig(od);
    });
  });

  unittest.group("obj-schema-ParserTypeSpecificConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildParserTypeSpecificConfig();
      var od = new api.ParserTypeSpecificConfig.fromJson(o.toJson());
      checkParserTypeSpecificConfig(od);
    });
  });

  unittest.group("obj-schema-ParserUrlConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildParserUrlConfig();
      var od = new api.ParserUrlConfig.fromJson(o.toJson());
      checkParserUrlConfig(od);
    });
  });

  unittest.group("obj-schema-SmsConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildSmsConfig();
      var od = new api.SmsConfig.fromJson(o.toJson());
      checkSmsConfig(od);
    });
  });

  unittest.group("obj-schema-SmsReceiverConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildSmsReceiverConfig();
      var od = new api.SmsReceiverConfig.fromJson(o.toJson());
      checkSmsReceiverConfig(od);
    });
  });

  unittest.group("resource-SmsConfigApi", () {
    unittest.test("method--createSmsConfig", () {
      var mock = new HttpServerMock();
      api.SmsConfigApi res = new api.SmsConfigApi(mock);
      var arg_request = buildSmsConfig();
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SmsConfig.fromJson(json);
        checkSmsConfig(obj);

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
        var resp = convert.json.encode(buildSmsConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSmsConfig(arg_request, arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSmsConfig(response);
      })));
    });

    unittest.test("method--deleteSmsConfig", () {
      var mock = new HttpServerMock();
      api.SmsConfigApi res = new api.SmsConfigApi(mock);
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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteSmsConfig(arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--getSmsConfig", () {
      var mock = new HttpServerMock();
      api.SmsConfigApi res = new api.SmsConfigApi(mock);
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
        var resp = convert.json.encode(buildSmsConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getSmsConfig(arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSmsConfig(response);
      })));
    });

    unittest.test("method--updateSmsConfig", () {
      var mock = new HttpServerMock();
      api.SmsConfigApi res = new api.SmsConfigApi(mock);
      var arg_request = buildSmsConfig();
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SmsConfig.fromJson(json);
        checkSmsConfig(obj);

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
        var resp = convert.json.encode(buildSmsConfig());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSmsConfig(arg_request, arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSmsConfig(response);
      })));
    });
  });
}
