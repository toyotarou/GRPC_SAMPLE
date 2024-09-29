//
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ChatConnectRequest extends $pb.GeneratedMessage {
  factory ChatConnectRequest({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  ChatConnectRequest._() : super();
  factory ChatConnectRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatConnectRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatConnectRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'chat'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatConnectRequest clone() => ChatConnectRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatConnectRequest copyWith(void Function(ChatConnectRequest) updates) => super.copyWith((message) => updates(message as ChatConnectRequest)) as ChatConnectRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatConnectRequest create() => ChatConnectRequest._();
  ChatConnectRequest createEmptyInstance() => create();
  static $pb.PbList<ChatConnectRequest> createRepeated() => $pb.PbList<ChatConnectRequest>();
  @$core.pragma('dart2js:noInline')
  static ChatConnectRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatConnectRequest>(create);
  static ChatConnectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class ChatConnectResponse extends $pb.GeneratedMessage {
  factory ChatConnectResponse({
    $core.Iterable<Message>? messages,
  }) {
    final $result = create();
    if (messages != null) {
      $result.messages.addAll(messages);
    }
    return $result;
  }
  ChatConnectResponse._() : super();
  factory ChatConnectResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatConnectResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChatConnectResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'chat'), createEmptyInstance: create)
    ..pc<Message>(1, _omitFieldNames ? '' : 'messages', $pb.PbFieldType.PM, subBuilder: Message.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatConnectResponse clone() => ChatConnectResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatConnectResponse copyWith(void Function(ChatConnectResponse) updates) => super.copyWith((message) => updates(message as ChatConnectResponse)) as ChatConnectResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatConnectResponse create() => ChatConnectResponse._();
  ChatConnectResponse createEmptyInstance() => create();
  static $pb.PbList<ChatConnectResponse> createRepeated() => $pb.PbList<ChatConnectResponse>();
  @$core.pragma('dart2js:noInline')
  static ChatConnectResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatConnectResponse>(create);
  static ChatConnectResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Message> get messages => $_getList(0);
}

class Message extends $pb.GeneratedMessage {
  factory Message({
    $core.String? message,
    $fixnum.Int64? unixTime,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (unixTime != null) {
      $result.unixTime = unixTime;
    }
    return $result;
  }
  Message._() : super();
  factory Message.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Message.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Message', package: const $pb.PackageName(_omitMessageNames ? '' : 'chat'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aInt64(2, _omitFieldNames ? '' : 'unixTime', protoName: 'unixTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Message clone() => Message()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Message copyWith(void Function(Message) updates) => super.copyWith((message) => updates(message as Message)) as Message;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Message create() => Message._();
  Message createEmptyInstance() => create();
  static $pb.PbList<Message> createRepeated() => $pb.PbList<Message>();
  @$core.pragma('dart2js:noInline')
  static Message getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Message>(create);
  static Message? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get unixTime => $_getI64(1);
  @$pb.TagNumber(2)
  set unixTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUnixTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnixTime() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
