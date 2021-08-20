import 'package:flutter/material.dart';

import 'modules/postal_code_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: SafeArea(
        child: PostalCodePage(),
      ),
    );
  }
}
