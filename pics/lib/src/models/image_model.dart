class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

//parsed json is a map
  ImageModel.fromJson(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title = parsedJson['title'];
  }
  // ImageModel.fromJon(parsedJson)
  //     : id = parsedJson['id'],
  //       url = parsedJson['url'],
  //       title = parsedJson['title'];
}
