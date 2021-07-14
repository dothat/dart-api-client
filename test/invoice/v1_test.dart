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

import 'package:dothatapis/invoice/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAmount = 0;
api.Amount buildAmount() {
  var o = api.Amount();
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    o.currency = 'foo';
    o.value = 42.0;
  }
  buildCounterAmount--;
  return o;
}

void checkAmount(api.Amount o) {
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterAmount--;
}

core.int buildCounterBillingAddress = 0;
api.BillingAddress buildBillingAddress() {
  var o = api.BillingAddress();
  buildCounterBillingAddress++;
  if (buildCounterBillingAddress < 3) {
    o.addressLine1 = 'foo';
    o.addressLine2 = 'foo';
    o.addressLine3 = 'foo';
    o.city = 'foo';
    o.state = 'foo';
  }
  buildCounterBillingAddress--;
  return o;
}

void checkBillingAddress(api.BillingAddress o) {
  buildCounterBillingAddress++;
  if (buildCounterBillingAddress < 3) {
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
      o.city!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterBillingAddress--;
}

core.int buildCounterBillingPeriod = 0;
api.BillingPeriod buildBillingPeriod() {
  var o = api.BillingPeriod();
  buildCounterBillingPeriod++;
  if (buildCounterBillingPeriod < 3) {
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.label = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterBillingPeriod--;
  return o;
}

void checkBillingPeriod(api.BillingPeriod o) {
  buildCounterBillingPeriod++;
  if (buildCounterBillingPeriod < 3) {
    unittest.expect(
      o.endDate!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
  }
  buildCounterBillingPeriod--;
}

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

core.List<api.CustomerAddress> buildUnnamed36() {
  var o = <api.CustomerAddress>[];
  o.add(buildCustomerAddress());
  o.add(buildCustomerAddress());
  return o;
}

void checkUnnamed36(core.List<api.CustomerAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerAddress(o[0] as api.CustomerAddress);
  checkCustomerAddress(o[1] as api.CustomerAddress);
}

core.List<api.CustomerContact> buildUnnamed37() {
  var o = <api.CustomerContact>[];
  o.add(buildCustomerContact());
  o.add(buildCustomerContact());
  return o;
}

void checkUnnamed37(core.List<api.CustomerContact> o) {
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
    o.addresses = buildUnnamed36();
    o.businessName = 'foo';
    o.changeContext = buildChangeContext();
    o.contacts = buildUnnamed37();
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
    checkUnnamed36(o.addresses!);
    unittest.expect(
      o.businessName!,
      unittest.equals('foo'),
    );
    checkChangeContext(o.changeContext! as api.ChangeContext);
    checkUnnamed37(o.contacts!);
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

core.List<api.EmailAddress> buildUnnamed38() {
  var o = <api.EmailAddress>[];
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

void checkUnnamed38(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0] as api.EmailAddress);
  checkEmailAddress(o[1] as api.EmailAddress);
}

core.List<api.PhoneNumber> buildUnnamed39() {
  var o = <api.PhoneNumber>[];
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

void checkUnnamed39(core.List<api.PhoneNumber> o) {
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
    o.emailAddresses = buildUnnamed38();
    o.label = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.phoneNumbers = buildUnnamed39();
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
    checkUnnamed38(o.emailAddresses!);
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
    checkUnnamed39(o.phoneNumbers!);
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

core.List<api.InvoiceAttribute> buildUnnamed40() {
  var o = <api.InvoiceAttribute>[];
  o.add(buildInvoiceAttribute());
  o.add(buildInvoiceAttribute());
  return o;
}

void checkUnnamed40(core.List<api.InvoiceAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceAttribute(o[0] as api.InvoiceAttribute);
  checkInvoiceAttribute(o[1] as api.InvoiceAttribute);
}

core.List<api.InvoiceLineItem> buildUnnamed41() {
  var o = <api.InvoiceLineItem>[];
  o.add(buildInvoiceLineItem());
  o.add(buildInvoiceLineItem());
  return o;
}

void checkUnnamed41(core.List<api.InvoiceLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceLineItem(o[0] as api.InvoiceLineItem);
  checkInvoiceLineItem(o[1] as api.InvoiceLineItem);
}

core.int buildCounterInvoice = 0;
api.Invoice buildInvoice() {
  var o = api.Invoice();
  buildCounterInvoice++;
  if (buildCounterInvoice < 3) {
    o.accountName = 'foo';
    o.attributes = buildUnnamed40();
    o.billingAddress = buildBillingAddress();
    o.billingPeriod = buildBillingPeriod();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.customer = buildCustomer();
    o.customerId = 'foo';
    o.dueAmount = buildAmount();
    o.dueDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.invoiceDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.invoiceId = 'foo';
    o.invoiceNumber = 'foo';
    o.invoiceState = 'foo';
    o.invoiceStatus = 'foo';
    o.invoiceType = 'foo';
    o.lineItems = buildUnnamed41();
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.paymentStatus = 'foo';
    o.shortUrlCode = 'foo';
    o.version = 'foo';
  }
  buildCounterInvoice--;
  return o;
}

void checkInvoice(api.Invoice o) {
  buildCounterInvoice++;
  if (buildCounterInvoice < 3) {
    unittest.expect(
      o.accountName!,
      unittest.equals('foo'),
    );
    checkUnnamed40(o.attributes!);
    checkBillingAddress(o.billingAddress! as api.BillingAddress);
    checkBillingPeriod(o.billingPeriod! as api.BillingPeriod);
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    checkCustomer(o.customer! as api.Customer);
    unittest.expect(
      o.customerId!,
      unittest.equals('foo'),
    );
    checkAmount(o.dueAmount! as api.Amount);
    unittest.expect(
      o.dueDate!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.invoiceDate!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.invoiceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invoiceNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invoiceState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invoiceStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invoiceType!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.lineItems!);
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.paymentStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shortUrlCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterInvoice--;
}

core.int buildCounterInvoiceAttribute = 0;
api.InvoiceAttribute buildInvoiceAttribute() {
  var o = api.InvoiceAttribute();
  buildCounterInvoiceAttribute++;
  if (buildCounterInvoiceAttribute < 3) {
    o.attributeType = 'foo';
    o.attributeValue = 'foo';
    o.entityCode = 'foo';
    o.entityId = 'foo';
    o.systemName = 'foo';
  }
  buildCounterInvoiceAttribute--;
  return o;
}

void checkInvoiceAttribute(api.InvoiceAttribute o) {
  buildCounterInvoiceAttribute++;
  if (buildCounterInvoiceAttribute < 3) {
    unittest.expect(
      o.attributeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.attributeValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemName!,
      unittest.equals('foo'),
    );
  }
  buildCounterInvoiceAttribute--;
}

core.List<api.Invoice> buildUnnamed42() {
  var o = <api.Invoice>[];
  o.add(buildInvoice());
  o.add(buildInvoice());
  return o;
}

void checkUnnamed42(core.List<api.Invoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoice(o[0] as api.Invoice);
  checkInvoice(o[1] as api.Invoice);
}

core.int buildCounterInvoiceCollection = 0;
api.InvoiceCollection buildInvoiceCollection() {
  var o = api.InvoiceCollection();
  buildCounterInvoiceCollection++;
  if (buildCounterInvoiceCollection < 3) {
    o.items = buildUnnamed42();
  }
  buildCounterInvoiceCollection--;
  return o;
}

void checkInvoiceCollection(api.InvoiceCollection o) {
  buildCounterInvoiceCollection++;
  if (buildCounterInvoiceCollection < 3) {
    checkUnnamed42(o.items!);
  }
  buildCounterInvoiceCollection--;
}

core.List<api.InvoiceAttribute> buildUnnamed43() {
  var o = <api.InvoiceAttribute>[];
  o.add(buildInvoiceAttribute());
  o.add(buildInvoiceAttribute());
  return o;
}

void checkUnnamed43(core.List<api.InvoiceAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceAttribute(o[0] as api.InvoiceAttribute);
  checkInvoiceAttribute(o[1] as api.InvoiceAttribute);
}

core.int buildCounterInvoiceLineItem = 0;
api.InvoiceLineItem buildInvoiceLineItem() {
  var o = api.InvoiceLineItem();
  buildCounterInvoiceLineItem++;
  if (buildCounterInvoiceLineItem < 3) {
    o.amount = 42.0;
    o.attributes = buildUnnamed43();
    o.category = 'foo';
    o.countLabel = 'foo';
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.currency = 'foo';
    o.description = 'foo';
    o.itemDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.itemOrder = 42;
    o.lineItemId = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.pricing = buildPricing();
    o.quantity = 42.0;
    o.quantityCount = 42.0;
    o.quantityUnit = 'foo';
    o.title = 'foo';
    o.version = 'foo';
  }
  buildCounterInvoiceLineItem--;
  return o;
}

void checkInvoiceLineItem(api.InvoiceLineItem o) {
  buildCounterInvoiceLineItem++;
  if (buildCounterInvoiceLineItem < 3) {
    unittest.expect(
      o.amount!,
      unittest.equals(42.0),
    );
    checkUnnamed43(o.attributes!);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.countLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.itemDate!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.itemOrder!,
      unittest.equals(42),
    );
    unittest.expect(
      o.lineItemId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    checkPricing(o.pricing! as api.Pricing);
    unittest.expect(
      o.quantity!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.quantityCount!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.quantityUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterInvoiceLineItem--;
}

core.int buildCounterInvoiceTemplate = 0;
api.InvoiceTemplate buildInvoiceTemplate() {
  var o = api.InvoiceTemplate();
  buildCounterInvoiceTemplate++;
  if (buildCounterInvoiceTemplate < 3) {
    o.content = 'foo';
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.default_ = true;
    o.effectiveFromDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.effectiveUntilDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.engineName = 'foo';
    o.invoiceTemplateId = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.version = 'foo';
    o.versionName = 'foo';
  }
  buildCounterInvoiceTemplate--;
  return o;
}

void checkInvoiceTemplate(api.InvoiceTemplate o) {
  buildCounterInvoiceTemplate++;
  if (buildCounterInvoiceTemplate < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(o.default_!, unittest.isTrue);
    unittest.expect(
      o.effectiveFromDate!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.effectiveUntilDate!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.engineName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.invoiceTemplateId!,
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
      o.version!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterInvoiceTemplate--;
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

core.int buildCounterPricing = 0;
api.Pricing buildPricing() {
  var o = api.Pricing();
  buildCounterPricing++;
  if (buildCounterPricing < 3) {
    o.currency = 'foo';
    o.price = 42.0;
    o.pricingQuantity = 42.0;
    o.pricingUnit = 'foo';
  }
  buildCounterPricing--;
  return o;
}

void checkPricing(api.Pricing o) {
  buildCounterPricing++;
  if (buildCounterPricing < 3) {
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.price!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pricingQuantity!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pricingUnit!,
      unittest.equals('foo'),
    );
  }
  buildCounterPricing--;
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

core.List<core.String> buildUnnamed44() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed44(core.List<core.String> o) {
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
  unittest.group('obj-schema-Amount', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAmount();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Amount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAmount(od as api.Amount);
    });
  });

  unittest.group('obj-schema-BillingAddress', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingAddress();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingAddress(od as api.BillingAddress);
    });
  });

  unittest.group('obj-schema-BillingPeriod', () {
    unittest.test('to-json--from-json', () async {
      var o = buildBillingPeriod();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.BillingPeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBillingPeriod(od as api.BillingPeriod);
    });
  });

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

  unittest.group('obj-schema-Invoice', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInvoice();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Invoice.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInvoice(od as api.Invoice);
    });
  });

  unittest.group('obj-schema-InvoiceAttribute', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInvoiceAttribute();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InvoiceAttribute.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInvoiceAttribute(od as api.InvoiceAttribute);
    });
  });

  unittest.group('obj-schema-InvoiceCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInvoiceCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InvoiceCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInvoiceCollection(od as api.InvoiceCollection);
    });
  });

  unittest.group('obj-schema-InvoiceLineItem', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInvoiceLineItem();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InvoiceLineItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInvoiceLineItem(od as api.InvoiceLineItem);
    });
  });

  unittest.group('obj-schema-InvoiceTemplate', () {
    unittest.test('to-json--from-json', () async {
      var o = buildInvoiceTemplate();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.InvoiceTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInvoiceTemplate(od as api.InvoiceTemplate);
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

  unittest.group('obj-schema-Pricing', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPricing();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Pricing.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPricing(od as api.Pricing);
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

  unittest.group('resource-InvoiceApi', () {
    unittest.test('method--createInvoice', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_request = buildInvoice();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Invoice.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInvoice(obj as api.Invoice);

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
        var resp = convert.json.encode(buildInvoice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createInvoice(
          arg_request, arg_svcProviderId, arg_custId,
          $fields: arg_$fields);
      checkInvoice(response as api.Invoice);
    });

    unittest.test('method--createInvoiceTemplate', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_request = buildInvoiceTemplate();
      var arg_svcProviderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InvoiceTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInvoiceTemplate(obj as api.InvoiceTemplate);

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
        var resp = convert.json.encode(buildInvoiceTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createInvoiceTemplate(
          arg_request, arg_svcProviderId,
          $fields: arg_$fields);
      checkInvoiceTemplate(response as api.InvoiceTemplate);
    });

    unittest.test('method--deleteInvoice', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_invId = 'foo';
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
      await res.deleteInvoice(arg_svcProviderId, arg_custId, arg_invId,
          $fields: arg_$fields);
    });

    unittest.test('method--findAllInvoices', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_minEndDate = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_maxEndDate = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_filterType = 'foo';
      var arg_filterValue = buildUnnamed44();
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
          queryMap["filterType"]!.first,
          unittest.equals(arg_filterType),
        );
        unittest.expect(
          queryMap["filterValue"]!,
          unittest.equals(arg_filterValue),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInvoiceCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findAllInvoices(
          arg_svcProviderId, arg_minEndDate, arg_maxEndDate,
          filterType: arg_filterType,
          filterValue: arg_filterValue,
          $fields: arg_$fields);
      checkInvoiceCollection(response as api.InvoiceCollection);
    });

    unittest.test('method--findCurrentInvoice', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
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
        var resp = convert.json.encode(buildInvoice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findCurrentInvoice(
          arg_svcProviderId, arg_custId, arg_startDate, arg_endDate,
          $fields: arg_$fields);
      checkInvoice(response as api.Invoice);
    });

    unittest.test('method--findInvoice', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_shortUrlCode = 'foo';
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
        var resp = convert.json.encode(buildInvoice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findInvoice(
          arg_svcProviderId, arg_shortUrlCode,
          $fields: arg_$fields);
      checkInvoice(response as api.Invoice);
    });

    unittest.test('method--findInvoiceTemplate', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_invoiceDate = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_templateName = 'foo';
      var arg_templateVerName = 'foo';
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
          core.DateTime.parse(queryMap["invoiceDate"]!.first),
          unittest.equals(arg_invoiceDate),
        );
        unittest.expect(
          queryMap["templateName"]!.first,
          unittest.equals(arg_templateName),
        );
        unittest.expect(
          queryMap["templateVerName"]!.first,
          unittest.equals(arg_templateVerName),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInvoiceTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findInvoiceTemplate(arg_svcProviderId,
          invoiceDate: arg_invoiceDate,
          templateName: arg_templateName,
          templateVerName: arg_templateVerName,
          $fields: arg_$fields);
      checkInvoiceTemplate(response as api.InvoiceTemplate);
    });

    unittest.test('method--getInvoice', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_invId = 'foo';
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
        var resp = convert.json.encode(buildInvoice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getInvoice(
          arg_svcProviderId, arg_custId, arg_invId,
          $fields: arg_$fields);
      checkInvoice(response as api.Invoice);
    });

    unittest.test('method--getInvoiceTemplate', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_templateId = 'foo';
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
        var resp = convert.json.encode(buildInvoiceTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getInvoiceTemplate(
          arg_svcProviderId, arg_templateId,
          $fields: arg_$fields);
      checkInvoiceTemplate(response as api.InvoiceTemplate);
    });

    unittest.test('method--updateInvoice', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_request = buildInvoice();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_invId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Invoice.fromJson(json as core.Map<core.String, core.dynamic>);
        checkInvoice(obj as api.Invoice);

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
        var resp = convert.json.encode(buildInvoice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateInvoice(
          arg_request, arg_svcProviderId, arg_custId, arg_invId,
          $fields: arg_$fields);
      checkInvoice(response as api.Invoice);
    });

    unittest.test('method--updateInvoiceTemplate', () async {
      var mock = HttpServerMock();
      var res = api.InvoiceApi(mock);
      var arg_request = buildInvoiceTemplate();
      var arg_svcProviderId = 'foo';
      var arg_templateId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.InvoiceTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInvoiceTemplate(obj as api.InvoiceTemplate);

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
        var resp = convert.json.encode(buildInvoiceTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateInvoiceTemplate(
          arg_request, arg_svcProviderId, arg_templateId,
          $fields: arg_$fields);
      checkInvoiceTemplate(response as api.InvoiceTemplate);
    });
  });
}
