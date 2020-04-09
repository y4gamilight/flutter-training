class ShowTelevision {
  int id;
  String url;
  String name;
  String type;
  String language;
  List<String> genres;
  String status;
  String summary;

  ShowTelevision.initial()
   : id = 0, url = '', name = '', type = '', language = '', genres = [], status = '';

  ShowTelevision.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    url = json["url"];
    name = json["name"];
    type = json["type"];
    language = json["language"];
    genres = json["genres"]; 
    status = json["status"]; 
    summary = json["summary"];
    
  }
  Map<String,dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();
    data["id"] = id;
    data["url"] = url;
    data["name"] = name;
    data["type"] = type;
    data["language"] = language;
    data["genres"] = genres;
    data["status"] = status; 
    data["summary"] = summary;  
    return data;
  }
}