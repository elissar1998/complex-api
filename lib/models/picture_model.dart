class PictureModel{
  String large;
  String medium;
  String thumbnail;
  PictureModel.fromJson(Map<String , dynamic> json):
     large =json['large'],
      medium= json['medium'],
      thumbnail=json['thumbnail'];
}