import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Kalkulator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget calcbutton(String btntxt, Color btncolor, Color txtcolor) {
    return Container(

      child: ElevatedButton(onPressed: (){
        //code
      },

        child: Text(btntxt,
          style: TextStyle(
              fontSize: 25,
              color: txtcolor,
              fontWeight: FontWeight.bold
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: btncolor,
                                                  // shadowColor: Color(0xFFFFF),
          //shape: CircleBorder(),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ Padding(padding: EdgeInsets.all(30),
                child: Text('0',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.black,
                      fontSize: 100),
                  ),
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('AC', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('+/-', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('%', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('/', Colors.white70, Colors.black),
                ),
                SizedBox(height: 0,),
              ],
            ),
            // SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('7', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('8', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('9', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('x', Colors.white70, Colors.black),
                ),
                SizedBox(height: 0,),
              ],
            ),
            // SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('4', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('5', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('6', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('-', Colors.white70, Colors.black),
                ),
                SizedBox(height: 0,),
              ],
            ),
            // SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('1', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('2', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('3', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('+', Colors.white70, Colors.black),
                ),
                SizedBox(height: 0,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100),),
                SizedBox(
                  height: 70,
                  width: 160,
                  child: calcbutton('0', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('.', Colors.white70, Colors.black),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: calcbutton('=', Colors.white70, Colors.black),
                ),
                SizedBox(height: 0,),
              ],
            )
          ],
        ),
      ),
    );
  }
}