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
          padding: EdgeInsets.all(20),
          //shape: CircleBorder(),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [ Padding(padding: EdgeInsets.all(20),
                child: Text('0',
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white,
                      fontSize: 100),
                ),
              )
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 120),),
                calcbutton('AC', Colors.white70, Colors.black),
                calcbutton('+/-', Colors.white70, Colors.black),
                calcbutton('%', Colors.white70, Colors.black),
                calcbutton('/', Colors.orange, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 120),),
                calcbutton('7', Colors.grey, Colors.black),
                calcbutton('8', Colors.grey, Colors.black),
                calcbutton('9', Colors.grey, Colors.black),
                calcbutton('x', Colors.orange, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 120),),
                calcbutton('4', Colors.grey, Colors.black),
                calcbutton('5', Colors.grey, Colors.black),
                calcbutton('6', Colors.grey, Colors.black),
                calcbutton('-', Colors.orange, Colors.black),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 150),),
                calcbutton('1', Colors.grey, Colors.black),
                calcbutton('2', Colors.grey, Colors.black),
                calcbutton('3', Colors.grey, Colors.black),
                calcbutton('+', Colors.orange, Colors.black),
              ],
            ),
          ],
        ),
      ),
    );
  }
}