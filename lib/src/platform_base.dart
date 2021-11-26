abstract class PlatformBase {
  int get numberOfProcessors;
  String get pathSeparator;
  String get localeName;
  String get operatingSystem;
  String get operatingSystemVersion;
  String get localHostname;
  Map<String, String> get environment;
  String get executable;
  String get resolvedExecutable;
  Uri get script;
  List<String> get executableArguments;
  String? get packageConfig;
  String get version;
  bool get isIO;
  bool get isWeb;
}
