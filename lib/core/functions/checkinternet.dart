import 'dart:io';

Future<bool?> checkInternet() async {
  try {
    var result = await InternetAddress.lookup("https://www.hbku.edu.qa/en");
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
  return null;
}
