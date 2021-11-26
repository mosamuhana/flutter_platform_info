// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'platform_base.dart';

PlatformBase getPlatform() => _PlatformX();

class _PlatformX implements PlatformBase {
  @override
  int get numberOfProcessors => _numberOfProcessors();

  @override
  String get pathSeparator => '/';

  @override
  String get localeName => _getLocale();

  @override
  String get operatingSystem => _getOperatingSystem();

  @override
  String get operatingSystemVersion => '1.0';

  @override
  String get localHostname => '';

  @override
  Map<String, String> get environment => {};

  @override
  String get executable => '';

  @override
  String get resolvedExecutable => '';

  @override
  Uri get script => Uri.parse('/');

  @override
  List<String> get executableArguments => [];

  @override
  String? get packageConfig => null;

  @override
  String get version => _getVersion();

  @override
  bool get isIO => false;

  @override
  bool get isWeb => true;
}

String _getOperatingSystem() {
  try {
    final appVersion = _getVersion().toLowerCase();
    if (appVersion.contains('fuchsia')) {
      return 'fuchsia';
    } else if (appVersion.contains('mac')) {
      return 'macos';
    } else if (appVersion.contains('win')) {
      return 'windows';
    } else if (appVersion.contains('android')) {
      return 'android';
    } else if (appVersion.contains('iphone') || appVersion.contains('ios')) {
      return 'ios';
    } else if (appVersion.contains('linux')) {
      return 'linux';
    }
  } catch (e) {}
  return 'web';
}

String _getVersion() {
  try {
    return <String>[
      html.window.navigator.userAgent,
      html.window.navigator.appVersion,
      html.window.navigator.platform ?? '',
    ].firstWhere(
      (v) => v is String && v.isNotEmpty,
      orElse: () => '',
    );
  } catch (e) {}
  return '';
}

int _numberOfProcessors() {
  try {
    final numberOfProcessors = html.window.navigator.hardwareConcurrency;
    if (numberOfProcessors != null) {
      return numberOfProcessors;
    }
  } catch (e) {}
  return 0;
}

String _getLocale() {
  try {
    final lang =
        html.window.navigator.language.split('-').first.split('_').first.trim().toLowerCase();
    if (lang is String && lang.length == 2) {
      return lang;
    }
  } catch (e) {}
  return 'en';
}
