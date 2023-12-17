class Game {
  int id;
  String name;
  int pointsReward;
  List<String> platforms;
  num price;
  String cover;
  String backgroundCover;
  String description;
  List<String> multimediaVideos;
  List<String> reviews;
  num discount;
  num stock;

  Game(
      {required this.id,
      required this.name,
      required this.pointsReward,
      required this.platforms,
      required this.price,
      required this.cover,
      required this.backgroundCover,
      required this.stock,
      required this.description,
      required this.multimediaVideos,
      required this.discount,
      required this.reviews});

  factory Game.fromJSONResponse(Map<String, dynamic> response) {
    return Game(
        id: response['id'],
        name: response['name'],
        pointsReward: response['points_reward'],
        platforms: response['platforms'],
        price: response['price'],
        cover: response['cover'],
        stock: response['stock'],
        backgroundCover: response['backgroundCover'],
        description: response['description'],
        multimediaVideos: response['multimedia'],
        discount: response['discount'],
        reviews: response['reviews']);
  }

  bool hasDiscount() {
    return discount > 0;
  }

  bool isSoonToWayOut() {
    return stock < 6 && discount == 0;
  }
}
