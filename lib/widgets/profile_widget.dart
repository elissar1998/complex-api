import'package:complex_api/models/name_model.dart';
import 'package:complex_api/models/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatefulWidget {
  ProfileModel profile;
  ProfileWidget({required this.profile});

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  TextStyle textStyle = const TextStyle(fontSize: 22,fontWeight: FontWeight.normal,color: Colors.white,);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Card(
            color: Colors.deepPurple,
            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 22,),
                  Text(widget.profile.gender, style: textStyle,),
                  const SizedBox(height: 22,),
                  Text(widget.profile.name.first, style: textStyle,),
                  const SizedBox(height: 22,),
                  Text(widget.profile.name.title, style: textStyle,),
                  const SizedBox(height: 22,),
                  Text(widget.profile.name.last, style: textStyle,),
                  const SizedBox(height: 22,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
