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

import 'package:dothatapis/order/v1.dart' as api;
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

core.List<api.CustomerAddress> buildUnnamed57() {
  var o = <api.CustomerAddress>[];
  o.add(buildCustomerAddress());
  o.add(buildCustomerAddress());
  return o;
}

void checkUnnamed57(core.List<api.CustomerAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerAddress(o[0] as api.CustomerAddress);
  checkCustomerAddress(o[1] as api.CustomerAddress);
}

core.List<api.CustomerContact> buildUnnamed58() {
  var o = <api.CustomerContact>[];
  o.add(buildCustomerContact());
  o.add(buildCustomerContact());
  return o;
}

void checkUnnamed58(core.List<api.CustomerContact> o) {
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
    o.addresses = buildUnnamed57();
    o.businessName = 'foo';
    o.changeContext = buildChangeContext();
    o.contacts = buildUnnamed58();
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
    checkUnnamed57(o.addresses!);
    unittest.expect(
      o.businessName!,
      unittest.equals('foo'),
    );
    checkChangeContext(o.changeContext! as api.ChangeContext);
    checkUnnamed58(o.contacts!);
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

core.List<api.EmailAddress> buildUnnamed59() {
  var o = <api.EmailAddress>[];
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

void checkUnnamed59(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0] as api.EmailAddress);
  checkEmailAddress(o[1] as api.EmailAddress);
}

core.List<api.PhoneNumber> buildUnnamed60() {
  var o = <api.PhoneNumber>[];
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

void checkUnnamed60(core.List<api.PhoneNumber> o) {
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
    o.emailAddresses = buildUnnamed59();
    o.label = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.phoneNumbers = buildUnnamed60();
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
    checkUnnamed59(o.emailAddresses!);
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
    checkUnnamed60(o.phoneNumbers!);
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

core.int buildCounterMeasurement = 0;
api.Measurement buildMeasurement() {
  var o = api.Measurement();
  buildCounterMeasurement++;
  if (buildCounterMeasurement < 3) {
    o.quantity = 42.0;
    o.quantityUnit = 'foo';
    o.unitName = 'foo';
  }
  buildCounterMeasurement--;
  return o;
}

void checkMeasurement(api.Measurement o) {
  buildCounterMeasurement++;
  if (buildCounterMeasurement < 3) {
    unittest.expect(
      o.quantity!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.quantityUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.unitName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMeasurement--;
}

core.List<api.OrderItem> buildUnnamed61() {
  var o = <api.OrderItem>[];
  o.add(buildOrderItem());
  o.add(buildOrderItem());
  return o;
}

void checkUnnamed61(core.List<api.OrderItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderItem(o[0] as api.OrderItem);
  checkOrderItem(o[1] as api.OrderItem);
}

core.int buildCounterOrder = 0;
api.Order buildOrder() {
  var o = api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.changeContext = buildChangeContext();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.customer = buildCustomer();
    o.date = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.orderId = 'foo';
    o.orderItems = buildUnnamed61();
    o.orderSource = 'foo';
    o.placementStatus = 'foo';
    o.version = 'foo';
  }
  buildCounterOrder--;
  return o;
}

void checkOrder(api.Order o) {
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    checkChangeContext(o.changeContext! as api.ChangeContext);
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    checkCustomer(o.customer! as api.Customer);
    unittest.expect(
      o.date!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.orderItems!);
    unittest.expect(
      o.orderSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placementStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterOrder--;
}

core.List<api.Order> buildUnnamed62() {
  var o = <api.Order>[];
  o.add(buildOrder());
  o.add(buildOrder());
  return o;
}

void checkUnnamed62(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0] as api.Order);
  checkOrder(o[1] as api.Order);
}

core.int buildCounterOrderCollection = 0;
api.OrderCollection buildOrderCollection() {
  var o = api.OrderCollection();
  buildCounterOrderCollection++;
  if (buildCounterOrderCollection < 3) {
    o.items = buildUnnamed62();
  }
  buildCounterOrderCollection--;
  return o;
}

void checkOrderCollection(api.OrderCollection o) {
  buildCounterOrderCollection++;
  if (buildCounterOrderCollection < 3) {
    checkUnnamed62(o.items!);
  }
  buildCounterOrderCollection--;
}

core.int buildCounterOrderItem = 0;
api.OrderItem buildOrderItem() {
  var o = api.OrderItem();
  buildCounterOrderItem++;
  if (buildCounterOrderItem < 3) {
    o.placementStatus = 'foo';
    o.product = buildProduct();
    o.productId = 'foo';
    o.quantity = 42.0;
    o.slotNumber = 42;
  }
  buildCounterOrderItem--;
  return o;
}

void checkOrderItem(api.OrderItem o) {
  buildCounterOrderItem++;
  if (buildCounterOrderItem < 3) {
    unittest.expect(
      o.placementStatus!,
      unittest.equals('foo'),
    );
    checkProduct(o.product! as api.Product);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.slotNumber!,
      unittest.equals(42),
    );
  }
  buildCounterOrderItem--;
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

core.List<api.ProductImage> buildUnnamed63() {
  var o = <api.ProductImage>[];
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

void checkUnnamed63(core.List<api.ProductImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductImage(o[0] as api.ProductImage);
  checkProductImage(o[1] as api.ProductImage);
}

core.List<api.ProductPrice> buildUnnamed64() {
  var o = <api.ProductPrice>[];
  o.add(buildProductPrice());
  o.add(buildProductPrice());
  return o;
}

void checkUnnamed64(core.List<api.ProductPrice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPrice(o[0] as api.ProductPrice);
  checkProductPrice(o[1] as api.ProductPrice);
}

core.int buildCounterProduct = 0;
api.Product buildProduct() {
  var o = api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.active = true;
    o.availability = buildProductAvailability();
    o.category = 'foo';
    o.changeContext = buildChangeContext();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.description = 'foo';
    o.displayRank = 42;
    o.images = buildUnnamed63();
    o.measurementQuantity = 42.0;
    o.measurementUnit = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.prices = buildUnnamed64();
    o.productCategory = buildProductCategory();
    o.productCode = 'foo';
    o.productGroup = buildProductGroup();
    o.productId = 'foo';
    o.quantity = 42.0;
    o.quantityLabel = 'foo';
    o.quantityUnit = 'foo';
    o.serviceProviderId = 'foo';
    o.version = 'foo';
    o.visibility = buildProductVisibility();
  }
  buildCounterProduct--;
  return o;
}

void checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    checkProductAvailability(o.availability! as api.ProductAvailability);
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    checkChangeContext(o.changeContext! as api.ChangeContext);
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayRank!,
      unittest.equals(42),
    );
    checkUnnamed63(o.images!);
    unittest.expect(
      o.measurementQuantity!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.measurementUnit!,
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
    checkUnnamed64(o.prices!);
    checkProductCategory(o.productCategory! as api.ProductCategory);
    unittest.expect(
      o.productCode!,
      unittest.equals('foo'),
    );
    checkProductGroup(o.productGroup! as api.ProductGroup);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.quantityLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.quantityUnit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceProviderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
    checkProductVisibility(o.visibility! as api.ProductVisibility);
  }
  buildCounterProduct--;
}

core.int buildCounterProductAvailability = 0;
api.ProductAvailability buildProductAvailability() {
  var o = api.ProductAvailability();
  buildCounterProductAvailability++;
  if (buildCounterProductAvailability < 3) {
    o.availableFrom = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.availableUntil = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.schedule = buildSchedule();
  }
  buildCounterProductAvailability--;
  return o;
}

void checkProductAvailability(api.ProductAvailability o) {
  buildCounterProductAvailability++;
  if (buildCounterProductAvailability < 3) {
    unittest.expect(
      o.availableFrom!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.availableUntil!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    checkSchedule(o.schedule! as api.Schedule);
  }
  buildCounterProductAvailability--;
}

core.List<api.ProductImage> buildUnnamed65() {
  var o = <api.ProductImage>[];
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

void checkUnnamed65(core.List<api.ProductImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductImage(o[0] as api.ProductImage);
  checkProductImage(o[1] as api.ProductImage);
}

core.int buildCounterProductCategory = 0;
api.ProductCategory buildProductCategory() {
  var o = api.ProductCategory();
  buildCounterProductCategory++;
  if (buildCounterProductCategory < 3) {
    o.categoryName = 'foo';
    o.images = buildUnnamed65();
  }
  buildCounterProductCategory--;
  return o;
}

void checkProductCategory(api.ProductCategory o) {
  buildCounterProductCategory++;
  if (buildCounterProductCategory < 3) {
    unittest.expect(
      o.categoryName!,
      unittest.equals('foo'),
    );
    checkUnnamed65(o.images!);
  }
  buildCounterProductCategory--;
}

core.List<api.ProductImage> buildUnnamed66() {
  var o = <api.ProductImage>[];
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

void checkUnnamed66(core.List<api.ProductImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductImage(o[0] as api.ProductImage);
  checkProductImage(o[1] as api.ProductImage);
}

core.int buildCounterProductGroup = 0;
api.ProductGroup buildProductGroup() {
  var o = api.ProductGroup();
  buildCounterProductGroup++;
  if (buildCounterProductGroup < 3) {
    o.groupDescription = 'foo';
    o.groupName = 'foo';
    o.images = buildUnnamed66();
  }
  buildCounterProductGroup--;
  return o;
}

void checkProductGroup(api.ProductGroup o) {
  buildCounterProductGroup++;
  if (buildCounterProductGroup < 3) {
    unittest.expect(
      o.groupDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.groupName!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.images!);
  }
  buildCounterProductGroup--;
}

core.int buildCounterProductImage = 0;
api.ProductImage buildProductImage() {
  var o = api.ProductImage();
  buildCounterProductImage++;
  if (buildCounterProductImage < 3) {
    o.assetName = 'foo';
    o.imageType = 'foo';
    o.imageUrl = 'foo';
  }
  buildCounterProductImage--;
  return o;
}

void checkProductImage(api.ProductImage o) {
  buildCounterProductImage++;
  if (buildCounterProductImage < 3) {
    unittest.expect(
      o.assetName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductImage--;
}

core.int buildCounterProductPrice = 0;
api.ProductPrice buildProductPrice() {
  var o = api.ProductPrice();
  buildCounterProductPrice++;
  if (buildCounterProductPrice < 3) {
    o.amount = buildAmount();
    o.duration = 42.0;
    o.durationType = 'foo';
    o.measurement = buildMeasurement();
    o.schedule = buildSchedule();
  }
  buildCounterProductPrice--;
  return o;
}

void checkProductPrice(api.ProductPrice o) {
  buildCounterProductPrice++;
  if (buildCounterProductPrice < 3) {
    checkAmount(o.amount! as api.Amount);
    unittest.expect(
      o.duration!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.durationType!,
      unittest.equals('foo'),
    );
    checkMeasurement(o.measurement! as api.Measurement);
    checkSchedule(o.schedule! as api.Schedule);
  }
  buildCounterProductPrice--;
}

core.int buildCounterProductVisibility = 0;
api.ProductVisibility buildProductVisibility() {
  var o = api.ProductVisibility();
  buildCounterProductVisibility++;
  if (buildCounterProductVisibility < 3) {
    o.visibleOnlyForServiceProvider = true;
    o.visibleOnlyForWhiteListedCustomers = true;
  }
  buildCounterProductVisibility--;
  return o;
}

void checkProductVisibility(api.ProductVisibility o) {
  buildCounterProductVisibility++;
  if (buildCounterProductVisibility < 3) {
    unittest.expect(o.visibleOnlyForServiceProvider!, unittest.isTrue);
    unittest.expect(o.visibleOnlyForWhiteListedCustomers!, unittest.isTrue);
  }
  buildCounterProductVisibility--;
}

core.List<core.String> buildUnnamed67() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed67(core.List<core.String> o) {
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

core.List<api.ScheduleRestriction> buildUnnamed68() {
  var o = <api.ScheduleRestriction>[];
  o.add(buildScheduleRestriction());
  o.add(buildScheduleRestriction());
  return o;
}

void checkUnnamed68(core.List<api.ScheduleRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScheduleRestriction(o[0] as api.ScheduleRestriction);
  checkScheduleRestriction(o[1] as api.ScheduleRestriction);
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  var o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.daysOfWeek = buildUnnamed67();
    o.frequency = 42;
    o.frequencyType = 'foo';
    o.restrictions = buildUnnamed68();
    o.scheduleType = 'foo';
  }
  buildCounterSchedule--;
  return o;
}

void checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    checkUnnamed67(o.daysOfWeek!);
    unittest.expect(
      o.frequency!,
      unittest.equals(42),
    );
    unittest.expect(
      o.frequencyType!,
      unittest.equals('foo'),
    );
    checkUnnamed68(o.restrictions!);
    unittest.expect(
      o.scheduleType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchedule--;
}

core.List<core.String> buildUnnamed69() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed69(core.List<core.String> o) {
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

core.int buildCounterScheduleRestriction = 0;
api.ScheduleRestriction buildScheduleRestriction() {
  var o = api.ScheduleRestriction();
  buildCounterScheduleRestriction++;
  if (buildCounterScheduleRestriction < 3) {
    o.daysOfWeek = buildUnnamed69();
    o.scheduleType = 'foo';
  }
  buildCounterScheduleRestriction--;
  return o;
}

void checkScheduleRestriction(api.ScheduleRestriction o) {
  buildCounterScheduleRestriction++;
  if (buildCounterScheduleRestriction < 3) {
    checkUnnamed69(o.daysOfWeek!);
    unittest.expect(
      o.scheduleType!,
      unittest.equals('foo'),
    );
  }
  buildCounterScheduleRestriction--;
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
  unittest.group('obj-schema-Amount', () {
    unittest.test('to-json--from-json', () async {
      var o = buildAmount();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Amount.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAmount(od as api.Amount);
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

  unittest.group('obj-schema-Measurement', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMeasurement();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Measurement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMeasurement(od as api.Measurement);
    });
  });

  unittest.group('obj-schema-Order', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOrder();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Order.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrder(od as api.Order);
    });
  });

  unittest.group('obj-schema-OrderCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOrderCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.OrderCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOrderCollection(od as api.OrderCollection);
    });
  });

  unittest.group('obj-schema-OrderItem', () {
    unittest.test('to-json--from-json', () async {
      var o = buildOrderItem();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.OrderItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOrderItem(od as api.OrderItem);
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

  unittest.group('obj-schema-Product', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProduct();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Product.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProduct(od as api.Product);
    });
  });

  unittest.group('obj-schema-ProductAvailability', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProductAvailability();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProductAvailability.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductAvailability(od as api.ProductAvailability);
    });
  });

  unittest.group('obj-schema-ProductCategory', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProductCategory();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProductCategory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductCategory(od as api.ProductCategory);
    });
  });

  unittest.group('obj-schema-ProductGroup', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProductGroup();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProductGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductGroup(od as api.ProductGroup);
    });
  });

  unittest.group('obj-schema-ProductImage', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProductImage();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProductImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductImage(od as api.ProductImage);
    });
  });

  unittest.group('obj-schema-ProductPrice', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProductPrice();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProductPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductPrice(od as api.ProductPrice);
    });
  });

  unittest.group('obj-schema-ProductVisibility', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProductVisibility();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProductVisibility.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductVisibility(od as api.ProductVisibility);
    });
  });

  unittest.group('obj-schema-Schedule', () {
    unittest.test('to-json--from-json', () async {
      var o = buildSchedule();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od =
          api.Schedule.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSchedule(od as api.Schedule);
    });
  });

  unittest.group('obj-schema-ScheduleRestriction', () {
    unittest.test('to-json--from-json', () async {
      var o = buildScheduleRestriction();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ScheduleRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScheduleRestriction(od as api.ScheduleRestriction);
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

  unittest.group('resource-OrderApi', () {
    unittest.test('method--createOrder', () async {
      var mock = HttpServerMock();
      var res = api.OrderApi(mock);
      var arg_request = buildOrder();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Order.fromJson(json as core.Map<core.String, core.dynamic>);
        checkOrder(obj as api.Order);

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
        var resp = convert.json.encode(buildOrder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createOrder(
          arg_request, arg_svcProviderId, arg_custId,
          $fields: arg_$fields);
      checkOrder(response as api.Order);
    });

    unittest.test('method--deleteOrder', () async {
      var mock = HttpServerMock();
      var res = api.OrderApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_ordId = 'foo';
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
      await res.deleteOrder(arg_svcProviderId, arg_custId, arg_ordId,
          $fields: arg_$fields);
    });

    unittest.test('method--findOrdersForCustomer', () async {
      var mock = HttpServerMock();
      var res = api.OrderApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_status = 'foo';
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
          core.DateTime.parse(queryMap["endDate"]!.first),
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          core.DateTime.parse(queryMap["startDate"]!.first),
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap["status"]!.first,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrderCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findOrdersForCustomer(
          arg_svcProviderId, arg_custId, arg_endDate, arg_startDate,
          status: arg_status, $fields: arg_$fields);
      checkOrderCollection(response as api.OrderCollection);
    });

    unittest.test('method--findOrdersForServiceProvider', () async {
      var mock = HttpServerMock();
      var res = api.OrderApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
      var arg_status = 'foo';
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
          core.DateTime.parse(queryMap["endDate"]!.first),
          unittest.equals(arg_endDate),
        );
        unittest.expect(
          core.DateTime.parse(queryMap["startDate"]!.first),
          unittest.equals(arg_startDate),
        );
        unittest.expect(
          queryMap["status"]!.first,
          unittest.equals(arg_status),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrderCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findOrdersForServiceProvider(
          arg_svcProviderId, arg_endDate, arg_startDate,
          status: arg_status, $fields: arg_$fields);
      checkOrderCollection(response as api.OrderCollection);
    });

    unittest.test('method--getOrder', () async {
      var mock = HttpServerMock();
      var res = api.OrderApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_ordId = 'foo';
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
        var resp = convert.json.encode(buildOrder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getOrder(
          arg_svcProviderId, arg_custId, arg_ordId,
          $fields: arg_$fields);
      checkOrder(response as api.Order);
    });

    unittest.test('method--updateOrder', () async {
      var mock = HttpServerMock();
      var res = api.OrderApi(mock);
      var arg_request = buildOrder();
      var arg_svcProviderId = 'foo';
      var arg_custId = 'foo';
      var arg_ordId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Order.fromJson(json as core.Map<core.String, core.dynamic>);
        checkOrder(obj as api.Order);

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
        var resp = convert.json.encode(buildOrder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateOrder(
          arg_request, arg_svcProviderId, arg_custId, arg_ordId,
          $fields: arg_$fields);
      checkOrder(response as api.Order);
    });
  });
}
