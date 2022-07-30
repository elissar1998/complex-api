import 'package:complex_api/widgets/profile_shimmer_widget.dart';
import 'package:complex_api/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class ApiShimmerPage extends StatefulWidget {
  bool isLoading=true;
  ApiShimmerPage({required  isLoading});
  @override
  _ApiShimmerPageState createState() => _ApiShimmerPageState();
}

class _ApiShimmerPageState extends State<ApiShimmerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //child: Card(child: widget.isLoading? Shimmer.fromColors(child: ShimmerWidget(), baseColor: Colors.grey, highlightColor: Colors.white): ProfileShimmerWidget(profile: data[0]),),
      ),
    );
  }
}
