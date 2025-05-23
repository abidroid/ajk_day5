

import 'package:ajk_day5/screens/api_demo_screen.dart';
import 'package:ajk_day5/screens/tf_demo_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  foregroundColor: Colors.white
                ),
                onPressed: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return TfDemoScreen();
                  }));


                }, child: const Text('TF Demo Screen')),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white
                ),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return ApiDemoScreen();
                  }));
                }, child: const Text('API Demo Screen')),
          ],
        ),
      ),
    );
  }
}
