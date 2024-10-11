import 'package:url_launcher/url_launcher.dart';

abstract class UrlLauncher {
  static Future<bool> url(String? url) async {
    var launchable = false;
    try {
      final uri = Uri.parse('$url');
      launchable = await canLaunchUrl(uri);
      if (launchable) await launchUrl(uri);
    } catch (_) {}
    return launchable;
  }

  static Future<bool> tel(String? url) async {
    var launchable = false;
    try {
      final uri = Uri.parse('tel:$url');
      launchable = await canLaunchUrl(uri);
      if (launchable) await launchUrl(uri);
    } catch (_) {}
    return launchable;
  }

  static Future<bool> email(String? url) async {
    var launchable = false;
    try {
      final uri = Uri.parse('mailto:$url');
      launchable = await canLaunchUrl(uri);
      if (launchable) await launchUrl(uri);
    } catch (_) {}
    return launchable;
  }
}
