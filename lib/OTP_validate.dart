import 'package:figma/Personal_info.dart';
import 'package:flutter/material.dart';

class Otp_validate extends StatefulWidget {
  const Otp_validate({Key? key}) : super(key: key);

  @override
  State<Otp_validate> createState() => _Otp_validateState();
}

class _Otp_validateState extends State<Otp_validate> {
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
                    'OTP Verification',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  Text('Please enter the correct OTP code ',
                      style: TextStyle(color: Colors.white)),
                  Text('sent to your given number.',
                      style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(10)),
                Text('code',
                    style: TextStyle(
                      color: Colors.grey[400],
                    )),
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 13)),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white70,
                  child: Center(
                      child: TextField(keyboardType: TextInputType.number)),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white70,
                  child: Center(
                      child: TextField(keyboardType: TextInputType.number)),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white70,
                  child: Center(
                      child: TextField(keyboardType: TextInputType.number)),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white70,
                  child: Center(
                      child: TextField(keyboardType: TextInputType.number)),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white70,
                  child: Center(
                      child: TextField(keyboardType: TextInputType.number)),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white70,
                  child: Center(
                      child: TextField(
                    keyboardType: TextInputType.number,
                  )),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(5)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Text("Resend code:"),
              ],
            ),
            Padding(padding: EdgeInsets.all(140)),
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
                            builder: (context) => Personal_info()));
                  },
                  child: Text('Confirm')),
            )
          ],
        ),
      ),
    );
  }
}
