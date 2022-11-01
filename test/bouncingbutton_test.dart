import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bouncerwidget/bouncerwidget.dart';

void main() {
  test('bounces continiously', () {
    final bouncer = BouncingWidget(
      child: Container(
        color: Colors.red,
        height: 20,
        width: 20,
      ),
    );
  });
}
