import 'package:complex_api/models/profile_model.dart';
import 'package:flutter/material.dart';
class ProfileShimmerWidget extends StatefulWidget {
  ProfileModel profile;
  ProfileShimmerWidget({required this.profile});

  @override
  _ProfileShimmerWidgetState createState() => _ProfileShimmerWidgetState();
}

class _ProfileShimmerWidgetState extends State<ProfileShimmerWidget> {
  TextStyle textStyle = const TextStyle(fontSize: 15 ,fontWeight: FontWeight.normal,color: Colors.black,);
  @override
  Widget build(BuildContext context) {
    var x =widget.profile.picture.large;
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         CircleAvatar(
            radius: 45,
            backgroundImage: NetworkImage(x),
            //child: Image.network(widget.profile.picture.medium,width: 100, height: 100,fit:BoxFit.cover,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 6.0 ,top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width:150,
                  height: 20,
                  color:Colors.grey ,
                  child:  Padding(
                    padding: EdgeInsets.only(left: 4.0,top: 2.0),
                    child:Text(widget.profile.name.title + " "+ widget.profile.name.first + " "+widget.profile.name.last, style: textStyle,),
                  ),
                ),
                const SizedBox(height: 12,),
                Container(
                  width: 80,
                  height: 20,
                  color: Colors.grey,
                  child:  Padding(
                    padding: EdgeInsets.only(left: 4.0,top: 2.0),
                    child:  Text(widget.profile.gender, style: textStyle,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

