class Friends {
  String? name;
  String? imageUrl;
  String? numPosts;
  String? numFollowers;
  String? numFollowing;
  Friends(
      {this.name,
      this.imageUrl,
      this.numPosts,
      this.numFollowers,
      this.numFollowing});
}

List<Friends> favorite = [
  Friends(
    name: "Ahmet",
    imageUrl: "assets/images/profile/image01.jpg",
  ),
  Friends(
    name: "Slay",
    imageUrl: "assets/images/profile/image02.jpg",
  ),
  Friends(
    name: "Alix",
    imageUrl: "assets/images/profile/image03.jpg",
  ),
  Friends(
    name: "Sara",
    imageUrl: "assets/images/profile/image04.jpg",
  ),
  Friends(
    name: "Tomas",
    imageUrl: "assets/images/profile/image05.jpg",
  ),
];
