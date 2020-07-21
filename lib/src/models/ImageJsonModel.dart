class ImageJsonModel {
  String title, url, thumbnailUrl;
  int id;

  ImageJsonModel(Map<String, dynamic> jsonData) {
    id = jsonData["id"];
    url = jsonData["url"];
    title = jsonData["title"];
    thumbnailUrl = jsonData["thumbnailUrl"];
  }

  String toString() {
    return '$id' + '\n' + title + '\n' + url + '\n' + thumbnailUrl;
  }
}
