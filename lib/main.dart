import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int sum = 0;

  bool isSeleckt = false;
  void checkBox(value) {
    setState(() {
      isSeleckt = value;
      if (isSeleckt == true) {
        sum += 500;
      }
      if (isSeleckt == false) {
        sum -= 500;
      }
    });
  }

  bool isSeleckt1 = false;
  void checkBox1(value) {
    setState(() {
      isSeleckt1 = value;
      if (isSeleckt1 == true) {
        sum += 1000;
      }
      if (isSeleckt1 == false) {
        sum -= 1000;
      }
    });
  }

  bool isSeleckt2 = false;
  void checkBox2(value) {
    setState(() {
      isSeleckt2 = value;
      if (isSeleckt2 == true) {
        sum += 1500;
      }
      if (isSeleckt2 == false) {
        sum -= 1500;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('                                                     Checkbox'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(margin: const EdgeInsets.only(left: 200), child: Checkbox(value: isSeleckt, onChanged: checkBox)),
                  const Text(
                    'Extra Cheese',
                    style: TextStyle(color: Colors.amber),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(margin: const EdgeInsets.only(left: 200), child: Checkbox(value: isSeleckt1, onChanged: checkBox1)),
                  const Text(
                    'Onions',
                    style: TextStyle(color: Colors.amber),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(margin: const EdgeInsets.only(left: 200), child: Checkbox(value: isSeleckt2, onChanged: checkBox2)),
                  const Text(
                    'Chicken',
                    style: TextStyle(color: Colors.amber),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(child: Text('Toyal sum $sum')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
