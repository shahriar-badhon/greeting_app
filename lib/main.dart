import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Greeting App',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Greeting App'),
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
  String name="";
  TextEditingController tcName = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(width:100, height: 100, child: Image.asset('assets/images/greetin_app.png')),
            Center(
              child: Text('Greeting App! ',
                  style: TextStyle(fontSize: 25,
                        color: Colors.green
                  ),

              ),
            ),
            SizedBox(height: 10,),
            Text('Enter your name:',
              style: TextStyle(
                color: Colors.green
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(width: 300, child: TextField(controller: tcName,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)
                ),

              ),
            )),
            SizedBox(height: 18,),
            ElevatedButton(
                onPressed: pressed, child: Text("Submit")),
            SizedBox(height: 30,),
            name=="" ? Text("") : Text("Hi $name!")

          ],
        ),
      ),
    );
  }

  void pressed(){
    name = tcName.text;
    setState(() {

    });
  }
}
