//
//  Generated code. Do not modify.
//  source: decimal_to_binary.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ConvertRequest extends $pb.GeneratedMessage {
  factory ConvertRequest({
    $core.int? decimal,
    $core.String? binary,
  }) {
    final $result = create();
    if (decimal != null) {
      $result.decimal = decimal;
    }
    if (binary != null) {
      $result.binary = binary;
    }
    return $result;
  }
  ConvertRequest._() : super();
  factory ConvertRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConvertRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConvertRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'decimal_to_binary'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'decimal', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'binary')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConvertRequest clone() => ConvertRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConvertRequest copyWith(void Function(ConvertRequest) updates) => super.copyWith((message) => updates(message as ConvertRequest)) as ConvertRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertRequest create() => ConvertRequest._();
  ConvertRequest createEmptyInstance() => create();
  static $pb.PbList<ConvertRequest> createRepeated() => $pb.PbList<ConvertRequest>();
  @$core.pragma('dart2js:noInline')
  static ConvertRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConvertRequest>(create);
  static ConvertRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get decimal => $_getIZ(0);
  @$pb.TagNumber(1)
  set decimal($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDecimal() => $_has(0);
  @$pb.TagNumber(1)
  void clearDecimal() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get binary => $_getSZ(1);
  @$pb.TagNumber(2)
  set binary($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBinary() => $_has(1);
  @$pb.TagNumber(2)
  void clearBinary() => clearField(2);
}

class ConvertResponse extends $pb.GeneratedMessage {
  factory ConvertResponse({
    $core.bool? isCorrect,
    $core.String? answer,
  }) {
    final $result = create();
    if (isCorrect != null) {
      $result.isCorrect = isCorrect;
    }
    if (answer != null) {
      $result.answer = answer;
    }
    return $result;
  }
  ConvertResponse._() : super();
  factory ConvertResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConvertResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConvertResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'decimal_to_binary'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'isCorrect', protoName: 'isCorrect')
    ..aOS(2, _omitFieldNames ? '' : 'answer')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConvertResponse clone() => ConvertResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConvertResponse copyWith(void Function(ConvertResponse) updates) => super.copyWith((message) => updates(message as ConvertResponse)) as ConvertResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvertResponse create() => ConvertResponse._();
  ConvertResponse createEmptyInstance() => create();
  static $pb.PbList<ConvertResponse> createRepeated() => $pb.PbList<ConvertResponse>();
  @$core.pragma('dart2js:noInline')
  static ConvertResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConvertResponse>(create);
  static ConvertResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isCorrect => $_getBF(0);
  @$pb.TagNumber(1)
  set isCorrect($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsCorrect() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsCorrect() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get answer => $_getSZ(1);
  @$pb.TagNumber(2)
  set answer($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAnswer() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnswer() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
