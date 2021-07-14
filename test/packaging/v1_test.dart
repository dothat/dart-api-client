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

import 'package:dothatapis/packaging/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterPackaging = 0;
api.Packaging buildPackaging() {
  var o = api.Packaging();
  buildCounterPackaging++;
  if (buildCounterPackaging < 3) {
    o.active = true;
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.packagingCode = 'foo';
    o.packagingId = 'foo';
    o.version = 'foo';
  }
  buildCounterPackaging--;
  return o;
}

void checkPackaging(api.Packaging o) {
  buildCounterPackaging++;
  if (buildCounterPackaging < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packagingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packagingId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterPackaging--;
}

core.List<api.Packaging> buildUnnamed31() {
  var o = <api.Packaging>[];
  o.add(buildPackaging());
  o.add(buildPackaging());
  return o;
}

void checkUnnamed31(core.List<api.Packaging> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackaging(o[0] as api.Packaging);
  checkPackaging(o[1] as api.Packaging);
}

core.int buildCounterPackagingCollection = 0;
api.PackagingCollection buildPackagingCollection() {
  var o = api.PackagingCollection();
  buildCounterPackagingCollection++;
  if (buildCounterPackagingCollection < 3) {
    o.items = buildUnnamed31();
  }
  buildCounterPackagingCollection--;
  return o;
}

void checkPackagingCollection(api.PackagingCollection o) {
  buildCounterPackagingCollection++;
  if (buildCounterPackagingCollection < 3) {
    checkUnnamed31(o.items!);
  }
  buildCounterPackagingCollection--;
}

void main() {
  unittest.group('obj-schema-Packaging', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPackaging();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Packaging.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPackaging(od as api.Packaging);
    });
  });

  unittest.group('obj-schema-PackagingCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPackagingCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PackagingCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackagingCollection(od as api.PackagingCollection);
    });
  });

  unittest.group('resource-PackagingApi', () {
    unittest.test('method--createPackaging', () async {
      var mock = HttpServerMock();
      var res = api.PackagingApi(mock);
      var arg_request = buildPackaging();
      var arg_svcProviderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Packaging.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPackaging(obj as api.Packaging);

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
        var resp = convert.json.encode(buildPackaging());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createPackaging(arg_request, arg_svcProviderId,
          $fields: arg_$fields);
      checkPackaging(response as api.Packaging);
    });

    unittest.test('method--deletePackaging', () async {
      var mock = HttpServerMock();
      var res = api.PackagingApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_pkgId = 'foo';
      var arg_expunge = true;
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
          queryMap["expunge"]!.first,
          unittest.equals("$arg_expunge"),
        );
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
      await res.deletePackaging(arg_svcProviderId, arg_pkgId,
          expunge: arg_expunge, $fields: arg_$fields);
    });

    unittest.test('method--findPackagings', () async {
      var mock = HttpServerMock();
      var res = api.PackagingApi(mock);
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
        var resp = convert.json.encode(buildPackagingCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.findPackagings(arg_svcProviderId, $fields: arg_$fields);
      checkPackagingCollection(response as api.PackagingCollection);
    });

    unittest.test('method--getPackaging', () async {
      var mock = HttpServerMock();
      var res = api.PackagingApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_pkgId = 'foo';
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
        var resp = convert.json.encode(buildPackaging());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPackaging(arg_svcProviderId, arg_pkgId,
          $fields: arg_$fields);
      checkPackaging(response as api.Packaging);
    });

    unittest.test('method--updatePackaging', () async {
      var mock = HttpServerMock();
      var res = api.PackagingApi(mock);
      var arg_request = buildPackaging();
      var arg_svcProviderId = 'foo';
      var arg_pkgId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Packaging.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPackaging(obj as api.Packaging);

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
        var resp = convert.json.encode(buildPackaging());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updatePackaging(
          arg_request, arg_svcProviderId, arg_pkgId,
          $fields: arg_$fields);
      checkPackaging(response as api.Packaging);
    });
  });
}
