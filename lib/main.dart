import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? resultado = 0, num1 = 0, num2 = 0;
  suma() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      resultado = num1! + num2!;
    });
  }

  resta() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      resultado = num1! - num2!;
    });
  }

  division() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      resultado = num1! ~/ num2!;
    });
  }

  multiplicacion() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      resultado = num1! * num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text('Calculadora'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Resultado : $resultado",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller1,
              decoration: InputDecoration(labelText: "Enter First Number", border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller2,
              decoration: InputDecoration(labelText: "Enter Second Number", border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      suma();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: Text("+")),
                ElevatedButton(onPressed: () {}, child: Text("-")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("*")),
                ElevatedButton(onPressed: () {}, child: Text("/")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
