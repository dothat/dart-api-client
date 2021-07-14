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

import 'package:dothatapis/serviceprovider/v1.dart' as api;
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

core.int buildCounterCustomerPolicy = 0;
api.CustomerPolicy buildCustomerPolicy() {
  var o = api.CustomerPolicy();
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

void checkCustomerPolicy(api.CustomerPolicy o) {
  buildCounterCustomerPolicy++;
  if (buildCounterCustomerPolicy < 3) {
    unittest.expect(o.customerNameRequired!, unittest.isTrue);
    unittest.expect(o.emailOrPhoneRequired!, unittest.isTrue);
    unittest.expect(o.emailRequired!, unittest.isTrue);
    unittest.expect(o.emailUnique!, unittest.isTrue);
    unittest.expect(o.phoneRequired!, unittest.isTrue);
    unittest.expect(o.phoneUnique!, unittest.isTrue);
    unittest.expect(o.primaryEmailUnique!, unittest.isTrue);
    unittest.expect(o.primaryPhoneUnique!, unittest.isTrue);
  }
  buildCounterCustomerPolicy--;
}

core.int buildCounterEmailAddress = 0;
api.EmailAddress buildEmailAddress() {
  var o = api.EmailAddress();
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    o.active = true;
    o.address = 'foo';
    o.deleted = true;
    o.label = 'foo';
    o.primary = true;
    o.verificationStatus = 'foo';
  }
  buildCounterEmailAddress--;
  return o;
}

void checkEmailAddress(api.EmailAddress o) {
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.address!,
      unittest.equals('foo'),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(o.primary!, unittest.isTrue);
    unittest.expect(
      o.verificationStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterEmailAddress--;
}

core.int buildCounterOrderPolicy = 0;
api.OrderPolicy buildOrderPolicy() {
  var o = api.OrderPolicy();
  buildCounterOrderPolicy++;
  if (buildCounterOrderPolicy < 3) {
    o.orderMaxQuantity = 42.0;
    o.orderServiceDuration = 42;
    o.orderServiceDurationType = 'foo';
  }
  buildCounterOrderPolicy--;
  return o;
}

void checkOrderPolicy(api.OrderPolicy o) {
  buildCounterOrderPolicy++;
  if (buildCounterOrderPolicy < 3) {
    unittest.expect(
      o.orderMaxQuantity!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.orderServiceDuration!,
      unittest.equals(42),
    );
    unittest.expect(
      o.orderServiceDurationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrderPolicy--;
}

core.int buildCounterPhoneNumber = 0;
api.PhoneNumber buildPhoneNumber() {
  var o = api.PhoneNumber();
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    o.active = true;
    o.deleted = true;
    o.label = 'foo';
    o.number = 'foo';
    o.primary = true;
    o.verificationStatus = 'foo';
  }
  buildCounterPhoneNumber--;
  return o;
}

void checkPhoneNumber(api.PhoneNumber o) {
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.number!,
      unittest.equals('foo'),
    );
    unittest.expect(o.primary!, unittest.isTrue);
    unittest.expect(
      o.verificationStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterPhoneNumber--;
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

core.List<api.EmailAddress> buildUnnamed19() {
  var o = <api.EmailAddress>[];
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

void checkUnnamed19(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0] as api.EmailAddress);
  checkEmailAddress(o[1] as api.EmailAddress);
}

core.List<api.PhoneNumber> buildUnnamed20() {
  var o = <api.PhoneNumber>[];
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

void checkUnnamed20(core.List<api.PhoneNumber> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoneNumber(o[0] as api.PhoneNumber);
  checkPhoneNumber(o[1] as api.PhoneNumber);
}

core.List<api.ServiceArea> buildUnnamed21() {
  var o = <api.ServiceArea>[];
  o.add(buildServiceArea());
  o.add(buildServiceArea());
  return o;
}

void checkUnnamed21(core.List<api.ServiceArea> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceArea(o[0] as api.ServiceArea);
  checkServiceArea(o[1] as api.ServiceArea);
}

core.int buildCounterServiceProvider = 0;
api.ServiceProvider buildServiceProvider() {
  var o = api.ServiceProvider();
  buildCounterServiceProvider++;
  if (buildCounterServiceProvider < 3) {
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.emailAddresses = buildUnnamed19();
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.phoneNumbers = buildUnnamed20();
    o.policy = buildServiceProviderPolicy();
    o.serviceAreas = buildUnnamed21();
    o.serviceProviderId = 'foo';
    o.serviceType = 'foo';
    o.version = 'foo';
  }
  buildCounterServiceProvider--;
  return o;
}

void checkServiceProvider(api.ServiceProvider o) {
  buildCounterServiceProvider++;
  if (buildCounterServiceProvider < 3) {
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    checkUnnamed19(o.emailAddresses!);
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.phoneNumbers!);
    checkServiceProviderPolicy(o.policy! as api.ServiceProviderPolicy);
    checkUnnamed21(o.serviceAreas!);
    unittest.expect(
      o.serviceProviderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterServiceProvider--;
}

core.List<api.ServiceProvider> buildUnnamed22() {
  var o = <api.ServiceProvider>[];
  o.add(buildServiceProvider());
  o.add(buildServiceProvider());
  return o;
}

void checkUnnamed22(core.List<api.ServiceProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkServiceProvider(o[0] as api.ServiceProvider);
  checkServiceProvider(o[1] as api.ServiceProvider);
}

core.int buildCounterServiceProviderCollection = 0;
api.ServiceProviderCollection buildServiceProviderCollection() {
  var o = api.ServiceProviderCollection();
  buildCounterServiceProviderCollection++;
  if (buildCounterServiceProviderCollection < 3) {
    o.items = buildUnnamed22();
  }
  buildCounterServiceProviderCollection--;
  return o;
}

void checkServiceProviderCollection(api.ServiceProviderCollection o) {
  buildCounterServiceProviderCollection++;
  if (buildCounterServiceProviderCollection < 3) {
    checkUnnamed22(o.items!);
  }
  buildCounterServiceProviderCollection--;
}

core.int buildCounterServiceProviderPolicy = 0;
api.ServiceProviderPolicy buildServiceProviderPolicy() {
  var o = api.ServiceProviderPolicy();
  buildCounterServiceProviderPolicy++;
  if (buildCounterServiceProviderPolicy < 3) {
    o.customerPolicy = buildCustomerPolicy();
    o.orderPolicy = buildOrderPolicy();
  }
  buildCounterServiceProviderPolicy--;
  return o;
}

void checkServiceProviderPolicy(api.ServiceProviderPolicy o) {
  buildCounterServiceProviderPolicy++;
  if (buildCounterServiceProviderPolicy < 3) {
    checkCustomerPolicy(o.customerPolicy! as api.CustomerPolicy);
    checkOrderPolicy(o.orderPolicy! as api.OrderPolicy);
  }
  buildCounterServiceProviderPolicy--;
}

core.List<core.String> buildUnnamed23() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed23(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed24() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed24(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed25() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed25(core.List<core.String> o) {
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

  unittest.group('obj-schema-CustomerPolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomerPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CustomerPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerPolicy(od as api.CustomerPolicy);
    });
  });

  unittest.group('obj-schema-EmailAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmailAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.EmailAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmailAddress(od as api.EmailAddress);
    });
  });

  unittest.group('obj-schema-OrderPolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOrderPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OrderPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderPolicy(od as api.OrderPolicy);
    });
  });

  unittest.group('obj-schema-PhoneNumber', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPhoneNumber();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PhoneNumber.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhoneNumber(od as api.PhoneNumber);
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

  unittest.group('obj-schema-ServiceProvider', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServiceProvider();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServiceProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceProvider(od as api.ServiceProvider);
    });
  });

  unittest.group('obj-schema-ServiceProviderCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServiceProviderCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServiceProviderCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceProviderCollection(od as api.ServiceProviderCollection);
    });
  });

  unittest.group('obj-schema-ServiceProviderPolicy', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServiceProviderPolicy();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServiceProviderPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceProviderPolicy(od as api.ServiceProviderPolicy);
    });
  });

  unittest.group('resource-ServiceProviderApi', () {
    unittest.test('method--createServiceProvider', () async {
      var mock = HttpServerMock();
      var res = api.ServiceProviderApi(mock);
      var arg_request = buildServiceProvider();
      var arg_svcAreaIds = buildUnnamed23();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServiceProvider.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceProvider(obj as api.ServiceProvider);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals("serviceProvider/v1/"),
        );
        pathOffset += 19;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals("serviceProviders"),
        );
        pathOffset += 16;

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
          queryMap["svcAreaIds"]!,
          unittest.equals(arg_svcAreaIds),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceProvider());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createServiceProvider(arg_request,
          svcAreaIds: arg_svcAreaIds, $fields: arg_$fields);
      checkServiceProvider(response as api.ServiceProvider);
    });

    unittest.test('method--findServiceProviders', () async {
      var mock = HttpServerMock();
      var res = api.ServiceProviderApi(mock);
      var arg_query = 'foo';
      var arg_svcAreaId = 'foo';
      var arg_svcType = 'foo';
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals("serviceProvider/v1/"),
        );
        pathOffset += 19;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals("serviceProviders"),
        );
        pathOffset += 16;

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
          queryMap["query"]!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap["svcAreaId"]!.first,
          unittest.equals(arg_svcAreaId),
        );
        unittest.expect(
          queryMap["svcType"]!.first,
          unittest.equals(arg_svcType),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceProviderCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findServiceProviders(
          query: arg_query,
          svcAreaId: arg_svcAreaId,
          svcType: arg_svcType,
          $fields: arg_$fields);
      checkServiceProviderCollection(response as api.ServiceProviderCollection);
    });

    unittest.test('method--getServiceProvider', () async {
      var mock = HttpServerMock();
      var res = api.ServiceProviderApi(mock);
      var arg_srvProviderId = 'foo';
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals("serviceProvider/v1/"),
        );
        pathOffset += 19;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("serviceProviders/"),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_srvProviderId'),
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
        var resp = convert.json.encode(buildServiceProvider());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getServiceProvider(arg_srvProviderId, $fields: arg_$fields);
      checkServiceProvider(response as api.ServiceProvider);
    });

    unittest.test('method--removeAllServiceProviderAreas', () async {
      var mock = HttpServerMock();
      var res = api.ServiceProviderApi(mock);
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals("serviceProvider/v1/"),
        );
        pathOffset += 19;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("serviceProviders/"),
        );
        pathOffset += 17;
        index = path.indexOf('/areas', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcProviderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("/areas"),
        );
        pathOffset += 6;

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
        var resp = convert.json.encode(buildServiceProvider());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeAllServiceProviderAreas(
          arg_svcProviderId,
          $fields: arg_$fields);
      checkServiceProvider(response as api.ServiceProvider);
    });

    unittest.test('method--updateServiceProvider', () async {
      var mock = HttpServerMock();
      var res = api.ServiceProviderApi(mock);
      var arg_request = buildServiceProvider();
      var arg_svcProviderId = 'foo';
      var arg_svcAreaIds = buildUnnamed24();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServiceProvider.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceProvider(obj as api.ServiceProvider);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals("serviceProvider/v1/"),
        );
        pathOffset += 19;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("serviceProviders/"),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcProviderId'),
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
          queryMap["svcAreaIds"]!,
          unittest.equals(arg_svcAreaIds),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceProvider());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateServiceProvider(
          arg_request, arg_svcProviderId,
          svcAreaIds: arg_svcAreaIds, $fields: arg_$fields);
      checkServiceProvider(response as api.ServiceProvider);
    });

    unittest.test('method--updateServiceProviderAreas', () async {
      var mock = HttpServerMock();
      var res = api.ServiceProviderApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_svcAreaIds = buildUnnamed25();
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals("serviceProvider/v1/"),
        );
        pathOffset += 19;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("serviceProviders/"),
        );
        pathOffset += 17;
        index = path.indexOf('/areas', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcProviderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("/areas"),
        );
        pathOffset += 6;

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
          queryMap["svcAreaIds"]!,
          unittest.equals(arg_svcAreaIds),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildServiceProvider());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateServiceProviderAreas(
          arg_svcProviderId, arg_svcAreaIds,
          $fields: arg_$fields);
      checkServiceProvider(response as api.ServiceProvider);
    });

    unittest.test('method--updateServiceProviderPolicy', () async {
      var mock = HttpServerMock();
      var res = api.ServiceProviderApi(mock);
      var arg_request = buildServiceProviderPolicy();
      var arg_svcProviderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ServiceProviderPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkServiceProviderPolicy(obj as api.ServiceProviderPolicy);

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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals("serviceProvider/v1/"),
        );
        pathOffset += 19;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals("serviceProviders/"),
        );
        pathOffset += 17;
        index = path.indexOf('/policy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcProviderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("/policy"),
        );
        pathOffset += 7;

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
        var resp = convert.json.encode(buildServiceProvider());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateServiceProviderPolicy(
          arg_request, arg_svcProviderId,
          $fields: arg_$fields);
      checkServiceProvider(response as api.ServiceProvider);
    });
  });
}
