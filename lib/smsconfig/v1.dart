// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// API to define SMS Configuration for Service Providers
library smsConfig.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API to define SMS Configuration for Service Providers
class SmsConfigApi {
  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  SmsConfigApi(http.Client client,
      {core.String rootUrl = 'https://dev-dothat-api.appspot.com/_ah/api/',
      core.String servicePath = 'smsConfig/v1/serviceProviders/'})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);

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
    SmsConfig request,
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/config/sms';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SmsConfig.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  async.Future<void> deleteSmsConfig(
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/config/sms';

    await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
      downloadOptions: null,
    );
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
  async.Future<SmsConfig> getSmsConfig(
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/config/sms';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SmsConfig.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    SmsConfig request,
    core.String svcProviderId, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = commons.escapeVariable('$svcProviderId') + '/config/sms';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return SmsConfig.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ParserConfig {
  core.String? parserConfigId;
  core.String? parserName;
  core.String? parserType;
  ParserTypeSpecificConfig? typeSpecificConfig;

  ParserConfig();

  ParserConfig.fromJson(core.Map _json) {
    if (_json.containsKey('parserConfigId')) {
      parserConfigId = _json['parserConfigId'] as core.String;
    }
    if (_json.containsKey('parserName')) {
      parserName = _json['parserName'] as core.String;
    }
    if (_json.containsKey('parserType')) {
      parserType = _json['parserType'] as core.String;
    }
    if (_json.containsKey('typeSpecificConfig')) {
      typeSpecificConfig = ParserTypeSpecificConfig.fromJson(
          _json['typeSpecificConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (parserConfigId != null) 'parserConfigId': parserConfigId!,
        if (parserName != null) 'parserName': parserName!,
        if (parserType != null) 'parserType': parserType!,
        if (typeSpecificConfig != null)
          'typeSpecificConfig': typeSpecificConfig!.toJson(),
      };
}

class ParserRegexConfig {
  core.String? changeType;
  core.List<core.String>? extractExpressions;
  core.String? matchExpression;

  ParserRegexConfig();

  ParserRegexConfig.fromJson(core.Map _json) {
    if (_json.containsKey('changeType')) {
      changeType = _json['changeType'] as core.String;
    }
    if (_json.containsKey('extractExpressions')) {
      extractExpressions = (_json['extractExpressions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('matchExpression')) {
      matchExpression = _json['matchExpression'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (changeType != null) 'changeType': changeType!,
        if (extractExpressions != null)
          'extractExpressions': extractExpressions!,
        if (matchExpression != null) 'matchExpression': matchExpression!,
      };
}

class ParserTypeSpecificConfig {
  ParserRegexConfig? regexConfig;
  ParserUrlConfig? urlConfig;

  ParserTypeSpecificConfig();

  ParserTypeSpecificConfig.fromJson(core.Map _json) {
    if (_json.containsKey('regexConfig')) {
      regexConfig = ParserRegexConfig.fromJson(
          _json['regexConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('urlConfig')) {
      urlConfig = ParserUrlConfig.fromJson(
          _json['urlConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (regexConfig != null) 'regexConfig': regexConfig!.toJson(),
        if (urlConfig != null) 'urlConfig': urlConfig!.toJson(),
      };
}

class ParserUrlConfig {
  core.String? url;

  ParserUrlConfig();

  ParserUrlConfig.fromJson(core.Map _json) {
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

class SmsConfig {
  core.List<ParserConfig>? parsers;
  core.List<SmsReceiverConfig>? receivers;

  SmsConfig();

  SmsConfig.fromJson(core.Map _json) {
    if (_json.containsKey('parsers')) {
      parsers = (_json['parsers'] as core.List)
          .map<ParserConfig>((value) => ParserConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('receivers')) {
      receivers = (_json['receivers'] as core.List)
          .map<SmsReceiverConfig>((value) => SmsReceiverConfig.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (parsers != null)
          'parsers': parsers!.map((value) => value.toJson()).toList(),
        if (receivers != null)
          'receivers': receivers!.map((value) => value.toJson()).toList(),
      };
}

class SmsReceiverConfig {
  core.String? messageExtractor;
  core.String? phoneNumber;
  core.String? uri;

  SmsReceiverConfig();

  SmsReceiverConfig.fromJson(core.Map _json) {
    if (_json.containsKey('messageExtractor')) {
      messageExtractor = _json['messageExtractor'] as core.String;
    }
    if (_json.containsKey('phoneNumber')) {
      phoneNumber = _json['phoneNumber'] as core.String;
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (messageExtractor != null) 'messageExtractor': messageExtractor!,
        if (phoneNumber != null) 'phoneNumber': phoneNumber!,
        if (uri != null) 'uri': uri!,
      };
}
