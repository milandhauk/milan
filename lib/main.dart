import 'package:figma/OTP_validate.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  Text('Please ensure to give the correct',
                      style: TextStyle(color: Colors.white)),
                  Text('mobile Number.', style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              children: const [
                Center(
                  child: Text(
                    '     Phone number',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.grey,
                  child: Center(child: Text('+91')),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  height: 50,
                  width: 280,
                  color: Colors.white70,
                  child: (TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(),
                  )),
                )
              ],
            ),
            Padding(padding: EdgeInsets.all(120)),
            SizedBox(
              height: 55,
              width: 250,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      elevation: 3,
                      side: BorderSide(width: 10)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Otp_validate()));
                  },
                  child: Text('send OTP')),
            )
          ],
        ),
      ),
    );
  }
}
