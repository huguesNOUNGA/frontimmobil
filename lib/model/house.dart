class House {
  String imageUrl;
  String address;
  String description;
  double price;
  int bedRooms;
  int bathRooms;
  double sqFeet;
  int garages;
  int time;
  List<String> moreTmageUrl;
  bool isFav;

  House({
    required this.imageUrl,
    required this.address,
    required this.description,
    required this.price,
    required this.bathRooms,
    required this.bedRooms,
    required this.sqFeet,
    required this.time,
    required this.garages,
    required this.moreTmageUrl,
    required this.isFav,
  });
}