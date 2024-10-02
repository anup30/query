// IntrinsicHeight + Column
// flutter IntrinsicHeight not working with Column
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IntrinsicHeight + Column'),backgroundColor: Colors.blue,),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          color: Colors.amber[50],
          child: IntrinsicHeight(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(5, (i)=>Container(width: (i+1)*10, height: (i+1)*10, color: Colors.green, margin: const EdgeInsets.all(2),)),
            ),
          ),
        ),
      ),
    );
  }
}
