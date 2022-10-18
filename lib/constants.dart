import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String menuIcon = 'assets/images/equal.png';
const String fileIcon = 'assets/images/file.png';
const String notifyIcon = 'assets/images/notification.png';

var kSizedBox = const SizedBox(
  height: 10,
);
var kSizedBox20 = const SizedBox(
  height: 20,
);
var kSizedBox30 = const SizedBox(
  height: 30,
);
var kSizedBox40 = const SizedBox(
  height: 40,
);
var kWidth = const SizedBox(
  width: 20,
);

ButtonStyle kButtonStyle({required double radius}) {
  return ButtonStyle(
      backgroundColor: MaterialStateProperty.all(CupertinoColors.activeBlue),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))));
}
