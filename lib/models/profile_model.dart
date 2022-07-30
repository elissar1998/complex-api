import 'package:complex_api/models/name_model.dart';
import 'package:complex_api/models/picture_model.dart';

class ProfileModel {
  String gender;
  NameModel name;
  PictureModel picture;
  ProfileModel.formJson(Map<String,dynamic>json):
      gender=json['gender'],
      name=NameModel.fromJson(json['name']),
      picture=PictureModel.fromJson(json['picture']);

}