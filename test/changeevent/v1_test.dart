library dothatapis.changeEvent.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:dothatapis/changeevent/v1.dart' as api;

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

core.int buildCounterChangeEvent = 0;
buildChangeEvent() {
  var o = new api.ChangeEvent();
  buildCounterChangeEvent++;
  if (buildCounterChangeEvent < 3) {
    o.changeEventId = "foo";
    o.changeTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.changeType = "foo";
    o.customerId = "foo";
    o.initiatorType = "foo";
    o.message = buildMessage();
    o.messageId = "foo";
    o.payload = buildPayload();
    o.serviceProviderId = "foo";
    o.targetId = "foo";
    o.targetType = "foo";
    o.targetVersion = "foo";
  }
  buildCounterChangeEvent--;
  return o;
}

checkChangeEvent(api.ChangeEvent o) {
  buildCounterChangeEvent++;
  if (buildCounterChangeEvent < 3) {
    unittest.expect(o.changeEventId, unittest.equals('foo'));
    unittest.expect(o.changeTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.changeType, unittest.equals('foo'));
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.initiatorType, unittest.equals('foo'));
    checkMessage(o.message);
    unittest.expect(o.messageId, unittest.equals('foo'));
    checkPayload(o.payload);
    unittest.expect(o.serviceProviderId, unittest.equals('foo'));
    unittest.expect(o.targetId, unittest.equals('foo'));
    unittest.expect(o.targetType, unittest.equals('foo'));
    unittest.expect(o.targetVersion, unittest.equals('foo'));
  }
  buildCounterChangeEvent--;
}

buildUnnamed24() {
  var o = new core.List<api.ChangeEvent>();
  o.add(buildChangeEvent());
  o.add(buildChangeEvent());
  return o;
}

checkUnnamed24(core.List<api.ChangeEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChangeEvent(o[0]);
  checkChangeEvent(o[1]);
}

core.int buildCounterCollectionResponseChangeEvent = 0;
buildCollectionResponseChangeEvent() {
  var o = new api.CollectionResponseChangeEvent();
  buildCounterCollectionResponseChangeEvent++;
  if (buildCounterCollectionResponseChangeEvent < 3) {
    o.items = buildUnnamed24();
    o.nextPageToken = "foo";
  }
  buildCounterCollectionResponseChangeEvent--;
  return o;
}

checkCollectionResponseChangeEvent(api.CollectionResponseChangeEvent o) {
  buildCounterCollectionResponseChangeEvent++;
  if (buildCounterCollectionResponseChangeEvent < 3) {
    checkUnnamed24(o.items);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCollectionResponseChangeEvent--;
}

buildUnnamed25() {
  var o = new core.List<api.CustomerAddress>();
  o.add(buildCustomerAddress());
  o.add(buildCustomerAddress());
  return o;
}

checkUnnamed25(core.List<api.CustomerAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomerAddress(o[0]);
  checkCustomerAddress(o[1]);
}

buildUnnamed26() {
  var o = new core.List<api.CustomerContact>();
  o.add(buildCustomerContact());
  o.add(buildCustomerContact());
  return o;
}

checkUnnamed26(core.List<api.CustomerContact> o) {
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
    o.addresses = buildUnnamed25();
    o.businessName = "foo";
    o.changeContext = buildChangeContext();
    o.contacts = buildUnnamed26();
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
    checkUnnamed25(o.addresses);
    unittest.expect(o.businessName, unittest.equals('foo'));
    checkChangeContext(o.changeContext);
    checkUnnamed26(o.contacts);
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

buildUnnamed27() {
  var o = new core.List<api.EmailAddress>();
  o.add(buildEmailAddress());
  o.add(buildEmailAddress());
  return o;
}

checkUnnamed27(core.List<api.EmailAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEmailAddress(o[0]);
  checkEmailAddress(o[1]);
}

buildUnnamed28() {
  var o = new core.List<api.PhoneNumber>();
  o.add(buildPhoneNumber());
  o.add(buildPhoneNumber());
  return o;
}

checkUnnamed28(core.List<api.PhoneNumber> o) {
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
    o.emailAddresses = buildUnnamed27();
    o.label = "foo";
    o.modificationTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.phoneNumbers = buildUnnamed28();
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
    checkUnnamed27(o.emailAddresses);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.modificationTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed28(o.phoneNumbers);
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

core.int buildCounterMessage = 0;
buildMessage() {
  var o = new api.Message();
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    o.content = "foo";
    o.customer = buildCustomer();
    o.customerId = "foo";
    o.direction = "foo";
    o.externalMessageId = "foo";
    o.failureCode = "foo";
    o.failureReason = "foo";
    o.messageId = "foo";
    o.messagingType = "foo";
    o.receivedTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.receiver = "foo";
    o.sender = "foo";
    o.sentTimestamp = core.DateTime.parse("2002-02-27T14:01:02");
    o.status = "foo";
    o.subject = "foo";
  }
  buildCounterMessage--;
  return o;
}

checkMessage(api.Message o) {
  buildCounterMessage++;
  if (buildCounterMessage < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkCustomer(o.customer);
    unittest.expect(o.customerId, unittest.equals('foo'));
    unittest.expect(o.direction, unittest.equals('foo'));
    unittest.expect(o.externalMessageId, unittest.equals('foo'));
    unittest.expect(o.failureCode, unittest.equals('foo'));
    unittest.expect(o.failureReason, unittest.equals('foo'));
    unittest.expect(o.messageId, unittest.equals('foo'));
    unittest.expect(o.messagingType, unittest.equals('foo'));
    unittest.expect(o.receivedTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.receiver, unittest.equals('foo'));
    unittest.expect(o.sender, unittest.equals('foo'));
    unittest.expect(o.sentTimestamp,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.subject, unittest.equals('foo'));
  }
  buildCounterMessage--;
}

core.int buildCounterPayload = 0;
buildPayload() {
  var o = new api.Payload();
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

checkPayload(api.Payload o) {
  buildCounterPayload++;
  if (buildCounterPayload < 3) {
    var casted1 = (o.change) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted1["bool"], unittest.equals(true));
    unittest.expect(casted1["string"], unittest.equals('foo'));
    var casted2 = (o.original) as core.Map;
    unittest.expect(casted2, unittest.hasLength(3));
    unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted2["bool"], unittest.equals(true));
    unittest.expect(casted2["string"], unittest.equals('foo'));
  }
  buildCounterPayload--;
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

  unittest.group("obj-schema-ChangeEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildChangeEvent();
      var od = new api.ChangeEvent.fromJson(o.toJson());
      checkChangeEvent(od);
    });
  });

  unittest.group("obj-schema-CollectionResponseChangeEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildCollectionResponseChangeEvent();
      var od = new api.CollectionResponseChangeEvent.fromJson(o.toJson());
      checkCollectionResponseChangeEvent(od);
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

  unittest.group("obj-schema-Message", () {
    unittest.test("to-json--from-json", () {
      var o = buildMessage();
      var od = new api.Message.fromJson(o.toJson());
      checkMessage(od);
    });
  });

  unittest.group("obj-schema-Payload", () {
    unittest.test("to-json--from-json", () {
      var o = buildPayload();
      var od = new api.Payload.fromJson(o.toJson());
      checkPayload(od);
    });
  });

  unittest.group("obj-schema-PhoneNumber", () {
    unittest.test("to-json--from-json", () {
      var o = buildPhoneNumber();
      var od = new api.PhoneNumber.fromJson(o.toJson());
      checkPhoneNumber(od);
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

  unittest.group("resource-ChangeEventApi", () {
    unittest.test("method--getChangeEvents", () {
      var mock = new HttpServerMock();
      api.ChangeEventApi res = new api.ChangeEventApi(mock);
      var arg_svcProviderId = "foo";
      var arg_startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
      var arg_targetType = "foo";
      var arg_numItems = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 32),
            unittest.equals("changeEvent/v1/serviceProviders/"));
        pathOffset += 32;
        index = path.indexOf("/changes", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_svcProviderId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/changes"));
        pathOffset += 8;

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
        unittest.expect(
            queryMap["targetType"].first, unittest.equals(arg_targetType));
        unittest.expect(core.int.parse(queryMap["numItems"].first),
            unittest.equals(arg_numItems));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCollectionResponseChangeEvent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getChangeEvents(arg_svcProviderId, arg_startDate,
              targetType: arg_targetType,
              numItems: arg_numItems,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCollectionResponseChangeEvent(response);
      })));
    });

    unittest.test("method--getUniversalChangeEvents", () {
      var mock = new HttpServerMock();
      api.ChangeEventApi res = new api.ChangeEventApi(mock);
      var arg_startDate = core.DateTime.parse("2002-02-27T14:01:02Z");
      var arg_targetType = "foo";
      var arg_numItems = 42;
      var arg_pageToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/_ah/api/"));
        pathOffset += 9;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("changes"));
        pathOffset += 7;

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
        unittest.expect(
            queryMap["targetType"].first, unittest.equals(arg_targetType));
        unittest.expect(core.int.parse(queryMap["numItems"].first),
            unittest.equals(arg_numItems));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildCollectionResponseChangeEvent());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getUniversalChangeEvents(arg_startDate,
              targetType: arg_targetType,
              numItems: arg_numItems,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCollectionResponseChangeEvent(response);
      })));
    });
  });
}
