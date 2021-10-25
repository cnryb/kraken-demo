import 'package:flutter/material.dart';
import 'package:kraken/widget.dart';

void main() {
      runApp(Kraken(
    bundleContent: '''
document.body.appendChild(document.createTextNode('hello kraken'));
    ''',
    background: Colors.white,
  ));
}
