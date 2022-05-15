import 'dart:html';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/secondScreen.dart';

class HomeScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              var url = Uri.parse(
                  'https:goquotes-api-herokuaoo.com/api/v1/random?count=1');
              var response = await http.post(url);
              print('Response status: ${response.statusCode}');
              print('Response body: ${response.body}');

              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => secondScreen()));
            },
            child: Text("Go to next screen"),
          ),
        ),
      ),
    );
  }
}
