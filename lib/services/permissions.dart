import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

Future<bool> checkPermission() async {
  final plugin = DeviceInfoPlugin();
  final android = await plugin.androidInfo;
  final storageStatus = android.version.sdkInt < 30
      ? await Permission.storage.request()
      : await Permission.manageExternalStorage.request();
  if (storageStatus == PermissionStatus.granted) {
    return true;
  }
  if (storageStatus == PermissionStatus.denied) {
    storageStatus;
  }
  if (storageStatus == PermissionStatus.permanentlyDenied) {
    openAppSettings();
  }
  return storageStatus.isGranted;
}
