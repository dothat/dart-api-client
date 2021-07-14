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

import 'package:dothatapis/customer/v1.dart' as api;
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

core.List<api.CustomerAddress> buildUnnamed0() {
  var o = <api.CustomerAddress>[];
  o.add(buildCustomerAddress());
  o.add(buildCustomerAddress());
  return o;
}

void checkUnnamed0(core.List<api.CustomerAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerAddress(o[0] as api.CustomerAddress);
  checkCustomerAddress(o[1] as api.CustomerAddress);
}

core.List<api.CustomerContact> buildUnnamed1() {
  var o = <api.CustomerContact>[];
  o.add(buildCustomerContact());
  o.add(buildCustomerContact());
  return o;
}

void checkUnnamed1(core.List<api.CustomerContact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerContact(o[0] as api.CustomerContact);
  checkCustomerContact(o[1] as api.CustomerContact);
}

core.int buildCounterCustomer = 0;
api.Customer buildCustomer() {
  var o = api.Customer();
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    o.active = true;
    o.addresses = buildUnnamed0();
    o.businessName = 'foo';
    o.changeContext = buildChangeContext();
    o.contacts = buildUnnamed1();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.customerId = 'foo';
    o.deleted = true;
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.version = 'foo';
  }
  buildCounterCustomer--;
  return o;
}

void checkCustomer(api.Customer o) {
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    checkUnnamed0(o.addresses!);
    unittest.expect(
      o.businessName!,
      unittest.equals('foo'),
    );
    checkChangeContext(o.changeContext! as api.ChangeContext);
    checkUnnamed1(o.contacts!);
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
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
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomer--;
}

core.int buildCounterCustomerAddress = 0;
api.CustomerAddress buildCustomerAddress() {
  var o = api.CustomerAddress();
  buildCounterCustomerAddress++;
  if (buildCounterCustomerAddress < 3) {
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
  buildCounterCustomerAddress--;
  return o;
}

void checkCustomerAddress(api.CustomerAddress o) {
  buildCounterCustomerAddress++;
  if (buildCounterCustomerAddress < 3) {
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
  buildCounterCustomerAddress--;
}

core.List<api.Customer> buildUnnamed2() {
  var o = <api.Customer>[];
  o.add(buildCustomer());
  o.add(buildCustomer());
  return o;
}

void checkUnnamed2(core.List<api.Customer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomer(o[0] as api.Customer);
  checkCustomer(o[1] as api.Customer);
}

core.int buildCounterCustomerCollection = 0;
api.CustomerCollection buildCustomerCollection() {
  var o = api.CustomerCollection();
  buildCounterCustomerCollection++;
  if (buildCounterCustomerCollection < 3) {
    o.items = buildUnnamed2();
  }
  buildCounterCustomerCollection--;
  return o;
}

void checkCustomerCollection(api.CustomerCollection o) {
  buildCounterCustomerCollection++;
  if (buildCounterCustomerCollection < 3) {
    checkUnnamed2(o.items!);
  }
  buildCounterCustomerCollection--;
}

core.List<api.EmailAddress> buildUnnamed3() {
  var o = <api.EmailAddress>[];
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

void checkUnnamed3(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0] as api.EmailAddress);
  checkEmailAddress(o[1] as api.EmailAddress);
}

core.List<api.PhoneNumber> buildUnnamed4() {
  var o = <api.PhoneNumber>[];
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

void checkUnnamed4(core.List<api.PhoneNumber> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoneNumber(o[0] as api.PhoneNumber);
  checkPhoneNumber(o[1] as api.PhoneNumber);
}

core.int buildCounterCustomerContact = 0;
api.CustomerContact buildCustomerContact() {
  var o = api.CustomerContact();
  buildCounterCustomerContact++;
  if (buildCounterCustomerContact < 3) {
    o.active = true;
    o.contactId = 'foo';
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.emailAddresses = buildUnnamed3();
    o.label = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.phoneNumbers = buildUnnamed4();
    o.primary = true;
    o.verificationStatus = 'foo';
    o.version = 'foo';
  }
  buildCounterCustomerContact--;
  return o;
}

void checkCustomerContact(api.CustomerContact o) {
  buildCounterCustomerContact++;
  if (buildCounterCustomerContact < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    unittest.expect(
      o.contactId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    checkUnnamed3(o.emailAddresses!);
    unittest.expect(
      o.label!,
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
    checkUnnamed4(o.phoneNumbers!);
    unittest.expect(o.primary!, unittest.isTrue);
    unittest.expect(
      o.verificationStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomerContact--;
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

  unittest.group('obj-schema-Customer', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomer();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Customer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCustomer(od as api.Customer);
    });
  });

  unittest.group('obj-schema-CustomerAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomerAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CustomerAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerAddress(od as api.CustomerAddress);
    });
  });

  unittest.group('obj-schema-CustomerCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomerCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CustomerCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerCollection(od as api.CustomerCollection);
    });
  });

  unittest.group('obj-schema-CustomerContact', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCustomerContact();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CustomerContact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomerContact(od as api.CustomerContact);
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

  unittest.group('resource-CustomersApi', () {
    unittest.test('method--addCustomerAddressRequest', () async {
      var mock = HttpServerMock();
      var res = api.CustomersApi(mock);
      var arg_request = buildCustomerAddress();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CustomerAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomerAddress(obj as api.CustomerAddress);

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
        var resp = convert.json.encode(buildCustomerAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addCustomerAddressRequest(
          arg_request, arg_svcProviderId, arg_custId,
          $fields: arg_$fields);
      checkCustomerAddress(response as api.CustomerAddress);
    });

    unittest.test('method--addCustomerContactRequest', () async {
      var mock = HttpServerMock();
      var res = api.CustomersApi(mock);
      var arg_request = buildCustomerContact();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CustomerContact.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomerContact(obj as api.CustomerContact);

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
        var resp = convert.json.encode(buildCustomerContact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addCustomerContactRequest(
          arg_request, arg_svcProviderId, arg_custId,
          $fields: arg_$fields);
      checkCustomerContact(response as api.CustomerContact);
    });

    unittest.test('method--createCustomerRequest', () async {
      var mock = HttpServerMock();
      var res = api.CustomersApi(mock);
      var arg_request = buildCustomer();
      var arg_svcProviderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Customer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCustomer(obj as api.Customer);

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
        var resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createCustomerRequest(
          arg_request, arg_svcProviderId,
          $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });

    unittest.test('method--findCustomersRequest', () async {
      var mock = HttpServerMock();
      var res = api.CustomersApi(mock);
      var arg_svcProviderId = 'foo';
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
        var resp = convert.json.encode(buildCustomerCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findCustomersRequest(arg_svcProviderId,
          query: arg_query, $fields: arg_$fields);
      checkCustomerCollection(response as api.CustomerCollection);
    });

    unittest.test('method--getCustomerRequest', () async {
      var mock = HttpServerMock();
      var res = api.CustomersApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
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
        var resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getCustomerRequest(
          arg_svcProviderId, arg_custId,
          $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });

    unittest.test('method--removeCustomerAddressRequest', () async {
      var mock = HttpServerMock();
      var res = api.CustomersApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
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
        var resp = convert.json.encode(buildCustomerAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeCustomerAddressRequest(
          arg_svcProviderId, arg_custId, arg_addrId, arg_expunge,
          $fields: arg_$fields);
      checkCustomerAddress(response as api.CustomerAddress);
    });

    unittest.test('method--removeCustomerContactRequest', () async {
      var mock = HttpServerMock();
      var res = api.CustomersApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_custContactId = 'foo';
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
        var resp = convert.json.encode(buildCustomerContact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.removeCustomerContactRequest(
          arg_svcProviderId, arg_custId, arg_custContactId, arg_expunge,
          $fields: arg_$fields);
      checkCustomerContact(response as api.CustomerContact);
    });

    unittest.test('method--updateCustomerAddressRequest', () async {
      var mock = HttpServerMock();
      var res = api.CustomersApi(mock);
      var arg_request = buildCustomerAddress();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_addrId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CustomerAddress.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomerAddress(obj as api.CustomerAddress);

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
        var resp = convert.json.encode(buildCustomerAddress());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateCustomerAddressRequest(
          arg_request, arg_svcProviderId, arg_custId, arg_addrId,
          $fields: arg_$fields);
      checkCustomerAddress(response as api.CustomerAddress);
    });

    unittest.test('method--updateCustomerContactRequest', () async {
      var mock = HttpServerMock();
      var res = api.CustomersApi(mock);
      var arg_request = buildCustomerContact();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_custContactId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CustomerContact.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCustomerContact(obj as api.CustomerContact);

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
        var resp = convert.json.encode(buildCustomerContact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateCustomerContactRequest(
          arg_request, arg_svcProviderId, arg_custId, arg_custContactId,
          $fields: arg_$fields);
      checkCustomerContact(response as api.CustomerContact);
    });

    unittest.test('method--updateCustomerRequest', () async {
      var mock = HttpServerMock();
      var res = api.CustomersApi(mock);
      var arg_request = buildCustomer();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Customer.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCustomer(obj as api.Customer);

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
        var resp = convert.json.encode(buildCustomer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateCustomerRequest(
          arg_request, arg_svcProviderId, arg_custId,
          $fields: arg_$fields);
      checkCustomer(response as api.Customer);
    });
  });
}
