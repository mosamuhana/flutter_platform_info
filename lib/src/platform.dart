import 'platform_web.dart' if (dart.library.io) 'platform_io.dart';

final _p = getPlatform();

class PlatformInfo {
  static final int numberOfProcessors = _p.numberOfProcessors;
  static final String pathSeparator = _p.pathSeparator;
  static final String localeName = _p.localeName;
  static final String operatingSystem = _p.operatingSystem;
  static final String operatingSystemVersion = _p.operatingSystemVersion;
  static final String localHostname = _p.localHostname;
  static final Map<String, String> environment = _p.environment;
  static final String executable = _p.executable;
  static final String resolvedExecutable = _p.resolvedExecutable;
  static final Uri script = _p.script;
  static final List<String> executableArguments = _p.executableArguments;
  static final String? packageConfig = _p.packageConfig;
  static final String version = _p.version;
  static final bool isIO = _p.isIO;
  static final bool isWeb = _p.isWeb;

  static final bool isLinux = operatingSystem == "linux";
  static final bool isMacOS = operatingSystem == "macos";
  static final bool isWindows = operatingSystem == "windows";
  static final bool isAndroid = operatingSystem == "android";
  static final bool isIOS = operatingSystem == "ios";
  static final bool isFuchsia = operatingSystem == "fuchsia";

  static final bool isDesktop = isIO && (isWindows || isLinux || isMacOS || isFuchsia);
  static final bool isMobile = isIO && (isAndroid || isIOS);
  static final bool isMaterial = isIO && (isAndroid || isFuchsia);
  static final bool isCupertino = isIO && (isIOS || isMacOS);
}
