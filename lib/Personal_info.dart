import 'package:figma/Map_view.dart';
import 'package:flutter/material.dart';

class Personal_info extends StatefulWidget {
  const Personal_info({Key? key}) : super(key: key);

  @override
  State<Personal_info> createState() => _Personal_infoState();
}

class _Personal_infoState extends State<Personal_info> {
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
                    'Personal Information',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  Text('Please enter your correct ',
                      style: TextStyle(color: Colors.white)),
                  Text('information.', style: TextStyle(color: Colors.white))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            Container(
              height: 105,
              width: 105,
              color: Colors.grey,
              child: Icon(Icons.camera_enhance),
            ),
            Padding(padding: EdgeInsets.all(25)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 22)),
                Text('First Name')
              ],
            ),
            Container(
              height: 50,
              width: 340,
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    )),
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 22)),
                Text('Last Name')
              ],
            ),
            Container(
              height: 50,
              width: 340,
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    )),
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),
            SizedBox(
              height: 55,
              width: 250,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      elevation: 3,
                      side: BorderSide(width: 10)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => map_view()));
                  },
                  child: Text('Save')),
            )
          ],
        ),
      ),
    );
  }
}
