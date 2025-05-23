import 'package:flutter/material.dart';

class TfDemoScreen extends StatefulWidget {
  const TfDemoScreen({super.key});

  @override
  State<TfDemoScreen> createState() => _TfDemoScreenState();
}

class _TfDemoScreenState extends State<TfDemoScreen> {
  TextEditingController firstC = TextEditingController();
  var lastC = TextEditingController();

  String fullName = "FN";


  @override
  void initState() {
    firstC.text = 'Imran';
    lastC.text = 'Khan';

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TF Demo Screen'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            TextField(
              controller: firstC,
              decoration: InputDecoration(
                hintText: 'First Name',
                border: OutlineInputBorder(),
              ),
            ),

            TextField(
              controller: lastC,
              decoration: InputDecoration(
                hintText: 'Last Name',
                border: OutlineInputBorder(),
              ),
            ),

            Row(
              spacing: 16,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Clear"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {

                      String first = firstC.text;
                      String last = lastC.text;

                      setState(() {
                        fullName = '$first $last';
                      });

                    },
                    child: const Text("Combine"),
                  ),
                ),
              ],
            ),

            Text(fullName),
          ],
        ),
      ),
    );
  }
}
