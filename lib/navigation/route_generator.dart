import 'package:base/handlers/qr_code_handler.dart';
import 'package:base/handlers/security/AESEncryptor.dart';
import 'package:flutter/material.dart';

import 'app_routes.dart';

_createRoute(Widget page) {
  return MaterialPageRoute(builder: (context) => page);
}

Route generateRoute(settings) {
  switch (settings.name) {
    case AppRoutes.main:
      return _createRoute(
        Scaffold(
          body: Column(
            children:[
              Badge()
            ]
          ),
        ),
      );
    case AppRoutes.qrScanner:
      return _createRoute(QrCodeHandler());
    default:
      return _createRoute(SizedBox());
  }
}
