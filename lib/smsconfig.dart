// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library dothatapis.smsConfig.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client smsConfig/v1';

/// API to define SMS Configuration for Service Providers
class SmsConfigApi {
  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  SmsConfigApi(http.Client client,
      {core.String rootUrl: "https://dev-dothat-api.appspot.com/_ah/api/",
      core.String servicePath: "smsConfig/v1/serviceProviders/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SmsConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SmsConfig> createSmsConfig(
      SmsConfig request, core.String svcProviderId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') + '/config/sms';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SmsConfig.fromJson(data));
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future deleteSmsConfig(core.String svcProviderId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _downloadOptions = null;

    _url = commons.Escaper.ecapeVariable('$svcProviderId') + '/config/sms';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => null);
  }

  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SmsConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SmsConfig> getSmsConfig(core.String svcProviderId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') + '/config/sms';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SmsConfig.fromJson(data));
  }

  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [svcProviderId] - null
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SmsConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SmsConfig> updateSmsConfig(
      SmsConfig request, core.String svcProviderId,
      {core.String $fields}) {
    var _url = null;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (svcProviderId == null) {
      throw new core.ArgumentError("Parameter svcProviderId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = commons.Escaper.ecapeVariable('$svcProviderId') + '/config/sms';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SmsConfig.fromJson(data));
  }
}

class ParserConfig {
  core.String parserConfigId;
  core.String parserName;
  core.String parserType;
  ParserTypeSpecificConfig typeSpecificConfig;

  ParserConfig();

  ParserConfig.fromJson(core.Map _json) {
    if (_json.containsKey("parserConfigId")) {
      parserConfigId = _json["parserConfigId"];
    }
    if (_json.containsKey("parserName")) {
      parserName = _json["parserName"];
    }
    if (_json.containsKey("parserType")) {
      parserType = _json["parserType"];
    }
    if (_json.containsKey("typeSpecificConfig")) {
      typeSpecificConfig =
          new ParserTypeSpecificConfig.fromJson(_json["typeSpecificConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parserConfigId != null) {
      _json["parserConfigId"] = parserConfigId;
    }
    if (parserName != null) {
      _json["parserName"] = parserName;
    }
    if (parserType != null) {
      _json["parserType"] = parserType;
    }
    if (typeSpecificConfig != null) {
      _json["typeSpecificConfig"] = (typeSpecificConfig).toJson();
    }
    return _json;
  }
}

class ParserRegexConfig {
  core.String changeType;
  core.List<core.String> extractExpressions;
  core.String matchExpression;

  ParserRegexConfig();

  ParserRegexConfig.fromJson(core.Map _json) {
    if (_json.containsKey("changeType")) {
      changeType = _json["changeType"];
    }
    if (_json.containsKey("extractExpressions")) {
      extractExpressions =
          (_json["extractExpressions"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("matchExpression")) {
      matchExpression = _json["matchExpression"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (changeType != null) {
      _json["changeType"] = changeType;
    }
    if (extractExpressions != null) {
      _json["extractExpressions"] = extractExpressions;
    }
    if (matchExpression != null) {
      _json["matchExpression"] = matchExpression;
    }
    return _json;
  }
}

class ParserTypeSpecificConfig {
  ParserRegexConfig regexConfig;
  ParserUrlConfig urlConfig;

  ParserTypeSpecificConfig();

  ParserTypeSpecificConfig.fromJson(core.Map _json) {
    if (_json.containsKey("regexConfig")) {
      regexConfig = new ParserRegexConfig.fromJson(_json["regexConfig"]);
    }
    if (_json.containsKey("urlConfig")) {
      urlConfig = new ParserUrlConfig.fromJson(_json["urlConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (regexConfig != null) {
      _json["regexConfig"] = (regexConfig).toJson();
    }
    if (urlConfig != null) {
      _json["urlConfig"] = (urlConfig).toJson();
    }
    return _json;
  }
}

class ParserUrlConfig {
  core.String url;

  ParserUrlConfig();

  ParserUrlConfig.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

class SmsConfig {
  core.List<ParserConfig> parsers;
  core.List<SmsReceiverConfig> receivers;

  SmsConfig();

  SmsConfig.fromJson(core.Map _json) {
    if (_json.containsKey("parsers")) {
      parsers = (_json["parsers"] as core.List)
          .map<ParserConfig>((value) => new ParserConfig.fromJson(value))
          .toList();
    }
    if (_json.containsKey("receivers")) {
      receivers = (_json["receivers"] as core.List)
          .map<SmsReceiverConfig>(
              (value) => new SmsReceiverConfig.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parsers != null) {
      _json["parsers"] = parsers.map((value) => (value).toJson()).toList();
    }
    if (receivers != null) {
      _json["receivers"] = receivers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class SmsReceiverConfig {
  core.String messageExtractor;
  core.String phoneNumber;
  core.String uri;

  SmsReceiverConfig();

  SmsReceiverConfig.fromJson(core.Map _json) {
    if (_json.containsKey("messageExtractor")) {
      messageExtractor = _json["messageExtractor"];
    }
    if (_json.containsKey("phoneNumber")) {
      phoneNumber = _json["phoneNumber"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (messageExtractor != null) {
      _json["messageExtractor"] = messageExtractor;
    }
    if (phoneNumber != null) {
      _json["phoneNumber"] = phoneNumber;
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}
