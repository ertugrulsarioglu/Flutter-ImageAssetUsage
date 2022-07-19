import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Cars'),
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

  String resimAdi = "bmw.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("resimler/$resimAdi"),
            ElevatedButton(
              child: Text("Resim 1"),
              onPressed: (){

                setState(() {
                  resimAdi = "bmw.jpg";
                });
              },
            ),
            ElevatedButton(
              child: Text("Resim 2"),
              onPressed: (){

                setState(() {
                  resimAdi = "skyline.jpg";
                });
              },
            ),
            ElevatedButton(
              child: Text("Resim 3"),
              onPressed: (){

                setState(() {
                  resimAdi = "shelby.jpg";
                });
              },
            ),
          ],
        ),
      ),

    );
  }
}
