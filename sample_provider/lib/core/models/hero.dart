class Hero {
  int id;
  String name;
  String localizedName;
  String primaryAttr;
  String attackType;
  List<String> roles;
  int legs;
  
  Hero({String id, String name,  String localizedName,  String primaryAttr, 
    String attackType, List<String> roles, int legs});

  Hero.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    localizedName = json["localized_name"];
    primaryAttr = json["primary_attr"];
    attackType = json["attack_type"];
    roles = json["roles"];
    legs = json["legs"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['localized_name'] = this.localizedName;
    data['primary_attr'] = this.primaryAttr;
    data['attack_type'] = this.attackType;
    data['roles'] = this.roles;
    data['legs'] = this.legs;
    return data;
  }
}