import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kraken/kraken.dart';
import 'dart:typed_data';
import 'package:kraken/foundation.dart';

void main() {
    runApp(Kraken(
    bundleContent: '''
(async function () {
    const response = await fetch('https://jsonplaceholder.typicode.com/posts/', {
        method: 'POST',
        body: JSON.stringify({ "name": "kraken" }),
        headers: {
            'Content-Type': 'application/json',
        },
    })
    const value = await response.json()
    console.log(value)
})();
    ''',
    httpClientInterceptor: CustomHttpClientInterceptor(),
  ));
}



class CustomHttpClientInterceptor implements HttpClientInterceptor {
  DateTime? _startTime;
  DateTime? _endTime;

  @override
  Future<HttpClientRequest?> beforeRequest(HttpClientRequest request) async {
    request.headers.set('x-foo', 'bar');
    print('beforeRequest, request headers: ${request.headers}');
    if (request.uri.path == '/posts/') {
      _startTime = DateTime.now();
    }
    return null;
  }

  @override
  Future<HttpClientResponse?> afterResponse(HttpClientRequest request, HttpClientResponse response) async {
    print('afterResponse, response headers: ${response.headers}');
    if (request.uri.path == '/posts/') {
      _endTime = DateTime.now();
      print('/posts/ cost: ${_endTime!.millisecondsSinceEpoch - _startTime!.millisecondsSinceEpoch}ms');
    }
    return null;
  }

  @override
  Future<HttpClientResponse?> shouldInterceptRequest(HttpClientRequest request) async {
    if (request.uri.path == '/posts/') {
      // Direct output string, transform to stream.
      String replaced = '{ "foo": "bar" }';
      Uint8List data = Uint8List.fromList(replaced.codeUnits);
      Stream<Uint8List> stream = Stream<Uint8List>.value(data);
      return HttpClientStreamResponse(stream, responseHeaders: { 'x-kraken': 'hey', 'hello': 'world' });
    }
    return null;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Kraken kraken = Kraken(
      bundlePath: 'js_bundles/index.js',
      background: Colors.white,
    );

    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: kraken);
  }
}
