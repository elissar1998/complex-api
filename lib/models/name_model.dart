class NameModel{
  String title;
  String first;
  String last;
  NameModel.fromJson (Map<String,dynamic>json):
      title=json['title'],
      first=json['first'],
      last = json['last'];
}