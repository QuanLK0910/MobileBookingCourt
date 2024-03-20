class postModel {
  final String name;
  final String profileImageUrl;
  final String postImageUrl;
  final String description;
  final DateTime dateTime;
  final int numPeople;
  final String location;
  final String sportType;
  postModel({
    required this.name,
    required this.profileImageUrl,
    required this.postImageUrl,
    required this.description,
    required this.dateTime,
    required this.numPeople,
    required this.location,
    required this.sportType,
  });
}
