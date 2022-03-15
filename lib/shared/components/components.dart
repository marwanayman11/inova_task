import 'package:flutter/material.dart';

void pushTo(context, widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void pushToAndFinish(context, widget) {
  Navigator.pushAndRemoveUntil(context,
      MaterialPageRoute(builder: (context) => widget), ((route) => false));
}