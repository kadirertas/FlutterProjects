import 'Friends.dart';

class Posts {
  final Friends? friend;
  final String? imageUrl;
  final String? timePosted;
  final String? description;
  final String? comments;
  final String? shared;
  final String? like;

  Posts(
      {this.imageUrl,
      this.description,
      this.friend,
      this.timePosted,
      this.comments,
      this.shared,
      this.like});
}

final Friends Ahmet = Friends(
  name: "Ahmet",
  imageUrl: "assets/images/profile/image01.jpg",
);
final Friends Saly = Friends(
  name: "Saly",
  imageUrl: "assets/images/profile/image02.jpg",
);
final Friends Alix = Friends(
  name: "Alix",
  imageUrl: "assets/images/profile/image03.jpg",
);
final Friends Sara = Friends(
  name: "Sara",
  imageUrl: "assets/images/profile/image04.jpg",
);
final Friends Tomas = Friends(
  name: "Tomas",
  imageUrl: "assets/images/profile/image05.jpg",
);
final Friends Nancy = Friends(
  name: "Nancy",
  imageUrl: "assets/images/profile/image06.jpg",
);
final Friends Markous = Friends(
  name: "Markous",
  imageUrl: "assets/images/profile/image07.jpg",
);
final Friends Sukufe = Friends(
  name: "Şukufe",
  imageUrl: "assets/images/profile/image08.jpg",
);
final Friends May = Friends(
  name: "May",
  imageUrl: "assets/images/profile/image09.jpg",
);

List<Posts> posts = [
  Posts(
      friend: Markous,
      imageUrl: "assets/images/posts/1.jpg",
      timePosted: "8 hours ago ",
      shared: "85",
      comments: "3",
      like: '10',
      description: 'Biraz Sanayide Çalışalım dedik '),
  Posts(
      friend: Sukufe,
      imageUrl: "assets/images/posts/2.jpg",
      timePosted: "3 hours ago ",
      shared: "33",
      comments: "20",
      like: '10',
      description: 'Gene Bugün Şantiyedeyim '),
  Posts(
      friend: Saly,
      imageUrl: "assets/images/posts/3.jpg",
      timePosted: "12 hours ago ",
      shared: "39",
      comments: "12",
      like: '25',
      description: 'Boyacılık da ne zor iş canım  '),
  Posts(
      friend: May,
      imageUrl: "assets/images/posts/4.jpg",
      timePosted: "7 hours ago ",
      shared: "56",
      comments: "2",
      like: '96',
      description: 'Sanayi Tarihinin en iyi fotosu  '),
];
