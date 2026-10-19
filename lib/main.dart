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
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ecrant1()
    );
  }
}




class ecrant1 extends StatelessWidget {
  const ecrant1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('mon text'),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ecrant2()),);
              }, child: Text('Navigate'))
            ]
          ),
        ),
      );
  }
}




class ecrant2 extends StatelessWidget {
  const ecrant2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.amberAccent,
      body: Center(
        child: Text('je suis dans le deuxieme ecrant'),
      ),
    );
  }
}