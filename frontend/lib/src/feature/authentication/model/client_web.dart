import 'package:telegram_web_app/telegram_web_app.dart';

bool _isTelegramSupported() {
  try {
    return TelegramWebApp.instance.isSupported;
  } catch (e) {
    return false;
  }
}

int getId() {
  if (_isTelegramSupported()) {
    return TelegramWebApp.instance.initData.user.id;
  }
  return 1234567890;
}

String getUserName() {
  if (_isTelegramSupported()) {
    var user = TelegramWebApp.instance.initData.user;
    return user.firstname ??
        user.lastname ??
        user.username ??
        'dev';
  }
  return 'dev';
}
