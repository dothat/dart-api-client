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

import 'package:dothatapis/product/v1.dart' as api;
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

core.int buildCounterPricingPlan = 0;
api.PricingPlan buildPricingPlan() {
  var o = api.PricingPlan();
  buildCounterPricingPlan++;
  if (buildCounterPricingPlan < 3) {
    o.active = true;
    o.changeContext = buildChangeContext();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.default_ = true;
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.planCode = 'foo';
    o.planId = 'foo';
    o.planName = 'foo';
    o.version = 'foo';
  }
  buildCounterPricingPlan--;
  return o;
}

void checkPricingPlan(api.PricingPlan o) {
  buildCounterPricingPlan++;
  if (buildCounterPricingPlan < 3) {
    unittest.expect(o.active!, unittest.isTrue);
    checkChangeContext(o.changeContext! as api.ChangeContext);
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(o.default_!, unittest.isTrue);
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.planCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.planId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.planName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterPricingPlan--;
}

core.List<api.PricingPlan> buildUnnamed45() {
  var o = <api.PricingPlan>[];
  o.add(buildPricingPlan());
  o.add(buildPricingPlan());
  return o;
}

void checkUnnamed45(core.List<api.PricingPlan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricingPlan(o[0] as api.PricingPlan);
  checkPricingPlan(o[1] as api.PricingPlan);
}

core.int buildCounterPricingPlanCollection = 0;
api.PricingPlanCollection buildPricingPlanCollection() {
  var o = api.PricingPlanCollection();
  buildCounterPricingPlanCollection++;
  if (buildCounterPricingPlanCollection < 3) {
    o.items = buildUnnamed45();
  }
  buildCounterPricingPlanCollection--;
  return o;
}

void checkPricingPlanCollection(api.PricingPlanCollection o) {
  buildCounterPricingPlanCollection++;
  if (buildCounterPricingPlanCollection < 3) {
    checkUnnamed45(o.items!);
  }
  buildCounterPricingPlanCollection--;
}

core.List<api.ProductImage> buildUnnamed46() {
  var o = <api.ProductImage>[];
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

void checkUnnamed46(core.List<api.ProductImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductImage(o[0] as api.ProductImage);
  checkProductImage(o[1] as api.ProductImage);
}

core.List<api.ProductPrice> buildUnnamed47() {
  var o = <api.ProductPrice>[];
  o.add(buildProductPrice());
  o.add(buildProductPrice());
  return o;
}

void checkUnnamed47(core.List<api.ProductPrice> o) {
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
    o.images = buildUnnamed46();
    o.measurementQuantity = 42.0;
    o.measurementUnit = 'foo';
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = 'foo';
    o.prices = buildUnnamed47();
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
    checkUnnamed46(o.images!);
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
    checkUnnamed47(o.prices!);
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

core.List<api.ProductImage> buildUnnamed48() {
  var o = <api.ProductImage>[];
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

void checkUnnamed48(core.List<api.ProductImage> o) {
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
    o.images = buildUnnamed48();
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
    checkUnnamed48(o.images!);
  }
  buildCounterProductCategory--;
}

core.List<api.Product> buildUnnamed49() {
  var o = <api.Product>[];
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

void checkUnnamed49(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0] as api.Product);
  checkProduct(o[1] as api.Product);
}

core.int buildCounterProductCollection = 0;
api.ProductCollection buildProductCollection() {
  var o = api.ProductCollection();
  buildCounterProductCollection++;
  if (buildCounterProductCollection < 3) {
    o.items = buildUnnamed49();
  }
  buildCounterProductCollection--;
  return o;
}

void checkProductCollection(api.ProductCollection o) {
  buildCounterProductCollection++;
  if (buildCounterProductCollection < 3) {
    checkUnnamed49(o.items!);
  }
  buildCounterProductCollection--;
}

core.List<api.ProductImage> buildUnnamed50() {
  var o = <api.ProductImage>[];
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

void checkUnnamed50(core.List<api.ProductImage> o) {
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
    o.images = buildUnnamed50();
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
    checkUnnamed50(o.images!);
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

core.List<api.ProductPrice> buildUnnamed51() {
  var o = <api.ProductPrice>[];
  o.add(buildProductPrice());
  o.add(buildProductPrice());
  return o;
}

void checkUnnamed51(core.List<api.ProductPrice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPrice(o[0] as api.ProductPrice);
  checkProductPrice(o[1] as api.ProductPrice);
}

core.int buildCounterProductPriceList = 0;
api.ProductPriceList buildProductPriceList() {
  var o = api.ProductPriceList();
  buildCounterProductPriceList++;
  if (buildCounterProductPriceList < 3) {
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.prices = buildUnnamed51();
    o.pricingPlanId = 'foo';
    o.product = buildProduct();
    o.productId = 'foo';
    o.productPriceListId = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.version = 'foo';
  }
  buildCounterProductPriceList--;
  return o;
}

void checkProductPriceList(api.ProductPriceList o) {
  buildCounterProductPriceList++;
  if (buildCounterProductPriceList < 3) {
    unittest.expect(
      o.creationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    unittest.expect(
      o.endDate!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.modificationTimestamp!,
      unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")),
    );
    checkUnnamed51(o.prices!);
    unittest.expect(
      o.pricingPlanId!,
      unittest.equals('foo'),
    );
    checkProduct(o.product! as api.Product);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productPriceListId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startDate!,
      unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductPriceList--;
}

core.List<api.ProductPriceList> buildUnnamed52() {
  var o = <api.ProductPriceList>[];
  o.add(buildProductPriceList());
  o.add(buildProductPriceList());
  return o;
}

void checkUnnamed52(core.List<api.ProductPriceList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPriceList(o[0] as api.ProductPriceList);
  checkProductPriceList(o[1] as api.ProductPriceList);
}

core.int buildCounterProductPriceListCollection = 0;
api.ProductPriceListCollection buildProductPriceListCollection() {
  var o = api.ProductPriceListCollection();
  buildCounterProductPriceListCollection++;
  if (buildCounterProductPriceListCollection < 3) {
    o.items = buildUnnamed52();
  }
  buildCounterProductPriceListCollection--;
  return o;
}

void checkProductPriceListCollection(api.ProductPriceListCollection o) {
  buildCounterProductPriceListCollection++;
  if (buildCounterProductPriceListCollection < 3) {
    checkUnnamed52(o.items!);
  }
  buildCounterProductPriceListCollection--;
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

core.List<core.String> buildUnnamed53() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed53(core.List<core.String> o) {
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

core.List<api.ScheduleRestriction> buildUnnamed54() {
  var o = <api.ScheduleRestriction>[];
  o.add(buildScheduleRestriction());
  o.add(buildScheduleRestriction());
  return o;
}

void checkUnnamed54(core.List<api.ScheduleRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScheduleRestriction(o[0] as api.ScheduleRestriction);
  checkScheduleRestriction(o[1] as api.ScheduleRestriction);
}

core.int buildCounterSchedule = 0;
api.Schedule buildSchedule() {
  var o = api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.daysOfWeek = buildUnnamed53();
    o.frequency = 42;
    o.frequencyType = 'foo';
    o.restrictions = buildUnnamed54();
    o.scheduleType = 'foo';
  }
  buildCounterSchedule--;
  return o;
}

void checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    checkUnnamed53(o.daysOfWeek!);
    unittest.expect(
      o.frequency!,
      unittest.equals(42),
    );
    unittest.expect(
      o.frequencyType!,
      unittest.equals('foo'),
    );
    checkUnnamed54(o.restrictions!);
    unittest.expect(
      o.scheduleType!,
      unittest.equals('foo'),
    );
  }
  buildCounterSchedule--;
}

core.List<core.String> buildUnnamed55() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed55(core.List<core.String> o) {
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
    o.daysOfWeek = buildUnnamed55();
    o.scheduleType = 'foo';
  }
  buildCounterScheduleRestriction--;
  return o;
}

void checkScheduleRestriction(api.ScheduleRestriction o) {
  buildCounterScheduleRestriction++;
  if (buildCounterScheduleRestriction < 3) {
    checkUnnamed55(o.daysOfWeek!);
    unittest.expect(
      o.scheduleType!,
      unittest.equals('foo'),
    );
  }
  buildCounterScheduleRestriction--;
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

  unittest.group('obj-schema-Measurement', () {
    unittest.test('to-json--from-json', () async {
      var o = buildMeasurement();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.Measurement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMeasurement(od as api.Measurement);
    });
  });

  unittest.group('obj-schema-PricingPlan', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPricingPlan();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PricingPlan.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPricingPlan(od as api.PricingPlan);
    });
  });

  unittest.group('obj-schema-PricingPlanCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildPricingPlanCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.PricingPlanCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPricingPlanCollection(od as api.PricingPlanCollection);
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

  unittest.group('obj-schema-ProductCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProductCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProductCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductCollection(od as api.ProductCollection);
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

  unittest.group('obj-schema-ProductPriceList', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProductPriceList();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProductPriceList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductPriceList(od as api.ProductPriceList);
    });
  });

  unittest.group('obj-schema-ProductPriceListCollection', () {
    unittest.test('to-json--from-json', () async {
      var o = buildProductPriceListCollection();
      var oJson = convert.jsonDecode(convert.jsonEncode(o));
      var od = api.ProductPriceListCollection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductPriceListCollection(od as api.ProductPriceListCollection);
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

  unittest.group('resource-ProductApi', () {
    unittest.test('method--createPricingPlan', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_request = buildPricingPlan();
      var arg_svcProviderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PricingPlan.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPricingPlan(obj as api.PricingPlan);

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
        var resp = convert.json.encode(buildPricingPlan());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createPricingPlan(
          arg_request, arg_svcProviderId,
          $fields: arg_$fields);
      checkPricingPlan(response as api.PricingPlan);
    });

    unittest.test('method--createProduct', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_request = buildProduct();
      var arg_svcProviderId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Product.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProduct(obj as api.Product);

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
        var resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createProduct(arg_request, arg_svcProviderId,
          $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--createProductPriceList', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_request = buildProductPriceList();
      var arg_svcProviderId = 'foo';
      var arg_plnId = 'foo';
      var arg_prodId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ProductPriceList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductPriceList(obj as api.ProductPriceList);

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
        var resp = convert.json.encode(buildProductPriceList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createProductPriceList(
          arg_request, arg_svcProviderId, arg_plnId, arg_prodId,
          $fields: arg_$fields);
      checkProductPriceList(response as api.ProductPriceList);
    });

    unittest.test('method--findAllPlanProductPriceLists', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_plnId = 'foo';
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
        var resp = convert.json.encode(buildProductPriceListCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findAllPlanProductPriceLists(
          arg_svcProviderId, arg_plnId,
          $fields: arg_$fields);
      checkProductPriceListCollection(
          response as api.ProductPriceListCollection);
    });

    unittest.test('method--findAllProductPriceLists', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_plnId = 'foo';
      var arg_prodId = 'foo';
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
        var resp = convert.json.encode(buildProductPriceListCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findAllProductPriceLists(
          arg_svcProviderId, arg_plnId, arg_prodId,
          $fields: arg_$fields);
      checkProductPriceListCollection(
          response as api.ProductPriceListCollection);
    });

    unittest.test('method--findPricingPlans', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
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
        var resp = convert.json.encode(buildPricingPlanCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.findPricingPlans(arg_svcProviderId, $fields: arg_$fields);
      checkPricingPlanCollection(response as api.PricingPlanCollection);
    });

    unittest.test('method--findProducts', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
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
        var resp = convert.json.encode(buildProductCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.findProducts(arg_svcProviderId, $fields: arg_$fields);
      checkProductCollection(response as api.ProductCollection);
    });

    unittest.test('method--findProductsForCustomer', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
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
        var resp = convert.json.encode(buildProductCollection());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findProductsForCustomer(
          arg_svcProviderId, arg_custId,
          $fields: arg_$fields);
      checkProductCollection(response as api.ProductCollection);
    });

    unittest.test('method--getPricingPlan', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_plnId = 'foo';
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
        var resp = convert.json.encode(buildPricingPlan());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPricingPlan(arg_svcProviderId, arg_plnId,
          $fields: arg_$fields);
      checkPricingPlan(response as api.PricingPlan);
    });

    unittest.test('method--getProduct', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_prodId = 'foo';
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
        var resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getProduct(arg_svcProviderId, arg_prodId,
          $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--getProductPriceList', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_svcProviderId = 'foo';
      var arg_plnId = 'foo';
      var arg_prodId = 'foo';
      var arg_prcListId = 'foo';
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
        var resp = convert.json.encode(buildProductPriceList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getProductPriceList(
          arg_svcProviderId, arg_plnId, arg_prodId, arg_prcListId,
          $fields: arg_$fields);
      checkProductPriceList(response as api.ProductPriceList);
    });

    unittest.test('method--updatePricingPlan', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_request = buildPricingPlan();
      var arg_svcProviderId = 'foo';
      var arg_plnId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PricingPlan.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPricingPlan(obj as api.PricingPlan);

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
        var resp = convert.json.encode(buildPricingPlan());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updatePricingPlan(
          arg_request, arg_svcProviderId, arg_plnId,
          $fields: arg_$fields);
      checkPricingPlan(response as api.PricingPlan);
    });

    unittest.test('method--updateProduct', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_request = buildProduct();
      var arg_svcProviderId = 'foo';
      var arg_prodId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.Product.fromJson(json as core.Map<core.String, core.dynamic>);
        checkProduct(obj as api.Product);

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
        var resp = convert.json.encode(buildProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateProduct(
          arg_request, arg_svcProviderId, arg_prodId,
          $fields: arg_$fields);
      checkProduct(response as api.Product);
    });

    unittest.test('method--updateProductPriceList', () async {
      var mock = HttpServerMock();
      var res = api.ProductApi(mock);
      var arg_request = buildProductPriceList();
      var arg_svcProviderId = 'foo';
      var arg_plnId = 'foo';
      var arg_prodId = 'foo';
      var arg_prcListId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ProductPriceList.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductPriceList(obj as api.ProductPriceList);

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
        var resp = convert.json.encode(buildProductPriceList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateProductPriceList(
          arg_request, arg_svcProviderId, arg_plnId, arg_prodId, arg_prcListId,
          $fields: arg_$fields);
      checkProductPriceList(response as api.ProductPriceList);
    });
  });
}
