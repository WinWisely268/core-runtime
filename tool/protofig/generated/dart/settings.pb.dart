///
//  Generated code. Do not modify.
//  source: settings.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'baseproto.pb.dart' as $0;

class ProtoModuleConfig extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ProtoModuleConfig', package: const $pb.PackageName('config'), createEmptyInstance: create)
    ..aOS(1, 'moduleId')
    ..m<$core.String, $0.ConfigVal>(2, 'configs', entryClassName: 'ProtoModuleConfig.ConfigsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.ConfigVal.create, packageName: const $pb.PackageName('config'))
    ..hasRequiredFields = false
  ;

  ProtoModuleConfig._() : super();
  factory ProtoModuleConfig() => create();
  factory ProtoModuleConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ProtoModuleConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ProtoModuleConfig clone() => ProtoModuleConfig()..mergeFromMessage(this);
  ProtoModuleConfig copyWith(void Function(ProtoModuleConfig) updates) => super.copyWith((message) => updates(message as ProtoModuleConfig));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ProtoModuleConfig create() => ProtoModuleConfig._();
  ProtoModuleConfig createEmptyInstance() => create();
  static $pb.PbList<ProtoModuleConfig> createRepeated() => $pb.PbList<ProtoModuleConfig>();
  @$core.pragma('dart2js:noInline')
  static ProtoModuleConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProtoModuleConfig>(create);
  static ProtoModuleConfig _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get moduleId => $_getSZ(0);
  @$pb.TagNumber(1)
  set moduleId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModuleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearModuleId() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $0.ConfigVal> get configs => $_getMap(1);
}

