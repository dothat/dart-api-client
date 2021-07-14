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

import 'package:dothatapis/servicearea/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterChangeContext = 0;
api.ChangeContext buildChangeContext() {
  var o = api.ChangeContext();
  buildCounterChangeContext++;
  if (buildCounterChangeContext < 3) {
    o.initiatorType = 'foo';
    o.messageId = 'foo';
    o.userIdentifier = 'foo';
  }
  buildCounterChangeContext--;
  return o;
}

void checkChangeContext(api.ChangeContext o) {
  buildCounterChangeContext++;
  if (buildCounterChangeContext < 3) {
    unittest.expect(
      o.initiatorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userIdentifier!,
      unittest.equals('foo'),
    );
  }
  buildCounterChangeContext--;
}

core.int buildCounterServiceArea = 0;
api.ServiceArea buildServiceArea() {
  var o = api.ServiceArea();
  buildCounterServiceArea++;
  if (buildCounterServiceArea < 3) {
    o.addressLine1 = 'foo';
    o.addressLine2 = 'foo';
    o.addressLine3 = 'foo';
    o.changeContext = buildChangeContext();
    o.city = 'foo';
    o.country = 'foo';
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.fullName = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.parentServiceAreaId = 'foo';
    o.parentTreeId = 'foo';
    o.postalCode = 'foo';
    o.serviceAreaId = 'foo';
    o.serviceProviderId = 'foo';
    o.state = 'foo';
    o.stateCode = 'foo';
    o.universalServiceAreaId = 'foo';
    o.version = 'foo';
  }
  buildCounterServiceArea--;
  return o;
}

void checkServiceArea(api.ServiceArea o) {
  buildCounterServiceArea++;
  if (buildCounterServiceArea < 3) {
    unittest.expect(
      o.addressLine1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.addressLine2!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.addressLine3!,
      unittest.equals('foo'),
    );
    checkChangeContext(o.changeContext! as api.ChangeContext);
    unittest.expect(
      o.city!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.country!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentServiceAreaId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentTreeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAreaId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceProviderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stateCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.universalServiceAreaId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceArea--;
}

core.List<api.ServiceArea> buildUnnamed5() {
  var o = <api.ServiceArea>[];
  o.add(buildServiceArea());
  o.add(buildServiceArea());
  return o;
}

void checkUnnamed5(core.List<api.ServiceArea> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceArea(o[0] as api.ServiceArea);
  checkServiceArea(o[1] as api.ServiceArea);
}

core.int buildCounterServiceAreaCollection = 0;
api.ServiceAreaCollection buildServiceAreaCollection() {
  var o = api.ServiceAreaCollection();
  buildCounterServiceAreaCollection++;
  if (buildCounterServiceAreaCollection < 3) {
    o.items = buildUnnamed5();
  }
  buildCounterServiceAreaCollection--;
  return o;
}

void checkServiceAreaCollection(api.ServiceAreaCollection o) {
  buildCounterServiceAreaCollection++;
  if (buildCounterServiceAreaCollection < 3) {
    checkUnnamed5(o.items!);
  }
  buildCounterServiceAreaCollection--;
}

core.int buildCounterServicedAddress = 0;
api.ServicedAddress buildServicedAddress() {
  var o = api.ServicedAddress();
  buildCounterServicedAddress++;
  if (buildCounterServicedAddress < 3) {
    o.businessName = 'foo';
    o.floor = 'foo';
    o.houseNumber = 'foo';
    o.serviceArea = buildServiceArea();
    o.servicedAddressId = 'foo';
  }
  buildCounterServicedAddress--;
  return o;
}

void checkServicedAddress(api.ServicedAddress o) {
  buildCounterServicedAddress++;
  if (buildCounterServicedAddress < 3) {
    unittest.expect(
      o.businessName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.houseNumber!,
      unittest.equals('foo'),
    );
    checkServiceArea(o.serviceArea! as api.ServiceArea);
    unittest.expect(
      o.servicedAddressId!,
      unittest.equals('foo'),
    );
  }
  buildCounterServicedAddress--;
}

core.List<api.ServicedAddress> buildUnnamed6() {
  var o = <api.ServicedAddress>[];
  o.add(buildServicedAddress());
  o.add(buildServicedAddress());
  return o;
}

void checkUnnamed6(core.List<api.ServicedAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServicedAddress(o[0] as api.ServicedAddress);
  checkServicedAddress(o[1] as api.ServicedAddress);
}

core.int buildCounterServicedAddressCollection = 0;
api.ServicedAddressCollection buildServicedAddressCollection() {
  var o = api.ServicedAddressCollection();
  buildCounterServicedAddressCollection++;
  if (buildCounterServicedAddressCollection < 3) {
    o.items = buildUnnamed6();
  }
  buildCounterServicedAddressCollection--;
  return o;
}

void checkServicedAddressCollection(api.ServicedAddressCollection o) {
  buildCounterServicedAddressCollection++;
  if (buildCounterServicedAddressCollection < 3) {
    checkUnnamed6(o.items!);
  }
  buildCounterServicedAddressCollection--;
}

void main() {
  unittest.group('obj-schema-ChangeContext', () {
    unittest.test('to-json--from-json', () async {
      var o = buildChangeContext();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ChangeContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChangeContext(od as api.ChangeContext);
    });
  });

  unittest.group('obj-schema-ServiceArea', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServiceArea();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServiceArea.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceArea(od as api.ServiceArea);
    });
  });

  unittest.group('obj-schema-ServiceAreaCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServiceAreaCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServiceAreaCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceAreaCollection(od as api.ServiceAreaCollection);
    });
  });

  unittest.group('obj-schema-ServicedAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServicedAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServicedAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServicedAddress(od as api.ServicedAddress);
    });
  });

  unittest.group('obj-schema-ServicedAddressCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServicedAddressCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServicedAddressCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServicedAddressCollection(od as api.ServicedAddressCollection);
    });
  });

  unittest.group('resource-ServiceAreaApi', () {
    unittest.test('method--createServiceArea', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_request = buildServiceArea();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServiceArea.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceArea(obj as api.ServiceArea);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals("serviceAreas"),
        );
        pathOffset += 12;

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
        var resp = convert.json.encode(buildServiceArea());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.createServiceArea(arg_request, $fields: arg_$fields);
      checkServiceArea(response as api.ServiceArea);
    });

    unittest.test('method--createServiceProviderServiceArea', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_request = buildServiceArea();
      var arg_svcProviderId = 'foo';
      var arg_parentSvcAreaId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServiceArea.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceArea(obj as api.ServiceArea);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("serviceProviders/"),
        );
        pathOffset += 17;
        index = path.indexOf('/serviceAreas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcProviderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("/serviceAreas/"),
        );
        pathOffset += 14;
        index = path.indexOf('/serviceAreas', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_parentSvcAreaId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("/serviceAreas"),
        );
        pathOffset += 13;

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
        var resp = convert.json.encode(buildServiceArea());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createServiceProviderServiceArea(
          arg_request, arg_svcProviderId, arg_parentSvcAreaId,
          $fields: arg_$fields);
      checkServiceArea(response as api.ServiceArea);
    });

    unittest.test('method--createServicedAddress', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_request = buildServicedAddress();
      var arg_areaId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServicedAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServicedAddress(obj as api.ServicedAddress);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("serviceAreas/"),
        );
        pathOffset += 13;
        index = path.indexOf('/addresses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_areaId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals("/addresses"),
        );
        pathOffset += 10;

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
        var resp = convert.json.encode(buildServicedAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createServicedAddress(arg_request, arg_areaId,
          $fields: arg_$fields);
      checkServicedAddress(response as api.ServicedAddress);
    });

    unittest.test('method--deleteServicedAddress', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_areaId = 'foo';
      var arg_addressId = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("serviceAreas/"),
        );
        pathOffset += 13;
        index = path.indexOf('/addresses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_areaId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals("/addresses/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_addressId'),
        );

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
        var resp = convert.json.encode(buildServicedAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteServicedAddress(
          arg_areaId, arg_addressId,
          $fields: arg_$fields);
      checkServicedAddress(response as api.ServicedAddress);
    });

    unittest.test('method--findUnassignedServiceAreas', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_serviceProviderId = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 39),
          unittest.equals("serviceAreas/findUnassignedServiceAreas"),
        );
        pathOffset += 39;

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
          queryMap["serviceProviderId"]!.first,
          unittest.equals(arg_serviceProviderId),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceAreaCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findUnassignedServiceAreas(
          serviceProviderId: arg_serviceProviderId, $fields: arg_$fields);
      checkServiceAreaCollection(response as api.ServiceAreaCollection);
    });

    unittest.test('method--getServiceArea', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_svcAreaId = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("serviceAreas/"),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcAreaId'),
        );

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
        var resp = convert.json.encode(buildServiceArea());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getServiceArea(arg_svcAreaId, $fields: arg_$fields);
      checkServiceArea(response as api.ServiceArea);
    });

    unittest.test('method--getServiceProviderServiceArea', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_svcAreaId = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("serviceProviders/"),
        );
        pathOffset += 17;
        index = path.indexOf('/serviceAreas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcProviderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("/serviceAreas/"),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcAreaId'),
        );

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
        var resp = convert.json.encode(buildServiceArea());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getServiceProviderServiceArea(
          arg_svcProviderId, arg_svcAreaId,
          $fields: arg_$fields);
      checkServiceArea(response as api.ServiceArea);
    });

    unittest.test('method--getServicedAddress', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_areaId = 'foo';
      var arg_addressId = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("serviceAreas/"),
        );
        pathOffset += 13;
        index = path.indexOf('/addresses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_areaId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals("/addresses/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_addressId'),
        );

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
        var resp = convert.json.encode(buildServicedAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getServicedAddress(arg_areaId, arg_addressId,
          $fields: arg_$fields);
      checkServicedAddress(response as api.ServicedAddress);
    });

    unittest.test('method--searchServiceAddresses', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_areaId = 'foo';
      var arg_businessName = 'foo';
      var arg_houseNumber = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("serviceAreas/"),
        );
        pathOffset += 13;
        index = path.indexOf('/addresses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_areaId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals("/addresses"),
        );
        pathOffset += 10;

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
          queryMap["businessName"]!.first,
          unittest.equals(arg_businessName),
        );
        unittest.expect(
          queryMap["houseNumber"]!.first,
          unittest.equals(arg_houseNumber),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServicedAddressCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchServiceAddresses(arg_areaId,
          businessName: arg_businessName,
          houseNumber: arg_houseNumber,
          $fields: arg_$fields);
      checkServicedAddressCollection(response as api.ServicedAddressCollection);
    });

    unittest.test('method--searchServiceArea', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_city = 'foo';
      var arg_country = 'foo';
      var arg_searchQuery = 'foo';
      var arg_state = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals("serviceAreas"),
        );
        pathOffset += 12;

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
          queryMap["city"]!.first,
          unittest.equals(arg_city),
        );
        unittest.expect(
          queryMap["country"]!.first,
          unittest.equals(arg_country),
        );
        unittest.expect(
          queryMap["searchQuery"]!.first,
          unittest.equals(arg_searchQuery),
        );
        unittest.expect(
          queryMap["state"]!.first,
          unittest.equals(arg_state),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceAreaCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchServiceArea(
          city: arg_city,
          country: arg_country,
          searchQuery: arg_searchQuery,
          state: arg_state,
          $fields: arg_$fields);
      checkServiceAreaCollection(response as api.ServiceAreaCollection);
    });

    unittest.test('method--updateServiceArea', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_request = buildServiceArea();
      var arg_svcAreaId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServiceArea.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceArea(obj as api.ServiceArea);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("serviceAreas/"),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcAreaId'),
        );

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
        var resp = convert.json.encode(buildServiceArea());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateServiceArea(arg_request, arg_svcAreaId,
          $fields: arg_$fields);
      checkServiceArea(response as api.ServiceArea);
    });

    unittest.test('method--updateServiceProviderServiceArea', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_request = buildServiceArea();
      var arg_svcProviderId = 'foo';
      var arg_parentSvcAreaId = 'foo';
      var arg_svcAreaId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServiceArea.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceArea(obj as api.ServiceArea);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("serviceProviders/"),
        );
        pathOffset += 17;
        index = path.indexOf('/serviceAreas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcProviderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("/serviceAreas/"),
        );
        pathOffset += 14;
        index = path.indexOf('/serviceAreas/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_parentSvcAreaId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("/serviceAreas/"),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcAreaId'),
        );

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
        var resp = convert.json.encode(buildServiceArea());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateServiceProviderServiceArea(
          arg_request, arg_svcProviderId, arg_parentSvcAreaId, arg_svcAreaId,
          $fields: arg_$fields);
      checkServiceArea(response as api.ServiceArea);
    });

    unittest.test('method--updateServicedAddress', () async {
      var mock = HttpServerMock();
      var res = api.ServiceAreaApi(mock);
      var arg_request = buildServicedAddress();
      var arg_areaId = 'foo';
      var arg_addressId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServicedAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServicedAddress(obj as api.ServicedAddress);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("/_ah/api/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("serviceArea/v1/"),
        );
        pathOffset += 15;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("serviceAreas/"),
        );
        pathOffset += 13;
        index = path.indexOf('/addresses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_areaId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals("/addresses/"),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_addressId'),
        );

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
        var resp = convert.json.encode(buildServicedAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateServicedAddress(
          arg_request, arg_areaId, arg_addressId,
          $fields: arg_$fields);
      checkServicedAddress(response as api.ServicedAddress);
    });
  });
}
