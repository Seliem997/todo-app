import 'package:bloc/bloc.dart';
import 'package:bmi_calculator/layouts/home_layout.dart';
import 'package:bmi_calculator/modules/bmi/bmi_screen.dart';
import 'package:bmi_calculator/modules/counter/counter_screen.dart';
import 'package:bmi_calculator/modules/login/login_screen.dart';
import 'package:bmi_calculator/shared/block_observe.dart';
import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff0A0D22),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xff0A0D22)),
      ),
      home: HomeLayout(),
    );
  }
}
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Text('Body Text'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}

