import 'package:complex_api/models/profile_model.dart';
import 'package:complex_api/pages/spinkit_page.dart';
import 'package:complex_api/utils/connection_manager.dart';
import 'package:complex_api/utils/response.dart';
import 'package:complex_api/widgets/profile_shimmer_widget.dart';
import 'package:complex_api/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyAPPBody(),
    );
  }
}
class MyAPPBody extends StatefulWidget {
  const MyAPPBody({Key? key}) : super(key: key);

  @override
  _MyAPPBodyState createState() => _MyAPPBodyState();
}

class _MyAPPBodyState extends State<MyAPPBody> {
  List<ProfileModel> data =[];
  bool isLoading = false;
  void getData() async {
    try{
    setState(() {
      isLoading = true;
    });
    Response response = await getProfile();
    data = response.body;
    if (response.statusCode == 200) {
      print(data.length);
      setState(() {isLoading = false;});
    }

    }
      catch(e){
      setState(() {isLoading = false;});
      }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Timer(Duration(seconds:4),() => Navigator.push(context,MaterialPageRoute(builder:(context)=>ApiShimmerPage(isLoading: false);),),);
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Column(
          children:[
            Card(
            child:
            isLoading?
            Shimmer.fromColors
              (child: ShimmerWidget(),
                baseColor: Colors.grey,
                highlightColor: Colors.white):
            ProfileShimmerWidget(profile: data[0]),
          ),
           MaterialButton(
               onPressed: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => SpinkitPage()),
                 );
               },
             child: Text("click to move Spinkit Page"),
               )
         ]
        ),
      ),
    );
  }
}
/*Card(
          child: isLoading?
              LoaderWidget():
              //Text(data[0].gender),
              ProfileWidget(profile: data[0]),
        ),*/