import 'dart:convert';
import 'package:complex_api/models/profile_model.dart';
import 'package:complex_api/utils/response.dart';
import 'package:http/http.dart' as http;

Future <Response> getProfile() async {
  String baseURL='https://randomuser.me';
  var url = '$baseURL/api/' ;
  http.Response res =  await http.get(Uri.parse(url));
  var x = json.decode(res.body)['results'];
  if (res.statusCode == 200 )  {
    List list = x;
    List<ProfileModel> profiles= list.map((e) => ProfileModel.formJson(e)).toList();
    return Response(200,profiles);
  }
  else
    {
    return Response(res.statusCode, "failed");
  }
   // var z = x.map((e) => ProfileModel.formJson(e)).toList();
    //print(z);
  }