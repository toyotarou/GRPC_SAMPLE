//
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use chatConnectRequestDescriptor instead')
const ChatConnectRequest$json = {
  '1': 'ChatConnectRequest',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ChatConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatConnectRequestDescriptor = $convert.base64Decode(
    'ChJDaGF0Q29ubmVjdFJlcXVlc3QSGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use chatConnectResponseDescriptor instead')
const ChatConnectResponse$json = {
  '1': 'ChatConnectResponse',
  '2': [
    {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.chat.Message', '10': 'messages'},
  ],
};

/// Descriptor for `ChatConnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatConnectResponseDescriptor = $convert.base64Decode(
    'ChNDaGF0Q29ubmVjdFJlc3BvbnNlEikKCG1lc3NhZ2VzGAEgAygLMg0uY2hhdC5NZXNzYWdlUg'
    'htZXNzYWdlcw==');

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'unixTime', '3': 2, '4': 1, '5': 3, '10': 'unixTime'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2USGgoIdW5peFRpbWUYAiABKANSCH'
    'VuaXhUaW1l');

