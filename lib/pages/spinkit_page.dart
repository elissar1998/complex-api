import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class SpinkitPage extends StatefulWidget {
  const SpinkitPage({Key? key}) : super(key: key);

  @override
  _SpinkitPageState createState() => _SpinkitPageState();
}

class _SpinkitPageState extends State<SpinkitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  const [
              SpinKitWave(color: Colors.grey, type: SpinKitWaveType.center),
              SizedBox(height: 24,),
              Text("Loading...", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.red,),),
            ],
          ),
        ),
      ),
    );
  }
}
