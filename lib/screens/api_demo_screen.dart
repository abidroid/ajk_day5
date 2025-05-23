import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiDemoScreen extends StatefulWidget {
  const ApiDemoScreen({super.key});

  @override
  State<ApiDemoScreen> createState() => _ApiDemoScreenState();
}

class _ApiDemoScreenState extends State<ApiDemoScreen> {
  // Initial State
  String quote = 'Quote';

  Future<void> getRandomQuote() async {
    String url = "https://dummyjson.com/quotes/random";

    // 1. send request to server
    // 2. receive response
    http.Response response = await http.get(Uri.parse(url));

    // 3. check status code
    if( response.statusCode == 200 ){
      // 4. if status code is 200
      // 5. means we got response

      var jsonResponse = jsonDecode(response.body);

      quote  = jsonResponse['quote'];
      setState(() {

      });
    }


    // 6. we need to extract quote from the response
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Demo Screen'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          ElevatedButton(onPressed: () {
            getRandomQuote();
          }, child: const Text("GET QUOTE",

          )),
          Text(quote,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }
}
