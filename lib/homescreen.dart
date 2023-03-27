import 'package:flutter/material.dart';
import 'package:numberfact/httpfunction.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, required String title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController number = TextEditingController();
  String factToShow = 'Type number and press Enter';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your favorite number:'),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                int numTosend = int.parse(number.text);
                var factRecieved = await nuberFact(num: numTosend);
                setState(() {
                  factToShow = factRecieved.text!;
                });
              },
              child: const Text('Submit')),
          Text(factToShow),
        ],
      )),
    );
  }
}
