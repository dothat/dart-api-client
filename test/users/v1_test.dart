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

import 'package:dothatapis/users/v1.dart' as api;
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

core.List<api.UserAddress> buildUnnamed32() {
  var o = <api.UserAddress>[];
  o.add(buildUserAddress());
  o.add(buildUserAddress());
  return o;
}

void checkUnnamed32(core.List<api.UserAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserAddress(o[0] as api.UserAddress);
  checkUserAddress(o[1] as api.UserAddress);
}

core.List<api.EmailAddress> buildUnnamed33() {
  var o = <api.EmailAddress>[];
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

void checkUnnamed33(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0] as api.EmailAddress);
  checkEmailAddress(o[1] as api.EmailAddress);
}

core.List<api.PhoneNumber> buildUnnamed34() {
  var o = <api.PhoneNumber>[];
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

void checkUnnamed34(core.List<api.PhoneNumber> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoneNumber(o[0] as api.PhoneNumber);
  checkPhoneNumber(o[1] as api.PhoneNumber);
}

core.int buildCounterUser = 0;
api.User buildUser() {
  var o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.active = true;
    o.addresses = buildUnnamed32();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.emailAddresses = buildUnnamed33();
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.phoneNumbers = buildUnnamed34();
    o.userId = 'foo';
    o.verificationStatus = 'foo';
    o.version = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    checkUnnamed32(o.addresses!);
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    checkUnnamed33(o.emailAddresses!);
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.phoneNumbers!);
    unittest.expect(
      o.userId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.int buildCounterUserAddress = 0;
api.UserAddress buildUserAddress() {
  var o = api.UserAddress();
  buildCounterUserAddress++;
  if (buildCounterUserAddress < 3) {
    o.active = true;
    o.addressId = 'foo';
    o.addressLine1 = 'foo';
    o.addressLine2 = 'foo';
    o.addressLine3 = 'foo';
    o.addressType = 'foo';
    o.area = 'foo';
    o.block = 'foo';
    o.building = 'foo';
    o.businessName = 'foo';
    o.city = 'foo';
    o.country = 'foo';
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.floor = 'foo';
    o.label = 'foo';
    o.locality = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.postalCode = 'foo';
    o.primary = true;
    o.serviceArea = buildServiceArea();
    o.serviceAreaId = 'foo';
    o.servicedAddress = buildServicedAddress();
    o.servicedAddressId = 'foo';
    o.state = 'foo';
    o.stateCode = 'foo';
    o.subLocality = 'foo';
    o.unitNumber = 'foo';
    o.verificationStatus = 'foo';
    o.version = 'foo';
  }
  buildCounterUserAddress--;
  return o;
}

void checkUserAddress(api.UserAddress o) {
  buildCounterUserAddress++;
  if (buildCounterUserAddress < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.addressId!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.addressType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.area!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.block!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.building!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.businessName!,
      unittest.equals('foo'),
    );
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
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.floor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.primary!, unittest.isTrue);
    checkServiceArea(o.serviceArea! as api.ServiceArea);
    unittest.expect(
      o.serviceAreaId!,
      unittest.equals('foo'),
    );
    checkServicedAddress(o.servicedAddress! as api.ServicedAddress);
    unittest.expect(
      o.servicedAddressId!,
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
      o.subLocality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unitNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserAddress--;
}

core.List<api.User> buildUnnamed35() {
  var o = <api.User>[];
  o.add(buildUser());
  o.add(buildUser());
  return o;
}

void checkUnnamed35(core.List<api.User> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUser(o[0] as api.User);
  checkUser(o[1] as api.User);
}

core.int buildCounterUserCollection = 0;
api.UserCollection buildUserCollection() {
  var o = api.UserCollection();
  buildCounterUserCollection++;
  if (buildCounterUserCollection < 3) {
    o.items = buildUnnamed35();
  }
  buildCounterUserCollection--;
  return o;
}

void checkUserCollection(api.UserCollection o) {
  buildCounterUserCollection++;
  if (buildCounterUserCollection < 3) {
    checkUnnamed35(o.items!);
  }
  buildCounterUserCollection--;
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

  unittest.group('obj-schema-EmailAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildEmailAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.EmailAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmailAddress(od as api.EmailAddress);
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

  unittest.group('obj-schema-ServicedAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildServicedAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ServicedAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServicedAddress(od as api.ServicedAddress);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUser();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od as api.User);
    });
  });

  unittest.group('obj-schema-UserAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUserAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UserAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserAddress(od as api.UserAddress);
    });
  });

  unittest.group('obj-schema-UserCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildUserCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.UserCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserCollection(od as api.UserCollection);
    });
  });

  unittest.group('resource-UsersApi', () {
    unittest.test('method--addUserAddress', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_request = buildUserAddress();
      var arg_usrId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UserAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserAddress(obj as api.UserAddress);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        index = path.indexOf('/addresses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
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
        var resp = convert.json.encode(buildUserAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addUserAddress(arg_request, arg_usrId,
          $fields: arg_$fields);
      checkUserAddress(response as api.UserAddress);
    });

    unittest.test('method--addUserEmailAddress', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_request = buildEmailAddress();
      var arg_usrId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EmailAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEmailAddress(obj as api.EmailAddress);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        index = path.indexOf('/emailAddresses', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals("/emailAddresses"),
        );
        pathOffset += 15;

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
        var resp = convert.json.encode(buildEmailAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addUserEmailAddress(arg_request, arg_usrId,
          $fields: arg_$fields);
      checkEmailAddress(response as api.EmailAddress);
    });

    unittest.test('method--addUserPhoneNumber', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_request = buildPhoneNumber();
      var arg_usrId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PhoneNumber.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPhoneNumber(obj as api.PhoneNumber);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        index = path.indexOf('/phoneNumbers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals("/phoneNumbers"),
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
        var resp = convert.json.encode(buildPhoneNumber());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addUserPhoneNumber(arg_request, arg_usrId,
          $fields: arg_$fields);
      checkPhoneNumber(response as api.PhoneNumber);
    });

    unittest.test('method--createUser', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_request = buildUser();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj as api.User);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals("users"),
        );
        pathOffset += 5;

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
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createUser(arg_request, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--findUsers', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_query = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals("users"),
        );
        pathOffset += 5;

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUserCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findUsers(arg_query, $fields: arg_$fields);
      checkUserCollection(response as api.UserCollection);
    });

    unittest.test('method--getUser', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_usrId = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
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
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getUser(arg_usrId, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--removeUserAddress', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_usrId = 'foo';
      var arg_addrId = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        index = path.indexOf('/addresses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
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
          unittest.equals('$arg_addrId'),
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
        var resp = convert.json.encode(buildUserAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeUserAddress(
          arg_usrId, arg_addrId, arg_expunge,
          $fields: arg_$fields);
      checkUserAddress(response as api.UserAddress);
    });

    unittest.test('method--removeUserEmailAddress', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_usrId = 'foo';
      var arg_emailAddr = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        index = path.indexOf('/emailAddresses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals("/emailAddresses/"),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_emailAddr'),
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
        var resp = convert.json.encode(buildEmailAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeUserEmailAddress(
          arg_usrId, arg_emailAddr, arg_expunge,
          $fields: arg_$fields);
      checkEmailAddress(response as api.EmailAddress);
    });

    unittest.test('method--removeUserPhoneNumber', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_usrId = 'foo';
      var arg_phoneNum = 'foo';
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
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        index = path.indexOf('/phoneNumbers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("/phoneNumbers/"),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_phoneNum'),
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
        var resp = convert.json.encode(buildPhoneNumber());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeUserPhoneNumber(
          arg_usrId, arg_phoneNum, arg_expunge,
          $fields: arg_$fields);
      checkPhoneNumber(response as api.PhoneNumber);
    });

    unittest.test('method--updateUser', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_request = buildUser();
      var arg_usrId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
        checkUser(obj as api.User);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
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
        var resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.updateUser(arg_request, arg_usrId, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--updateUserAddress', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_request = buildUserAddress();
      var arg_usrId = 'foo';
      var arg_addrId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UserAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkUserAddress(obj as api.UserAddress);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        index = path.indexOf('/addresses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
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
          unittest.equals('$arg_addrId'),
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
        var resp = convert.json.encode(buildUserAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateUserAddress(
          arg_request, arg_usrId, arg_addrId,
          $fields: arg_$fields);
      checkUserAddress(response as api.UserAddress);
    });

    unittest.test('method--updateUserEmailAddress', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_request = buildEmailAddress();
      var arg_usrId = 'foo';
      var arg_emailAddr = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EmailAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEmailAddress(obj as api.EmailAddress);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        index = path.indexOf('/emailAddresses/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals("/emailAddresses/"),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_emailAddr'),
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
        var resp = convert.json.encode(buildEmailAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateUserEmailAddress(
          arg_request, arg_usrId, arg_emailAddr,
          $fields: arg_$fields);
      checkEmailAddress(response as api.EmailAddress);
    });

    unittest.test('method--updateUserPhoneNumber', () async {
      var mock = HttpServerMock();
      var res = api.UsersApi(mock);
      var arg_request = buildPhoneNumber();
      var arg_usrId = 'foo';
      var arg_phoneNum = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PhoneNumber.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPhoneNumber(obj as api.PhoneNumber);

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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals("users/v1/"),
        );
        pathOffset += 9;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals("users/"),
        );
        pathOffset += 6;
        index = path.indexOf('/phoneNumbers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_usrId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals("/phoneNumbers/"),
        );
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_phoneNum'),
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
        var resp = convert.json.encode(buildPhoneNumber());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateUserPhoneNumber(
          arg_request, arg_usrId, arg_phoneNum,
          $fields: arg_$fields);
      checkPhoneNumber(response as api.PhoneNumber);
    });
  });
}
