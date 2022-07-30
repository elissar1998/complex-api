import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircleAvatar(radius: 45,backgroundColor: Colors.grey,),
            Padding(
              padding: const EdgeInsets.only(left: 6.0 ,top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width:500,
                    height: 20,
                    color:Colors.grey ,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 4.0,top: 2.0),
                      child: Text("alissar"),
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Container(
                    width: 300,
                    height: 20,
                    color: Colors.grey,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 4.0,top: 2.0),
                      child: Text("alissar"),
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
