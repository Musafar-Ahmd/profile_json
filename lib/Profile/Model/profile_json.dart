class ProfileItemsJsonResponse {
  String? title;
  String? image;

  ProfileItemsJsonResponse({this.title, this.image});

  ProfileItemsJsonResponse.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['image'] = this.image;
    return data;
  }
}
