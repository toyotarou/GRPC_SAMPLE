//
//  Generated code. Do not modify.
//  source: decimal_to_binary.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use convertRequestDescriptor instead')
const ConvertRequest$json = {
  '1': 'ConvertRequest',
  '2': [
    {'1': 'decimal', '3': 1, '4': 1, '5': 5, '10': 'decimal'},
    {'1': 'binary', '3': 2, '4': 1, '5': 9, '10': 'binary'},
  ],
};

/// Descriptor for `ConvertRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertRequestDescriptor = $convert.base64Decode(
    'Cg5Db252ZXJ0UmVxdWVzdBIYCgdkZWNpbWFsGAEgASgFUgdkZWNpbWFsEhYKBmJpbmFyeRgCIA'
    'EoCVIGYmluYXJ5');

@$core.Deprecated('Use convertResponseDescriptor instead')
const ConvertResponse$json = {
  '1': 'ConvertResponse',
  '2': [
    {'1': 'isCorrect', '3': 1, '4': 1, '5': 8, '10': 'isCorrect'},
    {'1': 'answer', '3': 2, '4': 1, '5': 9, '10': 'answer'},
  ],
};

/// Descriptor for `ConvertResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convertResponseDescriptor = $convert.base64Decode(
    'Cg9Db252ZXJ0UmVzcG9uc2USHAoJaXNDb3JyZWN0GAEgASgIUglpc0NvcnJlY3QSFgoGYW5zd2'
    'VyGAIgASgJUgZhbnN3ZXI=');

