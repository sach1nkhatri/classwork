import 'package:flutter/material.dart';

class ArithmeticScreenState extends StatefulWidget {
  const ArithmeticScreenState({super.key});

  @override
  State<ArithmeticScreenState> createState() => _ArithmeticScreenStateState();
}

class _ArithmeticScreenStateState extends State<ArithmeticScreenState> {
  final _globalKey = GlobalKey<FormState>();

  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  String? group = 'add'; // default group
  int result = 0;

  void _calculate() {
    int num1 = int.tryParse(_firstController.text) ?? 0;
    int num2 = int.tryParse(_secondController.text) ?? 0;

    setState(() {
      switch (group) {
        case 'add':
          result = num1 + num2;
          break;
        case 'subtract':
          result = num1 - num2;
          break;
        case 'multiply':
          result = num1 * num2;
          break;
        case 'divide':
          result = num2 != 0 ? num1 ~/ num2 : 0; // integer division
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic Screen"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _firstController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'First Number'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _secondController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Second Number'),
            ),
            const SizedBox(height: 20),
            ListTile(
              title: const Text('Add'),
              leading: Radio(
                value: 'add',
                groupValue: group,
                onChanged: (String? value) {
                  setState(() {
                    group = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Subtract'),
              leading: Radio(
                value: 'subtract',
                groupValue: group,
                onChanged: (String? value) {
                  setState(() {
                    group = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Multiply'),
              leading: Radio(
                value: 'multiply',
                groupValue: group,
                onChanged: (String? value) {
                  setState(() {
                    group = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Divide'),
              leading: Radio(
                value: 'divide',
                groupValue: group,
                onChanged: (String? value) {
                  setState(() {
                    group = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculate,
              child: const Text("Calculate"),
            ),
            const SizedBox(height: 20),
            Text(
              'Result: $result',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
