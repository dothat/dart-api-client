library dothatapis.product.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/product/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAmount = 0;
buildAmount() {
  var o = new api.Amount();
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    o.currency = "foo";
    o.value = 42.0;
  }
  buildCounterAmount--;
  return o;
}

checkAmount(api.Amount o) {
  buildCounterAmount++;
  if (buildCounterAmount < 3) {
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterAmount--;
}

core.int buildCounterChangeContext = 0;
buildChangeContext() {
  var o = new api.ChangeContext();
  buildCounterChangeContext++;
  if (buildCounterChangeContext < 3) {
    o.initiatorType = "foo";
    o.messageId = "foo";
    o.userIdentifier = "foo";
  }
  buildCounterChangeContext--;
  return o;
}

checkChangeContext(api.ChangeContext o) {
  buildCounterChangeContext++;
  if (buildCounterChangeContext < 3) {
    unittest.expect(o.initiatorType, unittest.equals('foo'));
    unittest.expect(o.messageId, unittest.equals('foo'));
    unittest.expect(o.userIdentifier, unittest.equals('foo'));
  }
  buildCounterChangeContext--;
}

buildUnnamed45() {
  var o = new core.List<api.ProductPriceList>();
  o.add(buildProductPriceList());
  o.add(buildProductPriceList());
  return o;
}

checkUnnamed45(core.List<api.ProductPriceList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPriceList(o[0]);
  checkProductPriceList(o[1]);
}

core.int buildCounterPriceList = 0;
buildPriceList() {
  var o = new api.PriceList();
  buildCounterPriceList++;
  if (buildCounterPriceList < 3) {
    o.changeContext = buildChangeContext();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.endDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.priceListId = "foo";
    o.pricingPlan = buildPricingPlan();
    o.pricingPlanId = "foo";
    o.productPriceLists = buildUnnamed45();
    o.startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.version = "foo";
  }
  buildCounterPriceList--;
  return o;
}

checkPriceList(api.PriceList o) {
  buildCounterPriceList++;
  if (buildCounterPriceList < 3) {
    checkChangeContext(o.changeContext);
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.priceListId, unittest.equals('foo'));
    checkPricingPlan(o.pricingPlan);
    unittest.expect(o.pricingPlanId, unittest.equals('foo'));
    checkUnnamed45(o.productPriceLists);
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterPriceList--;
}

buildUnnamed46() {
  var o = new core.List<api.PriceList>();
  o.add(buildPriceList());
  o.add(buildPriceList());
  return o;
}

checkUnnamed46(core.List<api.PriceList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPriceList(o[0]);
  checkPriceList(o[1]);
}

core.int buildCounterPriceListCollection = 0;
buildPriceListCollection() {
  var o = new api.PriceListCollection();
  buildCounterPriceListCollection++;
  if (buildCounterPriceListCollection < 3) {
    o.items = buildUnnamed46();
  }
  buildCounterPriceListCollection--;
  return o;
}

checkPriceListCollection(api.PriceListCollection o) {
  buildCounterPriceListCollection++;
  if (buildCounterPriceListCollection < 3) {
    checkUnnamed46(o.items);
  }
  buildCounterPriceListCollection--;
}

buildUnnamed47() {
  var o = new core.List<api.PriceList>();
  o.add(buildPriceList());
  o.add(buildPriceList());
  return o;
}

checkUnnamed47(core.List<api.PriceList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPriceList(o[0]);
  checkPriceList(o[1]);
}

core.int buildCounterPricingPlan = 0;
buildPricingPlan() {
  var o = new api.PricingPlan();
  buildCounterPricingPlan++;
  if (buildCounterPricingPlan < 3) {
    o.changeContext = buildChangeContext();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.planCode = "foo";
    o.planId = "foo";
    o.planName = "foo";
    o.priceLists = buildUnnamed47();
    o.version = "foo";
  }
  buildCounterPricingPlan--;
  return o;
}

checkPricingPlan(api.PricingPlan o) {
  buildCounterPricingPlan++;
  if (buildCounterPricingPlan < 3) {
    checkChangeContext(o.changeContext);
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.planCode, unittest.equals('foo'));
    unittest.expect(o.planId, unittest.equals('foo'));
    unittest.expect(o.planName, unittest.equals('foo'));
    checkUnnamed47(o.priceLists);
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterPricingPlan--;
}

buildUnnamed48() {
  var o = new core.List<api.PricingPlan>();
  o.add(buildPricingPlan());
  o.add(buildPricingPlan());
  return o;
}

checkUnnamed48(core.List<api.PricingPlan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricingPlan(o[0]);
  checkPricingPlan(o[1]);
}

core.int buildCounterPricingPlanCollection = 0;
buildPricingPlanCollection() {
  var o = new api.PricingPlanCollection();
  buildCounterPricingPlanCollection++;
  if (buildCounterPricingPlanCollection < 3) {
    o.items = buildUnnamed48();
  }
  buildCounterPricingPlanCollection--;
  return o;
}

checkPricingPlanCollection(api.PricingPlanCollection o) {
  buildCounterPricingPlanCollection++;
  if (buildCounterPricingPlanCollection < 3) {
    checkUnnamed48(o.items);
  }
  buildCounterPricingPlanCollection--;
}

buildUnnamed49() {
  var o = new core.List<api.ProductImage>();
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

checkUnnamed49(core.List<api.ProductImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductImage(o[0]);
  checkProductImage(o[1]);
}

buildUnnamed50() {
  var o = new core.List<api.ProductPriceList>();
  o.add(buildProductPriceList());
  o.add(buildProductPriceList());
  return o;
}

checkUnnamed50(core.List<api.ProductPriceList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPriceList(o[0]);
  checkProductPriceList(o[1]);
}

core.int buildCounterProduct = 0;
buildProduct() {
  var o = new api.Product();
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    o.active = true;
    o.availability = buildProductAvailability();
    o.category = "foo";
    o.changeContext = buildChangeContext();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.description = "foo";
    o.displayRank = 42;
    o.images = buildUnnamed49();
    o.measurementQuantity = 42.0;
    o.measurementUnit = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.priceLists = buildUnnamed50();
    o.productCategory = buildProductCategory();
    o.productCode = "foo";
    o.productGroup = buildProductGroup();
    o.productId = "foo";
    o.quantity = 42.0;
    o.quantityLabel = "foo";
    o.quantityUnit = "foo";
    o.serviceProviderId = "foo";
    o.version = "foo";
    o.visibility = buildProductVisibility();
  }
  buildCounterProduct--;
  return o;
}

checkProduct(api.Product o) {
  buildCounterProduct++;
  if (buildCounterProduct < 3) {
    unittest.expect(o.active, unittest.isTrue);
    checkProductAvailability(o.availability);
    unittest.expect(o.category, unittest.equals('foo'));
    checkChangeContext(o.changeContext);
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayRank, unittest.equals(42));
    checkUnnamed49(o.images);
    unittest.expect(o.measurementQuantity, unittest.equals(42.0));
    unittest.expect(o.measurementUnit, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed50(o.priceLists);
    checkProductCategory(o.productCategory);
    unittest.expect(o.productCode, unittest.equals('foo'));
    checkProductGroup(o.productGroup);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42.0));
    unittest.expect(o.quantityLabel, unittest.equals('foo'));
    unittest.expect(o.quantityUnit, unittest.equals('foo'));
    unittest.expect(o.serviceProviderId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
    checkProductVisibility(o.visibility);
  }
  buildCounterProduct--;
}

core.int buildCounterProductAvailability = 0;
buildProductAvailability() {
  var o = new api.ProductAvailability();
  buildCounterProductAvailability++;
  if (buildCounterProductAvailability < 3) {
    o.availableFrom = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.availableUntil = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.schedule = buildSchedule();
  }
  buildCounterProductAvailability--;
  return o;
}

checkProductAvailability(api.ProductAvailability o) {
  buildCounterProductAvailability++;
  if (buildCounterProductAvailability < 3) {
    unittest.expect(o.availableFrom,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.availableUntil,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    checkSchedule(o.schedule);
  }
  buildCounterProductAvailability--;
}

buildUnnamed51() {
  var o = new core.List<api.ProductImage>();
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

checkUnnamed51(core.List<api.ProductImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductImage(o[0]);
  checkProductImage(o[1]);
}

core.int buildCounterProductCategory = 0;
buildProductCategory() {
  var o = new api.ProductCategory();
  buildCounterProductCategory++;
  if (buildCounterProductCategory < 3) {
    o.categoryName = "foo";
    o.images = buildUnnamed51();
  }
  buildCounterProductCategory--;
  return o;
}

checkProductCategory(api.ProductCategory o) {
  buildCounterProductCategory++;
  if (buildCounterProductCategory < 3) {
    unittest.expect(o.categoryName, unittest.equals('foo'));
    checkUnnamed51(o.images);
  }
  buildCounterProductCategory--;
}

buildUnnamed52() {
  var o = new core.List<api.Product>();
  o.add(buildProduct());
  o.add(buildProduct());
  return o;
}

checkUnnamed52(core.List<api.Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProduct(o[0]);
  checkProduct(o[1]);
}

core.int buildCounterProductCollection = 0;
buildProductCollection() {
  var o = new api.ProductCollection();
  buildCounterProductCollection++;
  if (buildCounterProductCollection < 3) {
    o.items = buildUnnamed52();
  }
  buildCounterProductCollection--;
  return o;
}

checkProductCollection(api.ProductCollection o) {
  buildCounterProductCollection++;
  if (buildCounterProductCollection < 3) {
    checkUnnamed52(o.items);
  }
  buildCounterProductCollection--;
}

buildUnnamed53() {
  var o = new core.List<api.ProductImage>();
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

checkUnnamed53(core.List<api.ProductImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductImage(o[0]);
  checkProductImage(o[1]);
}

core.int buildCounterProductGroup = 0;
buildProductGroup() {
  var o = new api.ProductGroup();
  buildCounterProductGroup++;
  if (buildCounterProductGroup < 3) {
    o.groupDescription = "foo";
    o.groupName = "foo";
    o.images = buildUnnamed53();
  }
  buildCounterProductGroup--;
  return o;
}

checkProductGroup(api.ProductGroup o) {
  buildCounterProductGroup++;
  if (buildCounterProductGroup < 3) {
    unittest.expect(o.groupDescription, unittest.equals('foo'));
    unittest.expect(o.groupName, unittest.equals('foo'));
    checkUnnamed53(o.images);
  }
  buildCounterProductGroup--;
}

core.int buildCounterProductImage = 0;
buildProductImage() {
  var o = new api.ProductImage();
  buildCounterProductImage++;
  if (buildCounterProductImage < 3) {
    o.assetName = "foo";
    o.imageType = "foo";
    o.imageUrl = "foo";
  }
  buildCounterProductImage--;
  return o;
}

checkProductImage(api.ProductImage o) {
  buildCounterProductImage++;
  if (buildCounterProductImage < 3) {
    unittest.expect(o.assetName, unittest.equals('foo'));
    unittest.expect(o.imageType, unittest.equals('foo'));
    unittest.expect(o.imageUrl, unittest.equals('foo'));
  }
  buildCounterProductImage--;
}

core.int buildCounterProductPrice = 0;
buildProductPrice() {
  var o = new api.ProductPrice();
  buildCounterProductPrice++;
  if (buildCounterProductPrice < 3) {
    o.amount = buildAmount();
    o.duration = 42.0;
    o.durationType = "foo";
    o.schedule = buildSchedule();
  }
  buildCounterProductPrice--;
  return o;
}

checkProductPrice(api.ProductPrice o) {
  buildCounterProductPrice++;
  if (buildCounterProductPrice < 3) {
    checkAmount(o.amount);
    unittest.expect(o.duration, unittest.equals(42.0));
    unittest.expect(o.durationType, unittest.equals('foo'));
    checkSchedule(o.schedule);
  }
  buildCounterProductPrice--;
}

buildUnnamed54() {
  var o = new core.List<api.ProductPrice>();
  o.add(buildProductPrice());
  o.add(buildProductPrice());
  return o;
}

checkUnnamed54(core.List<api.ProductPrice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductPrice(o[0]);
  checkProductPrice(o[1]);
}

core.int buildCounterProductPriceList = 0;
buildProductPriceList() {
  var o = new api.ProductPriceList();
  buildCounterProductPriceList++;
  if (buildCounterProductPriceList < 3) {
    o.endDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.prices = buildUnnamed54();
    o.product = buildProduct();
    o.productId = "foo";
    o.startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
  }
  buildCounterProductPriceList--;
  return o;
}

checkProductPriceList(api.ProductPriceList o) {
  buildCounterProductPriceList++;
  if (buildCounterProductPriceList < 3) {
    unittest.expect(
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    checkUnnamed54(o.prices);
    checkProduct(o.product);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterProductPriceList--;
}

core.int buildCounterProductVisibility = 0;
buildProductVisibility() {
  var o = new api.ProductVisibility();
  buildCounterProductVisibility++;
  if (buildCounterProductVisibility < 3) {
    o.visibleOnlyForServiceProvider = true;
    o.visibleOnlyForWhiteListedCustomers = true;
  }
  buildCounterProductVisibility--;
  return o;
}

checkProductVisibility(api.ProductVisibility o) {
  buildCounterProductVisibility++;
  if (buildCounterProductVisibility < 3) {
    unittest.expect(o.visibleOnlyForServiceProvider, unittest.isTrue);
    unittest.expect(o.visibleOnlyForWhiteListedCustomers, unittest.isTrue);
  }
  buildCounterProductVisibility--;
}

buildUnnamed55() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed56() {
  var o = new core.List<api.ScheduleRestriction>();
  o.add(buildScheduleRestriction());
  o.add(buildScheduleRestriction());
  return o;
}

checkUnnamed56(core.List<api.ScheduleRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScheduleRestriction(o[0]);
  checkScheduleRestriction(o[1]);
}

core.int buildCounterSchedule = 0;
buildSchedule() {
  var o = new api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.daysOfWeek = buildUnnamed55();
    o.frequency = 42;
    o.frequencyType = "foo";
    o.restrictions = buildUnnamed56();
    o.scheduleType = "foo";
  }
  buildCounterSchedule--;
  return o;
}

checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    checkUnnamed55(o.daysOfWeek);
    unittest.expect(o.frequency, unittest.equals(42));
    unittest.expect(o.frequencyType, unittest.equals('foo'));
    checkUnnamed56(o.restrictions);
    unittest.expect(o.scheduleType, unittest.equals('foo'));
  }
  buildCounterSchedule--;
}

buildUnnamed57() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterScheduleRestriction = 0;
buildScheduleRestriction() {
  var o = new api.ScheduleRestriction();
  buildCounterScheduleRestriction++;
  if (buildCounterScheduleRestriction < 3) {
    o.daysOfWeek = buildUnnamed57();
    o.scheduleType = "foo";
  }
  buildCounterScheduleRestriction--;
  return o;
}

checkScheduleRestriction(api.ScheduleRestriction o) {
  buildCounterScheduleRestriction++;
  if (buildCounterScheduleRestriction < 3) {
    checkUnnamed57(o.daysOfWeek);
    unittest.expect(o.scheduleType, unittest.equals('foo'));
  }
  buildCounterScheduleRestriction--;
}

main() {
  unittest.group("obj-schema-Amount", () {
    unittest.test("to-json--from-json", () {
      var o = buildAmount();
      var od = new api.Amount.fromJson(o.toJson());
      checkAmount(od);
    });
  });

  unittest.group("obj-schema-ChangeContext", () {
    unittest.test("to-json--from-json", () {
      var o = buildChangeContext();
      var od = new api.ChangeContext.fromJson(o.toJson());
      checkChangeContext(od);
    });
  });

  unittest.group("obj-schema-PriceList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPriceList();
      var od = new api.PriceList.fromJson(o.toJson());
      checkPriceList(od);
    });
  });

  unittest.group("obj-schema-PriceListCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildPriceListCollection();
      var od = new api.PriceListCollection.fromJson(o.toJson());
      checkPriceListCollection(od);
    });
  });

  unittest.group("obj-schema-PricingPlan", () {
    unittest.test("to-json--from-json", () {
      var o = buildPricingPlan();
      var od = new api.PricingPlan.fromJson(o.toJson());
      checkPricingPlan(od);
    });
  });

  unittest.group("obj-schema-PricingPlanCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildPricingPlanCollection();
      var od = new api.PricingPlanCollection.fromJson(o.toJson());
      checkPricingPlanCollection(od);
    });
  });

  unittest.group("obj-schema-Product", () {
    unittest.test("to-json--from-json", () {
      var o = buildProduct();
      var od = new api.Product.fromJson(o.toJson());
      checkProduct(od);
    });
  });

  unittest.group("obj-schema-ProductAvailability", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductAvailability();
      var od = new api.ProductAvailability.fromJson(o.toJson());
      checkProductAvailability(od);
    });
  });

  unittest.group("obj-schema-ProductCategory", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductCategory();
      var od = new api.ProductCategory.fromJson(o.toJson());
      checkProductCategory(od);
    });
  });

  unittest.group("obj-schema-ProductCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductCollection();
      var od = new api.ProductCollection.fromJson(o.toJson());
      checkProductCollection(od);
    });
  });

  unittest.group("obj-schema-ProductGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductGroup();
      var od = new api.ProductGroup.fromJson(o.toJson());
      checkProductGroup(od);
    });
  });

  unittest.group("obj-schema-ProductImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductImage();
      var od = new api.ProductImage.fromJson(o.toJson());
      checkProductImage(od);
    });
  });

  unittest.group("obj-schema-ProductPrice", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductPrice();
      var od = new api.ProductPrice.fromJson(o.toJson());
      checkProductPrice(od);
    });
  });

  unittest.group("obj-schema-ProductPriceList", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductPriceList();
      var od = new api.ProductPriceList.fromJson(o.toJson());
      checkProductPriceList(od);
    });
  });

  unittest.group("obj-schema-ProductVisibility", () {
    unittest.test("to-json--from-json", () {
      var o = buildProductVisibility();
      var od = new api.ProductVisibility.fromJson(o.toJson());
      checkProductVisibility(od);
    });
  });

  unittest.group("obj-schema-Schedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchedule();
      var od = new api.Schedule.fromJson(o.toJson());
      checkSchedule(od);
    });
  });

  unittest.group("obj-schema-ScheduleRestriction", () {
    unittest.test("to-json--from-json", () {
      var o = buildScheduleRestriction();
      var od = new api.ScheduleRestriction.fromJson(o.toJson());
      checkScheduleRestriction(od);
    });
  });

  unittest.group("resource-ProductApi", () {
    unittest.test("method--createPriceList", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_request = buildPriceList();
      var arg_svcProviderId = "foo";
      var arg_plnId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PriceList.fromJson(json);
        checkPriceList(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPriceList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createPriceList(arg_request, arg_svcProviderId, arg_plnId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPriceList(response);
      })));
    });

    unittest.test("method--createPricingPlan", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_request = buildPricingPlan();
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PricingPlan.fromJson(json);
        checkPricingPlan(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPricingPlan());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createPricingPlan(arg_request, arg_svcProviderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPricingPlan(response);
      })));
    });

    unittest.test("method--createProduct", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_request = buildProduct();
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Product.fromJson(json);
        checkProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createProduct(arg_request, arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--findPriceLists", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_svcProviderId = "foo";
      var arg_plnId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPriceListCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findPriceLists(arg_svcProviderId, arg_plnId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPriceListCollection(response);
      })));
    });

    unittest.test("method--findPricingPlans", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPricingPlanCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findPricingPlans(arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPricingPlanCollection(response);
      })));
    });

    unittest.test("method--findProducts", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findProducts(arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductCollection(response);
      })));
    });

    unittest.test("method--findProductsForCustomer", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProductCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findProductsForCustomer(arg_svcProviderId, arg_custId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProductCollection(response);
      })));
    });

    unittest.test("method--getPriceList", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_svcProviderId = "foo";
      var arg_plnId = "foo";
      var arg_priceLstId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPriceList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPriceList(arg_svcProviderId, arg_plnId, arg_priceLstId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPriceList(response);
      })));
    });

    unittest.test("method--getPricingPlan", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_svcProviderId = "foo";
      var arg_plnId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPricingPlan());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getPricingPlan(arg_svcProviderId, arg_plnId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPricingPlan(response);
      })));
    });

    unittest.test("method--getProduct", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_svcProviderId = "foo";
      var arg_prodId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getProduct(arg_svcProviderId, arg_prodId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });

    unittest.test("method--updatePriceList", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_request = buildPriceList();
      var arg_svcProviderId = "foo";
      var arg_plnId = "foo";
      var arg_priceLstId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PriceList.fromJson(json);
        checkPriceList(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPriceList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatePriceList(
              arg_request, arg_svcProviderId, arg_plnId, arg_priceLstId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPriceList(response);
      })));
    });

    unittest.test("method--updatePricingPlan", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_request = buildPricingPlan();
      var arg_svcProviderId = "foo";
      var arg_plnId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.PricingPlan.fromJson(json);
        checkPricingPlan(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPricingPlan());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updatePricingPlan(arg_request, arg_svcProviderId, arg_plnId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPricingPlan(response);
      })));
    });

    unittest.test("method--updateProduct", () {
      var mock = new HttpServerMock();
      api.ProductApi res = new api.ProductApi(mock);
      var arg_request = buildProduct();
      var arg_svcProviderId = "foo";
      var arg_prodId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Product.fromJson(json);
        checkProduct(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildProduct());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateProduct(arg_request, arg_svcProviderId, arg_prodId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProduct(response);
      })));
    });
  });
}
