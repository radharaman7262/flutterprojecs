import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 400, horizontal: 40),
          child: ListTile(
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.network(
                    'https://play-lh.googleusercontent.com/6UgEjh8Xuts4nwdWzTnWH8QtLuHqRMUB7dp24JYVE2xcYzq4HA8hFfcAbU-R-PC_9uA1'),
                Image.asset('assets/image/raman.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
