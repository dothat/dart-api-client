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

import 'package:dothatapis/smsconfig/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterParserConfig = 0;
api.ParserConfig buildParserConfig() {
  var o = api.ParserConfig();
  buildCounterParserConfig++;
  if (buildCounterParserConfig < 3) {
    o.parserConfigId = 'foo';
    o.parserName = 'foo';
    o.parserType = 'foo';
    o.typeSpecificConfig = buildParserTypeSpecificConfig();
  }
  buildCounterParserConfig--;
  return o;
}

void checkParserConfig(api.ParserConfig o) {
  buildCounterParserConfig++;
  if (buildCounterParserConfig < 3) {
    unittest.expect(
      o.parserConfigId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parserName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parserType!,
      unittest.equals('foo'),
    );
    checkParserTypeSpecificConfig(
        o.typeSpecificConfig! as api.ParserTypeSpecificConfig);
  }
  buildCounterParserConfig--;
}

core.List<core.String> buildUnnamed70() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterParserRegexConfig = 0;
api.ParserRegexConfig buildParserRegexConfig() {
  var o = api.ParserRegexConfig();
  buildCounterParserRegexConfig++;
  if (buildCounterParserRegexConfig < 3) {
    o.changeType = 'foo';
    o.extractExpressions = buildUnnamed70();
    o.matchExpression = 'foo';
  }
  buildCounterParserRegexConfig--;
  return o;
}

void checkParserRegexConfig(api.ParserRegexConfig o) {
  buildCounterParserRegexConfig++;
  if (buildCounterParserRegexConfig < 3) {
    unittest.expect(
      o.changeType!,
      unittest.equals('foo'),
    );
    checkUnnamed70(o.extractExpressions!);
    unittest.expect(
      o.matchExpression!,
      unittest.equals('foo'),
    );
  }
  buildCounterParserRegexConfig--;
}

core.int buildCounterParserTypeSpecificConfig = 0;
api.ParserTypeSpecificConfig buildParserTypeSpecificConfig() {
  var o = api.ParserTypeSpecificConfig();
  buildCounterParserTypeSpecificConfig++;
  if (buildCounterParserTypeSpecificConfig < 3) {
    o.regexConfig = buildParserRegexConfig();
    o.urlConfig = buildParserUrlConfig();
  }
  buildCounterParserTypeSpecificConfig--;
  return o;
}

void checkParserTypeSpecificConfig(api.ParserTypeSpecificConfig o) {
  buildCounterParserTypeSpecificConfig++;
  if (buildCounterParserTypeSpecificConfig < 3) {
    checkParserRegexConfig(o.regexConfig! as api.ParserRegexConfig);
    checkParserUrlConfig(o.urlConfig! as api.ParserUrlConfig);
  }
  buildCounterParserTypeSpecificConfig--;
}

core.int buildCounterParserUrlConfig = 0;
api.ParserUrlConfig buildParserUrlConfig() {
  var o = api.ParserUrlConfig();
  buildCounterParserUrlConfig++;
  if (buildCounterParserUrlConfig < 3) {
    o.url = 'foo';
  }
  buildCounterParserUrlConfig--;
  return o;
}

void checkParserUrlConfig(api.ParserUrlConfig o) {
  buildCounterParserUrlConfig++;
  if (buildCounterParserUrlConfig < 3) {
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterParserUrlConfig--;
}

core.List<api.ParserConfig> buildUnnamed71() {
  var o = <api.ParserConfig>[];
  o.add(buildParserConfig());
  o.add(buildParserConfig());
  return o;
}

void checkUnnamed71(core.List<api.ParserConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParserConfig(o[0] as api.ParserConfig);
  checkParserConfig(o[1] as api.ParserConfig);
}

core.List<api.SmsReceiverConfig> buildUnnamed72() {
  var o = <api.SmsReceiverConfig>[];
  o.add(buildSmsReceiverConfig());
  o.add(buildSmsReceiverConfig());
  return o;
}

void checkUnnamed72(core.List<api.SmsReceiverConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSmsReceiverConfig(o[0] as api.SmsReceiverConfig);
  checkSmsReceiverConfig(o[1] as api.SmsReceiverConfig);
}

core.int buildCounterSmsConfig = 0;
api.SmsConfig buildSmsConfig() {
  var o = api.SmsConfig();
  buildCounterSmsConfig++;
  if (buildCounterSmsConfig < 3) {
    o.parsers = buildUnnamed71();
    o.receivers = buildUnnamed72();
  }
  buildCounterSmsConfig--;
  return o;
}

void checkSmsConfig(api.SmsConfig o) {
  buildCounterSmsConfig++;
  if (buildCounterSmsConfig < 3) {
    checkUnnamed71(o.parsers!);
    checkUnnamed72(o.receivers!);
  }
  buildCounterSmsConfig--;
}

core.int buildCounterSmsReceiverConfig = 0;
api.SmsReceiverConfig buildSmsReceiverConfig() {
  var o = api.SmsReceiverConfig();
  buildCounterSmsReceiverConfig++;
  if (buildCounterSmsReceiverConfig < 3) {
    o.messageExtractor = 'foo';
    o.phoneNumber = 'foo';
    o.uri = 'foo';
  }
  buildCounterSmsReceiverConfig--;
  return o;
}

void checkSmsReceiverConfig(api.SmsReceiverConfig o) {
  buildCounterSmsReceiverConfig++;
  if (buildCounterSmsReceiverConfig < 3) {
    unittest.expect(
      o.messageExtractor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterSmsReceiverConfig--;
}

void main() {
  unittest.group('obj-schema-ParserConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildParserConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ParserConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParserConfig(od as api.ParserConfig);
    });
  });

  unittest.group('obj-schema-ParserRegexConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildParserRegexConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ParserRegexConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParserRegexConfig(od as api.ParserRegexConfig);
    });
  });

  unittest.group('obj-schema-ParserTypeSpecificConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildParserTypeSpecificConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ParserTypeSpecificConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParserTypeSpecificConfig(od as api.ParserTypeSpecificConfig);
    });
  });

  unittest.group('obj-schema-ParserUrlConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildParserUrlConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ParserUrlConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParserUrlConfig(od as api.ParserUrlConfig);
    });
  });

  unittest.group('obj-schema-SmsConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSmsConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.SmsConfig.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSmsConfig(od as api.SmsConfig);
    });
  });

  unittest.group('obj-schema-SmsReceiverConfig', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSmsReceiverConfig();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.SmsReceiverConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSmsReceiverConfig(od as api.SmsReceiverConfig);
    });
  });

  unittest.group('resource-SmsConfigApi', () {
    unittest.test('method--createSmsConfig', () async {
      var mock = HttpServerMock();
      var res = api.SmsConfigApi(mock);
      var arg_request = buildSmsConfig();
      var arg_svcProviderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.SmsConfig.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSmsConfig(obj as api.SmsConfig);

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
        var resp = convert.json.encode(buildSmsConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createSmsConfig(arg_request, arg_svcProviderId,
          $fields: arg_$fields);
      checkSmsConfig(response as api.SmsConfig);
    });

    unittest.test('method--deleteSmsConfig', () async {
      var mock = HttpServerMock();
      var res = api.SmsConfigApi(mock);
      var arg_svcProviderId = 'foo';
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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.deleteSmsConfig(arg_svcProviderId, $fields: arg_$fields);
    });

    unittest.test('method--getSmsConfig', () async {
      var mock = HttpServerMock();
      var res = api.SmsConfigApi(mock);
      var arg_svcProviderId = 'foo';
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
        var resp = convert.json.encode(buildSmsConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getSmsConfig(arg_svcProviderId, $fields: arg_$fields);
      checkSmsConfig(response as api.SmsConfig);
    });

    unittest.test('method--updateSmsConfig', () async {
      var mock = HttpServerMock();
      var res = api.SmsConfigApi(mock);
      var arg_request = buildSmsConfig();
      var arg_svcProviderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.SmsConfig.fromJson(json as core.Map<core.String, core.dynamic>);
        checkSmsConfig(obj as api.SmsConfig);

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
        var resp = convert.json.encode(buildSmsConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateSmsConfig(arg_request, arg_svcProviderId,
          $fields: arg_$fields);
      checkSmsConfig(response as api.SmsConfig);
    });
  });
}
