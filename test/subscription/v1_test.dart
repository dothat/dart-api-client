library dothatapis.subscription.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/subscription/v1.dart' as api;

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

buildUnnamed84() {
  var o = new core.List<api.CustomerAddress>();
  o.add(buildCustomerAddress());
  o.add(buildCustomerAddress());
  return o;
}

checkUnnamed84(core.List<api.CustomerAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerAddress(o[0]);
  checkCustomerAddress(o[1]);
}

buildUnnamed85() {
  var o = new core.List<api.CustomerContact>();
  o.add(buildCustomerContact());
  o.add(buildCustomerContact());
  return o;
}

checkUnnamed85(core.List<api.CustomerContact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerContact(o[0]);
  checkCustomerContact(o[1]);
}

core.int buildCounterCustomer = 0;
buildCustomer() {
  var o = new api.Customer();
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    o.active = true;
    o.addresses = buildUnnamed84();
    o.businessName = "foo";
    o.changeContext = buildChangeContext();
    o.contacts = buildUnnamed85();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.customerId = "foo";
    o.deleted = true;
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.version = "foo";
  }
  buildCounterCustomer--;
  return o;
}

checkCustomer(api.Customer o) {
  buildCounterCustomer++;
  if (buildCounterCustomer < 3) {
    unittest.expect(o.active, unittest.isTrue);
    checkUnnamed84(o.addresses);
    unittest.expect(o.businessName, unittest.equals('foo'));
    checkChangeContext(o.changeContext);
    checkUnnamed85(o.contacts);
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterCustomer--;
}

core.int buildCounterCustomerAddress = 0;
buildCustomerAddress() {
  var o = new api.CustomerAddress();
  buildCounterCustomerAddress++;
  if (buildCounterCustomerAddress < 3) {
    o.active = true;
    o.addressId = "foo";
    o.addressLine1 = "foo";
    o.addressLine2 = "foo";
    o.addressLine3 = "foo";
    o.addressType = "foo";
    o.area = "foo";
    o.block = "foo";
    o.building = "foo";
    o.businessName = "foo";
    o.city = "foo";
    o.country = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.floor = "foo";
    o.label = "foo";
    o.locality = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.postalCode = "foo";
    o.primary = true;
    o.serviceArea = buildServiceArea();
    o.serviceAreaId = "foo";
    o.servicedAddress = buildServicedAddress();
    o.servicedAddressId = "foo";
    o.state = "foo";
    o.stateCode = "foo";
    o.subLocality = "foo";
    o.unitNumber = "foo";
    o.verificationStatus = "foo";
    o.version = "foo";
  }
  buildCounterCustomerAddress--;
  return o;
}

checkCustomerAddress(api.CustomerAddress o) {
  buildCounterCustomerAddress++;
  if (buildCounterCustomerAddress < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.addressId, unittest.equals('foo'));
    unittest.expect(o.addressLine1, unittest.equals('foo'));
    unittest.expect(o.addressLine2, unittest.equals('foo'));
    unittest.expect(o.addressLine3, unittest.equals('foo'));
    unittest.expect(o.addressType, unittest.equals('foo'));
    unittest.expect(o.area, unittest.equals('foo'));
    unittest.expect(o.block, unittest.equals('foo'));
    unittest.expect(o.building, unittest.equals('foo'));
    unittest.expect(o.businessName, unittest.equals('foo'));
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.floor, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.locality, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    checkServiceArea(o.serviceArea);
    unittest.expect(o.serviceAreaId, unittest.equals('foo'));
    checkServicedAddress(o.servicedAddress);
    unittest.expect(o.servicedAddressId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateCode, unittest.equals('foo'));
    unittest.expect(o.subLocality, unittest.equals('foo'));
    unittest.expect(o.unitNumber, unittest.equals('foo'));
    unittest.expect(o.verificationStatus, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterCustomerAddress--;
}

buildUnnamed86() {
  var o = new core.List<api.EmailAddress>();
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

checkUnnamed86(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0]);
  checkEmailAddress(o[1]);
}

buildUnnamed87() {
  var o = new core.List<api.PhoneNumber>();
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

checkUnnamed87(core.List<api.PhoneNumber> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPhoneNumber(o[0]);
  checkPhoneNumber(o[1]);
}

core.int buildCounterCustomerContact = 0;
buildCustomerContact() {
  var o = new api.CustomerContact();
  buildCounterCustomerContact++;
  if (buildCounterCustomerContact < 3) {
    o.active = true;
    o.contactId = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.emailAddresses = buildUnnamed86();
    o.label = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.phoneNumbers = buildUnnamed87();
    o.primary = true;
    o.verificationStatus = "foo";
    o.version = "foo";
  }
  buildCounterCustomerContact--;
  return o;
}

checkCustomerContact(api.CustomerContact o) {
  buildCounterCustomerContact++;
  if (buildCounterCustomerContact < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.contactId, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    checkUnnamed86(o.emailAddresses);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed87(o.phoneNumbers);
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.verificationStatus, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterCustomerContact--;
}

core.int buildCounterDeliveryPreference = 0;
buildDeliveryPreference() {
  var o = new api.DeliveryPreference();
  buildCounterDeliveryPreference++;
  if (buildCounterDeliveryPreference < 3) {
    o.address = buildCustomerAddress();
    o.customerAddressId = "foo";
  }
  buildCounterDeliveryPreference--;
  return o;
}

checkDeliveryPreference(api.DeliveryPreference o) {
  buildCounterDeliveryPreference++;
  if (buildCounterDeliveryPreference < 3) {
    checkCustomerAddress(o.address);
    unittest.expect(o.customerAddressId, unittest.equals('foo'));
  }
  buildCounterDeliveryPreference--;
}

core.int buildCounterEmailAddress = 0;
buildEmailAddress() {
  var o = new api.EmailAddress();
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    o.active = true;
    o.address = "foo";
    o.deleted = true;
    o.label = "foo";
    o.primary = true;
    o.verificationStatus = "foo";
  }
  buildCounterEmailAddress--;
  return o;
}

checkEmailAddress(api.EmailAddress o) {
  buildCounterEmailAddress++;
  if (buildCounterEmailAddress < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.verificationStatus, unittest.equals('foo'));
  }
  buildCounterEmailAddress--;
}

core.int buildCounterPhoneNumber = 0;
buildPhoneNumber() {
  var o = new api.PhoneNumber();
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    o.active = true;
    o.deleted = true;
    o.label = "foo";
    o.number = "foo";
    o.primary = true;
    o.verificationStatus = "foo";
  }
  buildCounterPhoneNumber--;
  return o;
}

checkPhoneNumber(api.PhoneNumber o) {
  buildCounterPhoneNumber++;
  if (buildCounterPhoneNumber < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.verificationStatus, unittest.equals('foo'));
  }
  buildCounterPhoneNumber--;
}

buildUnnamed88() {
  var o = new core.List<api.ProductImage>();
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

checkUnnamed88(core.List<api.ProductImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductImage(o[0]);
  checkProductImage(o[1]);
}

buildUnnamed89() {
  var o = new core.List<api.ProductPriceList>();
  o.add(buildProductPriceList());
  o.add(buildProductPriceList());
  return o;
}

checkUnnamed89(core.List<api.ProductPriceList> o) {
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
    o.images = buildUnnamed88();
    o.measurementQuantity = 42.0;
    o.measurementUnit = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.priceLists = buildUnnamed89();
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
    checkUnnamed88(o.images);
    unittest.expect(o.measurementQuantity, unittest.equals(42.0));
    unittest.expect(o.measurementUnit, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed89(o.priceLists);
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

buildUnnamed90() {
  var o = new core.List<api.ProductImage>();
  o.add(buildProductImage());
  o.add(buildProductImage());
  return o;
}

checkUnnamed90(core.List<api.ProductImage> o) {
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
    o.images = buildUnnamed90();
  }
  buildCounterProductGroup--;
  return o;
}

checkProductGroup(api.ProductGroup o) {
  buildCounterProductGroup++;
  if (buildCounterProductGroup < 3) {
    unittest.expect(o.groupDescription, unittest.equals('foo'));
    unittest.expect(o.groupName, unittest.equals('foo'));
    checkUnnamed90(o.images);
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

buildUnnamed91() {
  var o = new core.List<api.ProductPrice>();
  o.add(buildProductPrice());
  o.add(buildProductPrice());
  return o;
}

checkUnnamed91(core.List<api.ProductPrice> o) {
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
    o.prices = buildUnnamed91();
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
    checkUnnamed91(o.prices);
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

buildUnnamed92() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed93() {
  var o = new core.List<api.ScheduleRestriction>();
  o.add(buildScheduleRestriction());
  o.add(buildScheduleRestriction());
  return o;
}

checkUnnamed93(core.List<api.ScheduleRestriction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScheduleRestriction(o[0]);
  checkScheduleRestriction(o[1]);
}

core.int buildCounterSchedule = 0;
buildSchedule() {
  var o = new api.Schedule();
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    o.daysOfWeek = buildUnnamed92();
    o.frequency = 42;
    o.frequencyType = "foo";
    o.restrictions = buildUnnamed93();
    o.scheduleType = "foo";
  }
  buildCounterSchedule--;
  return o;
}

checkSchedule(api.Schedule o) {
  buildCounterSchedule++;
  if (buildCounterSchedule < 3) {
    checkUnnamed92(o.daysOfWeek);
    unittest.expect(o.frequency, unittest.equals(42));
    unittest.expect(o.frequencyType, unittest.equals('foo'));
    checkUnnamed93(o.restrictions);
    unittest.expect(o.scheduleType, unittest.equals('foo'));
  }
  buildCounterSchedule--;
}

buildUnnamed94() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed94(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterScheduleRestriction = 0;
buildScheduleRestriction() {
  var o = new api.ScheduleRestriction();
  buildCounterScheduleRestriction++;
  if (buildCounterScheduleRestriction < 3) {
    o.daysOfWeek = buildUnnamed94();
    o.scheduleType = "foo";
  }
  buildCounterScheduleRestriction--;
  return o;
}

checkScheduleRestriction(api.ScheduleRestriction o) {
  buildCounterScheduleRestriction++;
  if (buildCounterScheduleRestriction < 3) {
    checkUnnamed94(o.daysOfWeek);
    unittest.expect(o.scheduleType, unittest.equals('foo'));
  }
  buildCounterScheduleRestriction--;
}

core.int buildCounterServiceArea = 0;
buildServiceArea() {
  var o = new api.ServiceArea();
  buildCounterServiceArea++;
  if (buildCounterServiceArea < 3) {
    o.addressLine1 = "foo";
    o.addressLine2 = "foo";
    o.addressLine3 = "foo";
    o.changeContext = buildChangeContext();
    o.city = "foo";
    o.country = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.fullName = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.parentServiceAreaId = "foo";
    o.parentTreeId = "foo";
    o.postalCode = "foo";
    o.serviceAreaId = "foo";
    o.serviceProviderId = "foo";
    o.state = "foo";
    o.stateCode = "foo";
    o.universalServiceAreaId = "foo";
    o.version = "foo";
  }
  buildCounterServiceArea--;
  return o;
}

checkServiceArea(api.ServiceArea o) {
  buildCounterServiceArea++;
  if (buildCounterServiceArea < 3) {
    unittest.expect(o.addressLine1, unittest.equals('foo'));
    unittest.expect(o.addressLine2, unittest.equals('foo'));
    unittest.expect(o.addressLine3, unittest.equals('foo'));
    checkChangeContext(o.changeContext);
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.fullName, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentServiceAreaId, unittest.equals('foo'));
    unittest.expect(o.parentTreeId, unittest.equals('foo'));
    unittest.expect(o.postalCode, unittest.equals('foo'));
    unittest.expect(o.serviceAreaId, unittest.equals('foo'));
    unittest.expect(o.serviceProviderId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.stateCode, unittest.equals('foo'));
    unittest.expect(o.universalServiceAreaId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterServiceArea--;
}

core.int buildCounterServicedAddress = 0;
buildServicedAddress() {
  var o = new api.ServicedAddress();
  buildCounterServicedAddress++;
  if (buildCounterServicedAddress < 3) {
    o.businessName = "foo";
    o.floor = "foo";
    o.houseNumber = "foo";
    o.serviceArea = buildServiceArea();
    o.servicedAddressId = "foo";
  }
  buildCounterServicedAddress--;
  return o;
}

checkServicedAddress(api.ServicedAddress o) {
  buildCounterServicedAddress++;
  if (buildCounterServicedAddress < 3) {
    unittest.expect(o.businessName, unittest.equals('foo'));
    unittest.expect(o.floor, unittest.equals('foo'));
    unittest.expect(o.houseNumber, unittest.equals('foo'));
    checkServiceArea(o.serviceArea);
    unittest.expect(o.servicedAddressId, unittest.equals('foo'));
  }
  buildCounterServicedAddress--;
}

buildUnnamed95() {
  var o = new core.List<api.SubscriptionItem>();
  o.add(buildSubscriptionItem());
  o.add(buildSubscriptionItem());
  return o;
}

checkUnnamed95(core.List<api.SubscriptionItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionItem(o[0]);
  checkSubscriptionItem(o[1]);
}

core.int buildCounterSubscription = 0;
buildSubscription() {
  var o = new api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.changeContext = buildChangeContext();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.customer = buildCustomer();
    o.deleted = true;
    o.endDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.instructionType = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.subscriptionId = "foo";
    o.subscriptionItems = buildUnnamed95();
    o.subscriptionStatus = "foo";
    o.version = "foo";
  }
  buildCounterSubscription--;
  return o;
}

checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    checkChangeContext(o.changeContext);
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkCustomer(o.customer);
    unittest.expect(o.deleted, unittest.isTrue);
    unittest.expect(
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.instructionType, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.subscriptionId, unittest.equals('foo'));
    checkUnnamed95(o.subscriptionItems);
    unittest.expect(o.subscriptionStatus, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterSubscription--;
}

buildUnnamed96() {
  var o = new core.List<api.Subscription>();
  o.add(buildSubscription());
  o.add(buildSubscription());
  return o;
}

checkUnnamed96(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterSubscriptionCollection = 0;
buildSubscriptionCollection() {
  var o = new api.SubscriptionCollection();
  buildCounterSubscriptionCollection++;
  if (buildCounterSubscriptionCollection < 3) {
    o.items = buildUnnamed96();
  }
  buildCounterSubscriptionCollection--;
  return o;
}

checkSubscriptionCollection(api.SubscriptionCollection o) {
  buildCounterSubscriptionCollection++;
  if (buildCounterSubscriptionCollection < 3) {
    checkUnnamed96(o.items);
  }
  buildCounterSubscriptionCollection--;
}

buildUnnamed97() {
  var o = new core.List<api.SubscriptionItemSlot>();
  o.add(buildSubscriptionItemSlot());
  o.add(buildSubscriptionItemSlot());
  return o;
}

checkUnnamed97(core.List<api.SubscriptionItemSlot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionItemSlot(o[0]);
  checkSubscriptionItemSlot(o[1]);
}

core.int buildCounterSubscriptionItem = 0;
buildSubscriptionItem() {
  var o = new api.SubscriptionItem();
  buildCounterSubscriptionItem++;
  if (buildCounterSubscriptionItem < 3) {
    o.deliveryPreference = buildDeliveryPreference();
    o.instructionType = "foo";
    o.product = buildProduct();
    o.productId = "foo";
    o.quantity = 42.0;
    o.schedule = buildSchedule();
    o.slots = buildUnnamed97();
    o.totalSlots = 42;
  }
  buildCounterSubscriptionItem--;
  return o;
}

checkSubscriptionItem(api.SubscriptionItem o) {
  buildCounterSubscriptionItem++;
  if (buildCounterSubscriptionItem < 3) {
    checkDeliveryPreference(o.deliveryPreference);
    unittest.expect(o.instructionType, unittest.equals('foo'));
    checkProduct(o.product);
    unittest.expect(o.productId, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals(42.0));
    checkSchedule(o.schedule);
    checkUnnamed97(o.slots);
    unittest.expect(o.totalSlots, unittest.equals(42));
  }
  buildCounterSubscriptionItem--;
}

core.int buildCounterSubscriptionItemSlot = 0;
buildSubscriptionItemSlot() {
  var o = new api.SubscriptionItemSlot();
  buildCounterSubscriptionItemSlot++;
  if (buildCounterSubscriptionItemSlot < 3) {
    o.quantity = 42.0;
    o.slotNumber = 42;
  }
  buildCounterSubscriptionItemSlot--;
  return o;
}

checkSubscriptionItemSlot(api.SubscriptionItemSlot o) {
  buildCounterSubscriptionItemSlot++;
  if (buildCounterSubscriptionItemSlot < 3) {
    unittest.expect(o.quantity, unittest.equals(42.0));
    unittest.expect(o.slotNumber, unittest.equals(42));
  }
  buildCounterSubscriptionItemSlot--;
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

  unittest.group("obj-schema-Customer", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomer();
      var od = new api.Customer.fromJson(o.toJson());
      checkCustomer(od);
    });
  });

  unittest.group("obj-schema-CustomerAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerAddress();
      var od = new api.CustomerAddress.fromJson(o.toJson());
      checkCustomerAddress(od);
    });
  });

  unittest.group("obj-schema-CustomerContact", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomerContact();
      var od = new api.CustomerContact.fromJson(o.toJson());
      checkCustomerContact(od);
    });
  });

  unittest.group("obj-schema-DeliveryPreference", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeliveryPreference();
      var od = new api.DeliveryPreference.fromJson(o.toJson());
      checkDeliveryPreference(od);
    });
  });

  unittest.group("obj-schema-EmailAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmailAddress();
      var od = new api.EmailAddress.fromJson(o.toJson());
      checkEmailAddress(od);
    });
  });

  unittest.group("obj-schema-PhoneNumber", () {
    unittest.test("to-json--from-json", () {
      var o = buildPhoneNumber();
      var od = new api.PhoneNumber.fromJson(o.toJson());
      checkPhoneNumber(od);
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

  unittest.group("obj-schema-ServiceArea", () {
    unittest.test("to-json--from-json", () {
      var o = buildServiceArea();
      var od = new api.ServiceArea.fromJson(o.toJson());
      checkServiceArea(od);
    });
  });

  unittest.group("obj-schema-ServicedAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildServicedAddress();
      var od = new api.ServicedAddress.fromJson(o.toJson());
      checkServicedAddress(od);
    });
  });

  unittest.group("obj-schema-Subscription", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscription();
      var od = new api.Subscription.fromJson(o.toJson());
      checkSubscription(od);
    });
  });

  unittest.group("obj-schema-SubscriptionCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionCollection();
      var od = new api.SubscriptionCollection.fromJson(o.toJson());
      checkSubscriptionCollection(od);
    });
  });

  unittest.group("obj-schema-SubscriptionItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionItem();
      var od = new api.SubscriptionItem.fromJson(o.toJson());
      checkSubscriptionItem(od);
    });
  });

  unittest.group("obj-schema-SubscriptionItemSlot", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubscriptionItemSlot();
      var od = new api.SubscriptionItemSlot.fromJson(o.toJson());
      checkSubscriptionItemSlot(od);
    });
  });

  unittest.group("resource-SubscriptionApi", () {
    unittest.test("method--createSubscription", () {
      var mock = new HttpServerMock();
      api.SubscriptionApi res = new api.SubscriptionApi(mock);
      var arg_request = buildSubscription();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Subscription.fromJson(json);
        checkSubscription(obj);

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
        var resp = convert.json.encode(buildSubscription());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createSubscription(arg_request, arg_svcProviderId, arg_custId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscription(response);
      })));
    });

    unittest.test("method--deleteSubscription", () {
      var mock = new HttpServerMock();
      api.SubscriptionApi res = new api.SubscriptionApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_subId = "foo";
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
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteSubscription(arg_svcProviderId, arg_custId, arg_subId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--findSubscriptionsForCustomer", () {
      var mock = new HttpServerMock();
      api.SubscriptionApi res = new api.SubscriptionApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
      var arg_endDate = core.DateTime.parse("2002-02-27T14:01:02Z");
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
        unittest.expect(core.DateTime.parse(queryMap["startDate"].first),
            unittest.equals(arg_startDate));
        unittest.expect(core.DateTime.parse(queryMap["endDate"].first),
            unittest.equals(arg_endDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSubscriptionCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findSubscriptionsForCustomer(
              arg_svcProviderId, arg_custId, arg_startDate, arg_endDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscriptionCollection(response);
      })));
    });

    unittest.test("method--findSubscriptionsForServiceProvider", () {
      var mock = new HttpServerMock();
      api.SubscriptionApi res = new api.SubscriptionApi(mock);
      var arg_svcProviderId = "foo";
      var arg_startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
      var arg_endDate = core.DateTime.parse("2002-02-27T14:01:02Z");
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
        unittest.expect(core.DateTime.parse(queryMap["startDate"].first),
            unittest.equals(arg_startDate));
        unittest.expect(core.DateTime.parse(queryMap["endDate"].first),
            unittest.equals(arg_endDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSubscriptionCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findSubscriptionsForServiceProvider(
              arg_svcProviderId, arg_startDate, arg_endDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscriptionCollection(response);
      })));
    });

    unittest.test("method--getSubscription", () {
      var mock = new HttpServerMock();
      api.SubscriptionApi res = new api.SubscriptionApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_subId = "foo";
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
        var resp = convert.json.encode(buildSubscription());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getSubscription(arg_svcProviderId, arg_custId, arg_subId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscription(response);
      })));
    });

    unittest.test("method--lookupSubscription", () {
      var mock = new HttpServerMock();
      api.SubscriptionApi res = new api.SubscriptionApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_subStatus = "foo";
      var arg_startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
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
        unittest.expect(core.DateTime.parse(queryMap["startDate"].first),
            unittest.equals(arg_startDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSubscription());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lookupSubscription(
              arg_svcProviderId, arg_custId, arg_subStatus, arg_startDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscription(response);
      })));
    });

    unittest.test("method--updateSubscription", () {
      var mock = new HttpServerMock();
      api.SubscriptionApi res = new api.SubscriptionApi(mock);
      var arg_request = buildSubscription();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_subId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Subscription.fromJson(json);
        checkSubscription(obj);

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
        var resp = convert.json.encode(buildSubscription());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateSubscription(
              arg_request, arg_svcProviderId, arg_custId, arg_subId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubscription(response);
      })));
    });
  });
}
