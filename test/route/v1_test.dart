library dothatapis.route.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/route/v1.dart' as api;

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

buildUnnamed7() {
  var o = new core.List<api.CustomerAddress>();
  o.add(buildCustomerAddress());
  o.add(buildCustomerAddress());
  return o;
}

checkUnnamed7(core.List<api.CustomerAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerAddress(o[0]);
  checkCustomerAddress(o[1]);
}

buildUnnamed8() {
  var o = new core.List<api.CustomerContact>();
  o.add(buildCustomerContact());
  o.add(buildCustomerContact());
  return o;
}

checkUnnamed8(core.List<api.CustomerContact> o) {
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
    o.addresses = buildUnnamed7();
    o.businessName = "foo";
    o.changeContext = buildChangeContext();
    o.contacts = buildUnnamed8();
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
    checkUnnamed7(o.addresses);
    unittest.expect(o.businessName, unittest.equals('foo'));
    checkChangeContext(o.changeContext);
    checkUnnamed8(o.contacts);
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

buildUnnamed9() {
  var o = new core.List<api.EmailAddress>();
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

checkUnnamed9(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0]);
  checkEmailAddress(o[1]);
}

buildUnnamed10() {
  var o = new core.List<api.PhoneNumber>();
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

checkUnnamed10(core.List<api.PhoneNumber> o) {
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
    o.emailAddresses = buildUnnamed9();
    o.label = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.phoneNumbers = buildUnnamed10();
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
    checkUnnamed9(o.emailAddresses);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed10(o.phoneNumbers);
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.verificationStatus, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterCustomerContact--;
}

core.int buildCounterDeliveryInstruction = 0;
buildDeliveryInstruction() {
  var o = new api.DeliveryInstruction();
  buildCounterDeliveryInstruction++;
  if (buildCounterDeliveryInstruction < 3) {
    o.notes = "foo";
  }
  buildCounterDeliveryInstruction--;
  return o;
}

checkDeliveryInstruction(api.DeliveryInstruction o) {
  buildCounterDeliveryInstruction++;
  if (buildCounterDeliveryInstruction < 3) {
    unittest.expect(o.notes, unittest.equals('foo'));
  }
  buildCounterDeliveryInstruction--;
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

core.int buildCounterRoute = 0;
buildRoute() {
  var o = new api.Route();
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    o.active = true;
    o.changeContext = buildChangeContext();
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.deleted = true;
    o.deliverySchedule = buildRouteSchedule();
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.routeCode = "foo";
    o.routeId = "foo";
    o.version = "foo";
  }
  buildCounterRoute--;
  return o;
}

checkRoute(api.Route o) {
  buildCounterRoute++;
  if (buildCounterRoute < 3) {
    unittest.expect(o.active, unittest.isTrue);
    checkChangeContext(o.changeContext);
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.deleted, unittest.isTrue);
    checkRouteSchedule(o.deliverySchedule);
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.routeCode, unittest.equals('foo'));
    unittest.expect(o.routeId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterRoute--;
}

core.int buildCounterRouteAddress = 0;
buildRouteAddress() {
  var o = new api.RouteAddress();
  buildCounterRouteAddress++;
  if (buildCounterRouteAddress < 3) {
    o.address = buildCustomerAddress();
    o.addressId = "foo";
    o.creationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.customer = buildCustomer();
    o.customerId = "foo";
    o.deliveryInstruction = buildDeliveryInstruction();
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.route = buildRoute();
    o.routeAddressId = "foo";
    o.routeId = "foo";
    o.routeOrder = 42;
    o.version = "foo";
  }
  buildCounterRouteAddress--;
  return o;
}

checkRouteAddress(api.RouteAddress o) {
  buildCounterRouteAddress++;
  if (buildCounterRouteAddress < 3) {
    checkCustomerAddress(o.address);
    unittest.expect(o.addressId, unittest.equals('foo'));
    unittest.expect(o.creationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkCustomer(o.customer);
    unittest.expect(o.customerId, unittest.equals('foo'));
    checkDeliveryInstruction(o.deliveryInstruction);
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkRoute(o.route);
    unittest.expect(o.routeAddressId, unittest.equals('foo'));
    unittest.expect(o.routeId, unittest.equals('foo'));
    unittest.expect(o.routeOrder, unittest.equals(42));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterRouteAddress--;
}

buildUnnamed11() {
  var o = new core.List<api.RouteAddress>();
  o.add(buildRouteAddress());
  o.add(buildRouteAddress());
  return o;
}

checkUnnamed11(core.List<api.RouteAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRouteAddress(o[0]);
  checkRouteAddress(o[1]);
}

core.int buildCounterRouteAddressList = 0;
buildRouteAddressList() {
  var o = new api.RouteAddressList();
  buildCounterRouteAddressList++;
  if (buildCounterRouteAddressList < 3) {
    o.addresses = buildUnnamed11();
    o.changeContext = buildChangeContext();
    o.route = buildRoute();
    o.routeId = "foo";
  }
  buildCounterRouteAddressList--;
  return o;
}

checkRouteAddressList(api.RouteAddressList o) {
  buildCounterRouteAddressList++;
  if (buildCounterRouteAddressList < 3) {
    checkUnnamed11(o.addresses);
    checkChangeContext(o.changeContext);
    checkRoute(o.route);
    unittest.expect(o.routeId, unittest.equals('foo'));
  }
  buildCounterRouteAddressList--;
}

buildUnnamed12() {
  var o = new core.List<api.Route>();
  o.add(buildRoute());
  o.add(buildRoute());
  return o;
}

checkUnnamed12(core.List<api.Route> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoute(o[0]);
  checkRoute(o[1]);
}

core.int buildCounterRouteCollection = 0;
buildRouteCollection() {
  var o = new api.RouteCollection();
  buildCounterRouteCollection++;
  if (buildCounterRouteCollection < 3) {
    o.items = buildUnnamed12();
  }
  buildCounterRouteCollection--;
  return o;
}

checkRouteCollection(api.RouteCollection o) {
  buildCounterRouteCollection++;
  if (buildCounterRouteCollection < 3) {
    checkUnnamed12(o.items);
  }
  buildCounterRouteCollection--;
}

core.int buildCounterRouteSchedule = 0;
buildRouteSchedule() {
  var o = new api.RouteSchedule();
  buildCounterRouteSchedule++;
  if (buildCounterRouteSchedule < 3) {
    o.policyType = "foo";
    o.scheduleType = "foo";
  }
  buildCounterRouteSchedule--;
  return o;
}

checkRouteSchedule(api.RouteSchedule o) {
  buildCounterRouteSchedule++;
  if (buildCounterRouteSchedule < 3) {
    unittest.expect(o.policyType, unittest.equals('foo'));
    unittest.expect(o.scheduleType, unittest.equals('foo'));
  }
  buildCounterRouteSchedule--;
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

main() {
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

  unittest.group("obj-schema-DeliveryInstruction", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeliveryInstruction();
      var od = new api.DeliveryInstruction.fromJson(o.toJson());
      checkDeliveryInstruction(od);
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

  unittest.group("obj-schema-Route", () {
    unittest.test("to-json--from-json", () {
      var o = buildRoute();
      var od = new api.Route.fromJson(o.toJson());
      checkRoute(od);
    });
  });

  unittest.group("obj-schema-RouteAddress", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouteAddress();
      var od = new api.RouteAddress.fromJson(o.toJson());
      checkRouteAddress(od);
    });
  });

  unittest.group("obj-schema-RouteAddressList", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouteAddressList();
      var od = new api.RouteAddressList.fromJson(o.toJson());
      checkRouteAddressList(od);
    });
  });

  unittest.group("obj-schema-RouteCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouteCollection();
      var od = new api.RouteCollection.fromJson(o.toJson());
      checkRouteCollection(od);
    });
  });

  unittest.group("obj-schema-RouteSchedule", () {
    unittest.test("to-json--from-json", () {
      var o = buildRouteSchedule();
      var od = new api.RouteSchedule.fromJson(o.toJson());
      checkRouteSchedule(od);
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

  unittest.group("resource-RouteApi", () {
    unittest.test("method--createRoute", () {
      var mock = new HttpServerMock();
      api.RouteApi res = new api.RouteApi(mock);
      var arg_request = buildRoute();
      var arg_svcProviderId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Route.fromJson(json);
        checkRoute(obj);

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
        var resp = convert.json.encode(buildRoute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .createRoute(arg_request, arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoute(response);
      })));
    });

    unittest.test("method--findRoutes", () {
      var mock = new HttpServerMock();
      api.RouteApi res = new api.RouteApi(mock);
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
        var resp = convert.json.encode(buildRouteCollection());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .findRoutes(arg_svcProviderId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRouteCollection(response);
      })));
    });

    unittest.test("method--getRoute", () {
      var mock = new HttpServerMock();
      api.RouteApi res = new api.RouteApi(mock);
      var arg_svcProviderId = "foo";
      var arg_rtId = "foo";
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
        var resp = convert.json.encode(buildRoute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getRoute(arg_svcProviderId, arg_rtId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoute(response);
      })));
    });

    unittest.test("method--getRouteAddressList", () {
      var mock = new HttpServerMock();
      api.RouteApi res = new api.RouteApi(mock);
      var arg_svcProviderId = "foo";
      var arg_rtId = "foo";
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
        var resp = convert.json.encode(buildRouteAddressList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getRouteAddressList(arg_svcProviderId, arg_rtId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRouteAddressList(response);
      })));
    });

    unittest.test("method--updateRoute", () {
      var mock = new HttpServerMock();
      api.RouteApi res = new api.RouteApi(mock);
      var arg_request = buildRoute();
      var arg_svcProviderId = "foo";
      var arg_rtId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Route.fromJson(json);
        checkRoute(obj);

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
        var resp = convert.json.encode(buildRoute());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateRoute(arg_request, arg_svcProviderId, arg_rtId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRoute(response);
      })));
    });

    unittest.test("method--updateRouteAddressList", () {
      var mock = new HttpServerMock();
      api.RouteApi res = new api.RouteApi(mock);
      var arg_request = buildRouteAddressList();
      var arg_svcProviderId = "foo";
      var arg_rtId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.RouteAddressList.fromJson(json);
        checkRouteAddressList(obj);

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
        var resp = convert.json.encode(buildRouteAddressList());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .updateRouteAddressList(arg_request, arg_svcProviderId, arg_rtId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRouteAddressList(response);
      })));
    });
  });
}
