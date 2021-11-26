import 'dart:io';

import 'base.dart';

BasePlatformInfo getPlatform() => _PlatformX();

class _PlatformX implements BasePlatformInfo {
  @override
  int get numberOfProcessors => Platform.numberOfProcessors;

  @override
  String get pathSeparator => Platform.pathSeparator;

  @override
  String get localeName => Platform.localeName;

  @override
  String get operatingSystem => Platform.operatingSystem;

  @override
  String get operatingSystemVersion => Platform.operatingSystemVersion;

  @override
  String get localHostname => Platform.localHostname;

  @override
  Map<String, String> get environment => Platform.environment;

  @override
  String get executable => Platform.executable;

  @override
  String get resolvedExecutable => Platform.resolvedExecutable;

  @override
  Uri get script => Platform.script;

  @override
  List<String> get executableArguments => Platform.executableArguments;

  @override
  String? get packageConfig => Platform.packageConfig;

  @override
  String get version => Platform.version;

  @override
  bool get isIO => true;

  @override
  bool get isWeb => false;
}
