library dothatapis.invoice.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/invoice/v1.dart' as api;

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

core.int buildCounterBillingAddress = 0;
buildBillingAddress() {
  var o = new api.BillingAddress();
  buildCounterBillingAddress++;
  if (buildCounterBillingAddress < 3) {
    o.addressLine1 = "foo";
    o.addressLine2 = "foo";
    o.addressLine3 = "foo";
    o.city = "foo";
    o.state = "foo";
  }
  buildCounterBillingAddress--;
  return o;
}

checkBillingAddress(api.BillingAddress o) {
  buildCounterBillingAddress++;
  if (buildCounterBillingAddress < 3) {
    unittest.expect(o.addressLine1, unittest.equals('foo'));
    unittest.expect(o.addressLine2, unittest.equals('foo'));
    unittest.expect(o.addressLine3, unittest.equals('foo'));
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterBillingAddress--;
}

core.int buildCounterBillingPeriod = 0;
buildBillingPeriod() {
  var o = new api.BillingPeriod();
  buildCounterBillingPeriod++;
  if (buildCounterBillingPeriod < 3) {
    o.endDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.label = "foo";
    o.startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
  }
  buildCounterBillingPeriod--;
  return o;
}

checkBillingPeriod(api.BillingPeriod o) {
  buildCounterBillingPeriod++;
  if (buildCounterBillingPeriod < 3) {
    unittest.expect(
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterBillingPeriod--;
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

buildUnnamed34() {
  var o = new core.List<api.CustomerAddress>();
  o.add(buildCustomerAddress());
  o.add(buildCustomerAddress());
  return o;
}

checkUnnamed34(core.List<api.CustomerAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerAddress(o[0]);
  checkCustomerAddress(o[1]);
}

buildUnnamed35() {
  var o = new core.List<api.CustomerContact>();
  o.add(buildCustomerContact());
  o.add(buildCustomerContact());
  return o;
}

checkUnnamed35(core.List<api.CustomerContact> o) {
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
    o.addresses = buildUnnamed34();
    o.businessName = "foo";
    o.changeContext = buildChangeContext();
    o.contacts = buildUnnamed35();
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
    checkUnnamed34(o.addresses);
    unittest.expect(o.businessName, unittest.equals('foo'));
    checkChangeContext(o.changeContext);
    checkUnnamed35(o.contacts);
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

buildUnnamed36() {
  var o = new core.List<api.EmailAddress>();
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

checkUnnamed36(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0]);
  checkEmailAddress(o[1]);
}

buildUnnamed37() {
  var o = new core.List<api.PhoneNumber>();
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

checkUnnamed37(core.List<api.PhoneNumber> o) {
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
    o.emailAddresses = buildUnnamed36();
    o.label = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.phoneNumbers = buildUnnamed37();
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
    checkUnnamed36(o.emailAddresses);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed37(o.phoneNumbers);
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.verificationStatus, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterCustomerContact--;
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

buildUnnamed38() {
  var o = new core.List<api.InvoiceAttribute>();
  o.add(buildInvoiceAttribute());
  o.add(buildInvoiceAttribute());
  return o;
}

checkUnnamed38(core.List<api.InvoiceAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceAttribute(o[0]);
  checkInvoiceAttribute(o[1]);
}

buildUnnamed39() {
  var o = new core.List<api.InvoiceLineItem>();
  o.add(buildInvoiceLineItem());
  o.add(buildInvoiceLineItem());
  return o;
}

checkUnnamed39(core.List<api.InvoiceLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceLineItem(o[0]);
  checkInvoiceLineItem(o[1]);
}

core.int buildCounterInvoice = 0;
buildInvoice() {
  var o = new api.Invoice();
  buildCounterInvoice++;
  if (buildCounterInvoice < 3) {
    o.accountName = "foo";
    o.attributes = buildUnnamed38();
    o.billingAddress = buildBillingAddress();
    o.billingPeriod = buildBillingPeriod();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.customer = buildCustomer();
    o.customerId = "foo";
    o.dueAmount = buildAmount();
    o.dueDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.invoiceDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.invoiceId = "foo";
    o.invoiceNumber = "foo";
    o.invoiceState = "foo";
    o.invoiceStatus = "foo";
    o.invoiceType = "foo";
    o.lineItems = buildUnnamed39();
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.paymentStatus = "foo";
    o.shortUrlCode = "foo";
    o.version = "foo";
  }
  buildCounterInvoice--;
  return o;
}

checkInvoice(api.Invoice o) {
  buildCounterInvoice++;
  if (buildCounterInvoice < 3) {
    unittest.expect(o.accountName, unittest.equals('foo'));
    checkUnnamed38(o.attributes);
    checkBillingAddress(o.billingAddress);
    checkBillingPeriod(o.billingPeriod);
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkCustomer(o.customer);
    unittest.expect(o.customerId, unittest.equals('foo'));
    checkAmount(o.dueAmount);
    unittest.expect(
        o.dueDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.invoiceDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.invoiceId, unittest.equals('foo'));
    unittest.expect(o.invoiceNumber, unittest.equals('foo'));
    unittest.expect(o.invoiceState, unittest.equals('foo'));
    unittest.expect(o.invoiceStatus, unittest.equals('foo'));
    unittest.expect(o.invoiceType, unittest.equals('foo'));
    checkUnnamed39(o.lineItems);
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.paymentStatus, unittest.equals('foo'));
    unittest.expect(o.shortUrlCode, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterInvoice--;
}

core.int buildCounterInvoiceAttribute = 0;
buildInvoiceAttribute() {
  var o = new api.InvoiceAttribute();
  buildCounterInvoiceAttribute++;
  if (buildCounterInvoiceAttribute < 3) {
    o.attributeType = "foo";
    o.attributeValue = "foo";
    o.entityCode = "foo";
    o.entityId = "foo";
    o.systemName = "foo";
  }
  buildCounterInvoiceAttribute--;
  return o;
}

checkInvoiceAttribute(api.InvoiceAttribute o) {
  buildCounterInvoiceAttribute++;
  if (buildCounterInvoiceAttribute < 3) {
    unittest.expect(o.attributeType, unittest.equals('foo'));
    unittest.expect(o.attributeValue, unittest.equals('foo'));
    unittest.expect(o.entityCode, unittest.equals('foo'));
    unittest.expect(o.entityId, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
  }
  buildCounterInvoiceAttribute--;
}

buildUnnamed40() {
  var o = new core.List<api.Invoice>();
  o.add(buildInvoice());
  o.add(buildInvoice());
  return o;
}

checkUnnamed40(core.List<api.Invoice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoice(o[0]);
  checkInvoice(o[1]);
}

core.int buildCounterInvoiceCollection = 0;
buildInvoiceCollection() {
  var o = new api.InvoiceCollection();
  buildCounterInvoiceCollection++;
  if (buildCounterInvoiceCollection < 3) {
    o.items = buildUnnamed40();
  }
  buildCounterInvoiceCollection--;
  return o;
}

checkInvoiceCollection(api.InvoiceCollection o) {
  buildCounterInvoiceCollection++;
  if (buildCounterInvoiceCollection < 3) {
    checkUnnamed40(o.items);
  }
  buildCounterInvoiceCollection--;
}

buildUnnamed41() {
  var o = new core.List<api.InvoiceAttribute>();
  o.add(buildInvoiceAttribute());
  o.add(buildInvoiceAttribute());
  return o;
}

checkUnnamed41(core.List<api.InvoiceAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInvoiceAttribute(o[0]);
  checkInvoiceAttribute(o[1]);
}

core.int buildCounterInvoiceLineItem = 0;
buildInvoiceLineItem() {
  var o = new api.InvoiceLineItem();
  buildCounterInvoiceLineItem++;
  if (buildCounterInvoiceLineItem < 3) {
    o.amount = 42.0;
    o.attributes = buildUnnamed41();
    o.category = "foo";
    o.countLabel = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.currency = "foo";
    o.description = "foo";
    o.itemDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.itemOrder = 42;
    o.lineItemId = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.pricing = buildPricing();
    o.quantity = 42.0;
    o.quantityCount = 42.0;
    o.quantityUnit = "foo";
    o.title = "foo";
    o.version = "foo";
  }
  buildCounterInvoiceLineItem--;
  return o;
}

checkInvoiceLineItem(api.InvoiceLineItem o) {
  buildCounterInvoiceLineItem++;
  if (buildCounterInvoiceLineItem < 3) {
    unittest.expect(o.amount, unittest.equals(42.0));
    checkUnnamed41(o.attributes);
    unittest.expect(o.category, unittest.equals('foo'));
    unittest.expect(o.countLabel, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.itemDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.itemOrder, unittest.equals(42));
    unittest.expect(o.lineItemId, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkPricing(o.pricing);
    unittest.expect(o.quantity, unittest.equals(42.0));
    unittest.expect(o.quantityCount, unittest.equals(42.0));
    unittest.expect(o.quantityUnit, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterInvoiceLineItem--;
}

core.int buildCounterInvoiceTemplate = 0;
buildInvoiceTemplate() {
  var o = new api.InvoiceTemplate();
  buildCounterInvoiceTemplate++;
  if (buildCounterInvoiceTemplate < 3) {
    o.content = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.default_ = true;
    o.effectiveFromDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.effectiveUntilDate = core.DateTime.parse("2002-02-27T14:01:02Z");
    o.engineName = "foo";
    o.invoiceTemplateId = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.version = "foo";
    o.versionName = "foo";
  }
  buildCounterInvoiceTemplate--;
  return o;
}

checkInvoiceTemplate(api.InvoiceTemplate o) {
  buildCounterInvoiceTemplate++;
  if (buildCounterInvoiceTemplate < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.default_, unittest.isTrue);
    unittest.expect(o.effectiveFromDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.effectiveUntilDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.engineName, unittest.equals('foo'));
    unittest.expect(o.invoiceTemplateId, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterInvoiceTemplate--;
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

core.int buildCounterPricing = 0;
buildPricing() {
  var o = new api.Pricing();
  buildCounterPricing++;
  if (buildCounterPricing < 3) {
    o.currency = "foo";
    o.price = 42.0;
    o.pricingQuantity = 42.0;
    o.pricingUnit = "foo";
  }
  buildCounterPricing--;
  return o;
}

checkPricing(api.Pricing o) {
  buildCounterPricing++;
  if (buildCounterPricing < 3) {
    unittest.expect(o.currency, unittest.equals('foo'));
    unittest.expect(o.price, unittest.equals(42.0));
    unittest.expect(o.pricingQuantity, unittest.equals(42.0));
    unittest.expect(o.pricingUnit, unittest.equals('foo'));
  }
  buildCounterPricing--;
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

buildUnnamed42() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-Amount", () {
    unittest.test("to-json--from-json", () {
      var o = buildAmount();
      var od = new api.Amount.fromJson(o.toJson());
      checkAmount(od);
    });
  });

  unittest.group("obj-schema-BillingAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingAddress();
      var od = new api.BillingAddress.fromJson(o.toJson());
      checkBillingAddress(od);
    });
  });

  unittest.group("obj-schema-BillingPeriod", () {
    unittest.test("to-json--from-json", () {
      var o = buildBillingPeriod();
      var od = new api.BillingPeriod.fromJson(o.toJson());
      checkBillingPeriod(od);
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

  unittest.group("obj-schema-EmailAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmailAddress();
      var od = new api.EmailAddress.fromJson(o.toJson());
      checkEmailAddress(od);
    });
  });

  unittest.group("obj-schema-Invoice", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvoice();
      var od = new api.Invoice.fromJson(o.toJson());
      checkInvoice(od);
    });
  });

  unittest.group("obj-schema-InvoiceAttribute", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvoiceAttribute();
      var od = new api.InvoiceAttribute.fromJson(o.toJson());
      checkInvoiceAttribute(od);
    });
  });

  unittest.group("obj-schema-InvoiceCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvoiceCollection();
      var od = new api.InvoiceCollection.fromJson(o.toJson());
      checkInvoiceCollection(od);
    });
  });

  unittest.group("obj-schema-InvoiceLineItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvoiceLineItem();
      var od = new api.InvoiceLineItem.fromJson(o.toJson());
      checkInvoiceLineItem(od);
    });
  });

  unittest.group("obj-schema-InvoiceTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildInvoiceTemplate();
      var od = new api.InvoiceTemplate.fromJson(o.toJson());
      checkInvoiceTemplate(od);
    });
  });

  unittest.group("obj-schema-PhoneNumber", () {
    unittest.test("to-json--from-json", () {
      var o = buildPhoneNumber();
      var od = new api.PhoneNumber.fromJson(o.toJson());
      checkPhoneNumber(od);
    });
  });

  unittest.group("obj-schema-Pricing", () {
    unittest.test("to-json--from-json", () {
      var o = buildPricing();
      var od = new api.Pricing.fromJson(o.toJson());
      checkPricing(od);
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

  unittest.group("resource-InvoiceApi", () {
    unittest.test("method--createInvoice", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
      var arg_request = buildInvoice();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Invoice.fromJson(json);
        checkInvoice(obj);

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
        var resp = convert.json.encode(buildInvoice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createInvoice(arg_request, arg_svcProviderId, arg_custId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInvoice(response);
      })));
    });

    unittest.test("method--createInvoiceTemplate", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
      var arg_request = buildInvoiceTemplate();
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InvoiceTemplate.fromJson(json);
        checkInvoiceTemplate(obj);

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
        var resp = convert.json.encode(buildInvoiceTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createInvoiceTemplate(arg_request, arg_svcProviderId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInvoiceTemplate(response);
      })));
    });

    unittest.test("method--deleteInvoice", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_invId = "foo";
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
          .deleteInvoice(arg_svcProviderId, arg_custId, arg_invId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test("method--findAllInvoices", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
      var arg_svcProviderId = "foo";
      var arg_minEndDate = core.DateTime.parse("2002-02-27T14:01:02Z");
      var arg_maxEndDate = core.DateTime.parse("2002-02-27T14:01:02Z");
      var arg_filterType = "foo";
      var arg_filterValue = buildUnnamed42();
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
        unittest.expect(
            queryMap["filterType"].first, unittest.equals(arg_filterType));
        unittest.expect(
            queryMap["filterValue"], unittest.equals(arg_filterValue));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInvoiceCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findAllInvoices(arg_svcProviderId, arg_minEndDate, arg_maxEndDate,
              filterType: arg_filterType,
              filterValue: arg_filterValue,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInvoiceCollection(response);
      })));
    });

    unittest.test("method--findCurrentInvoice", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInvoice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findCurrentInvoice(
              arg_svcProviderId, arg_custId, arg_startDate, arg_endDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInvoice(response);
      })));
    });

    unittest.test("method--findInvoice", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
      var arg_svcProviderId = "foo";
      var arg_shortUrlCode = "foo";
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
        var resp = convert.json.encode(buildInvoice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findInvoice(arg_svcProviderId, arg_shortUrlCode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInvoice(response);
      })));
    });

    unittest.test("method--findInvoiceTemplate", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
      var arg_svcProviderId = "foo";
      var arg_templateName = "foo";
      var arg_templateVerName = "foo";
      var arg_invoiceDate = core.DateTime.parse("2002-02-27T14:01:02Z");
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
        unittest.expect(
            queryMap["templateName"].first, unittest.equals(arg_templateName));
        unittest.expect(queryMap["templateVerName"].first,
            unittest.equals(arg_templateVerName));
        unittest.expect(core.DateTime.parse(queryMap["invoiceDate"].first),
            unittest.equals(arg_invoiceDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildInvoiceTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findInvoiceTemplate(arg_svcProviderId,
              templateName: arg_templateName,
              templateVerName: arg_templateVerName,
              invoiceDate: arg_invoiceDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInvoiceTemplate(response);
      })));
    });

    unittest.test("method--getInvoice", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_invId = "foo";
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
        var resp = convert.json.encode(buildInvoice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getInvoice(arg_svcProviderId, arg_custId, arg_invId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInvoice(response);
      })));
    });

    unittest.test("method--getInvoiceTemplate", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
      var arg_svcProviderId = "foo";
      var arg_templateId = "foo";
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
        var resp = convert.json.encode(buildInvoiceTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getInvoiceTemplate(arg_svcProviderId, arg_templateId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInvoiceTemplate(response);
      })));
    });

    unittest.test("method--updateInvoice", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
      var arg_request = buildInvoice();
      var arg_svcProviderId = "foo";
      var arg_custId = "foo";
      var arg_invId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Invoice.fromJson(json);
        checkInvoice(obj);

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
        var resp = convert.json.encode(buildInvoice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateInvoice(arg_request, arg_svcProviderId, arg_custId, arg_invId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInvoice(response);
      })));
    });

    unittest.test("method--updateInvoiceTemplate", () {
      var mock = new HttpServerMock();
      api.InvoiceApi res = new api.InvoiceApi(mock);
      var arg_request = buildInvoiceTemplate();
      var arg_svcProviderId = "foo";
      var arg_templateId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.InvoiceTemplate.fromJson(json);
        checkInvoiceTemplate(obj);

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
        var resp = convert.json.encode(buildInvoiceTemplate());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateInvoiceTemplate(arg_request, arg_svcProviderId, arg_templateId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInvoiceTemplate(response);
      })));
    });
  });
}
