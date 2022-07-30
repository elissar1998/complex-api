import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shimmer/shimmer.dart';

class LoaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(160.0),
        child: Column(
          children: [
            //SpinKitCircle(color: Colors.pink, size: 60.0,),
            //CircularProgressIndicator(),
            Shimmer.fromColors(
              baseColor: Colors.grey,
              highlightColor: Colors.white30,
              child: ListTile(
                leading:CircleAvatar(backgroundColor: Colors.greenAccent,),
                title: Container(width: 10,height: 16, color: Colors.pink, child: Text("helllo",style: TextStyle(color: Colors.black),),),
                subtitle:Container( height: 16.0,color: Colors.pink, child: Text(""),),

              ),
            ),

            const SizedBox(
              height: 8,
            ),
            const Text("Loading ..", style: TextStyle(
                fontSize: 18
            ),),
          ],
        ),
      ),
    );
  }
}