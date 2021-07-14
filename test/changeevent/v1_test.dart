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

import 'package:dothatapis/changeevent/v1.dart' as api;
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

core.int buildCounterChangeEvent = 0;
api.ChangeEvent buildChangeEvent() {
  var o = api.ChangeEvent();
  buildCounterChangeEvent++;
  if (buildCounterChangeEvent < 3) {
    o.changeEventId = 'foo';
    o.changeTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.changeType = 'foo';
    o.customerId = 'foo';
    o.initiatorType = 'foo';
    o.message = buildMessage();
    o.messageId = 'foo';
    o.payload = buildPayload();
    o.serviceProviderId = 'foo';
    o.targetId = 'foo';
    o.targetType = 'foo';
    o.targetVersion = 'foo';
    o.userIdentifier = 'foo';
  }
  buildCounterChangeEvent--;
  return o;
}

void checkChangeEvent(api.ChangeEvent o) {
  buildCounterChangeEvent++;
  if (buildCounterChangeEvent < 3) {
    unittest.expect(
      o.changeEventId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.changeTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.changeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.initiatorType!,
      unittest.equals('foo'),
    );
    checkMessage(o.message! as api.Message);
    unittest.expect(
      o.messageId!,
      unittest.equals('foo'),
    );
    checkPayload(o.payload! as api.Payload);
    unittest.expect(
      o.serviceProviderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userIdentifier!,
      unittest.equals('foo'),
    );
  }
  buildCounterChangeEvent--;
}

core.List<api.ChangeEvent> buildUnnamed26() {
  var o = <api.ChangeEvent>[];
  o.add(buildChangeEvent());
  o.add(buildChangeEvent());
  return o;
}

void checkUnnamed26(core.List<api.ChangeEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChangeEvent(o[0] as api.ChangeEvent);
  checkChangeEvent(o[1] as api.ChangeEvent);
}

core.int buildCounterCollectionResponseChangeEvent = 0;
api.CollectionResponseChangeEvent buildCollectionResponseChangeEvent() {
  var o = api.CollectionResponseChangeEvent();
  buildCounterCollectionResponseChangeEvent++;
  if (buildCounterCollectionResponseChangeEvent < 3) {
    o.items = buildUnnamed26();
    o.nextPageToken = 'foo';
  }
  buildCounterCollectionResponseChangeEvent--;
  return o;
}

void checkCollectionResponseChangeEvent(api.CollectionResponseChangeEvent o) {
  buildCounterCollectionResponseChangeEvent++;
  if (buildCounterCollectionResponseChangeEvent < 3) {
    checkUnnamed26(o.items!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterCollectionResponseChangeEvent--;
}

core.List<api.CustomerAddress> buildUnnamed27() {
  var o = <api.CustomerAddress>[];
  o.add(buildCustomerAddress());
  o.add(buildCustomerAddress());
  return o;
}

void checkUnnamed27(core.List<api.CustomerAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerAddress(o[0] as api.CustomerAddress);
  checkCustomerAddress(o[1] as api.CustomerAddress);
}

core.List<api.CustomerContact> buildUnnamed28() {
  var o = <api.CustomerContact>[];
  o.add(buildCustomerContact());
  o.add(buildCustomerContact());
  return o;
}

void checkUnnamed28(core.List<api.CustomerContact> o) {
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
    o.addresses = buildUnnamed27();
    o.businessName = 'foo';
    o.changeContext = buildChangeContext();
    o.contacts = buildUnnamed28();
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
    checkUnnamed27(o.addresses!);
    unittest.expect(
      o.businessName!,
      unittest.equals('foo'),
    );
    checkChangeContext(o.changeContext! as api.ChangeContext);
    checkUnnamed28(o.contacts!);
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

core.List<api.EmailAddress> buildUnnamed29() {
  var o = <api.EmailAddress>[];
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

void checkUnnamed29(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0] as api.EmailAddress);
  checkEmailAddress(o[1] as api.EmailAddress);
}

core.List<api.PhoneNumber> buildUnnamed30() {
  var o = <api.PhoneNumber>[];
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

void checkUnnamed30(core.List<api.PhoneNumber> o) {
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
    o.emailAddresses = buildUnnamed29();
    o.label = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.phoneNumbers = buildUnnamed30();
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
    checkUnnamed29(o.emailAddresses!);
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
    checkUnnamed30(o.phoneNumbers!);
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

core.int buildCounterMessage = 0;
api.Message buildMessage() {
  var o = api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.content = 'foo';
    o.customer = buildCustomer();
    o.customerId = 'foo';
    o.direction = 'foo';
    o.externalMessageId = 'foo';
    o.failureCode = 'foo';
    o.failureReason = 'foo';
    o.messageId = 'foo';
    o.messagingType = 'foo';
    o.receivedTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.receiver = 'foo';
    o.sender = 'foo';
    o.sentTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.status = 'foo';
    o.subject = 'foo';
  }
  buildCounterMessage--;
  return o;
}

void checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkCustomer(o.customer! as api.Customer);
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.direction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalMessageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.failureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messagingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.receivedTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.receiver!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sender!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sentTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subject!,
      unittest.equals('foo'),
    );
  }
  buildCounterMessage--;
}

core.int buildCounterPayload = 0;
api.Payload buildPayload() {
  var o = api.Payload();
  buildCounterPayload++;
  if (buildCounterPayload < 3) {
    o.change = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.original = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterPayload--;
  return o;
}

void checkPayload(api.Payload o) {
  buildCounterPayload++;
  if (buildCounterPayload < 3) {
    var casted1 = (o.change!) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(
      casted1['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted1['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted1['string'],
      unittest.equals('foo'),
    );
    var casted2 = (o.original!) as core.Map;
    unittest.expect(casted2, unittest.hasLength(3));
    unittest.expect(
      casted2['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted2['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted2['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterPayload--;
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

  unittest.group('obj-schema-ChangeEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildChangeEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ChangeEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChangeEvent(od as api.ChangeEvent);
    });
  });

  unittest.group('obj-schema-CollectionResponseChangeEvent', () {
    unittest.test('to-json--from-json', () async {
      var o = buildCollectionResponseChangeEvent();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.CollectionResponseChangeEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCollectionResponseChangeEvent(
          od as api.CollectionResponseChangeEvent);
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

  unittest.group('obj-schema-Message', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMessage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Message.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMessage(od as api.Message);
    });
  });

  unittest.group('obj-schema-Payload', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPayload();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Payload.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPayload(od as api.Payload);
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

  unittest.group('resource-ChangeEventApi', () {
    unittest.test('method--getChangeEvents', () async {
      var mock = HttpServerMock();
      var res = api.ChangeEventApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_numItems = 42;
      var arg_pageToken = 'foo';
      var arg_targetType = 'foo';
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
          path.substring(pathOffset, pathOffset + 32),
          unittest.equals("changeEvent/v1/serviceProviders/"),
        );
        pathOffset += 32;
        index = path.indexOf('/changes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_svcProviderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals("/changes"),
        );
        pathOffset += 8;

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
          core.DateTime.parse(queryMap["startDate"]!.first),
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          core.int.parse(queryMap["numItems"]!.first),
          unittest.equals(arg_numItems),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["targetType"]!.first,
          unittest.equals(arg_targetType),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCollectionResponseChangeEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getChangeEvents(
          arg_svcProviderId, arg_startDate,
          numItems: arg_numItems,
          pageToken: arg_pageToken,
          targetType: arg_targetType,
          $fields: arg_$fields);
      checkCollectionResponseChangeEvent(
          response as api.CollectionResponseChangeEvent);
    });

    unittest.test('method--getUniversalChangeEvents', () async {
      var mock = HttpServerMock();
      var res = api.ChangeEventApi(mock);
      var arg_startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_numItems = 42;
      var arg_pageToken = 'foo';
      var arg_targetType = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals("changes"),
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
          core.DateTime.parse(queryMap["startDate"]!.first),
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          core.int.parse(queryMap["numItems"]!.first),
          unittest.equals(arg_numItems),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["targetType"]!.first,
          unittest.equals(arg_targetType),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCollectionResponseChangeEvent());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getUniversalChangeEvents(arg_startDate,
          numItems: arg_numItems,
          pageToken: arg_pageToken,
          targetType: arg_targetType,
          $fields: arg_$fields);
      checkCollectionResponseChangeEvent(
          response as api.CollectionResponseChangeEvent);
    });
  });
}
