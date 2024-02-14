import 'package:chat_app/Model/User_Model.dart';

class Message {
  late final User sender;
  late final String time;
  late final String text;
  late final bool isLiked;
  late final bool unread;

  Message(
      {required this.sender,
      required this.isLiked,
      required this.text,
      required this.time,
      required this.unread});
}

final User currentUser =
    User(Name: "currentUser ", ImageUrl: "images/image01.jpg", ID: 0);
final User saly = User(Name: "saly", ImageUrl: "images/image01.jpg", ID: 1);

final User zezo = User(Name: "Zezo", ImageUrl: "images/image02.jpg", ID: 2);

final User johan = User(Name: "Joha", ImageUrl: "images/image03.jpg", ID: 3);

final User sara = User(Name: "Sara", ImageUrl: "images/image04.jpg", ID: 4);

final User mohamed =
    User(Name: "Mohamed", ImageUrl: "images/image04.jpg", ID: 5);

final User alper = User(Name: "Tırıvırı", ImageUrl: "images/alper.png", ID: 6);

List<User> Favorites = [alper, saly, sara, zezo, mohamed, johan];

List<Message> chats = [
  Message(
      sender: zezo,
      isLiked: true,
      text: "Hello how are you ? ,can you help me please ",
      time: "7.03 PM",
      unread: true),
  Message(
      sender: saly,
      isLiked: true,
      text: "Hello how are you ?  ",
      time: "7.03 PM",
      unread: false),
  Message(
      sender: sara,
      isLiked: false,
      text: "Hello how are you ? ,can you help me please ",
      time: "7.09 PM",
      unread: true),
  Message(
      sender: johan,
      isLiked: false,
      text: "Hello how are you ? ",
      time: "7.03 PM",
      unread: false),
  Message(
      sender: alper,
      isLiked: true,
      text: "kadircim pembe valizin varmı  ? ",
      time: "7.03 PM",
      unread: true),
];
List<Message> messages = [
  Message(
      sender: zezo,
      isLiked: true,
      text: "Hello how are you ? ,can you help me please ",
      time: "7.03 PM",
      unread: true),
  Message(
      sender: currentUser,
      isLiked: true,
      text: " hello how are you ?  ",
      time: "7.03 PM",
      unread: false),
  Message(
      sender: currentUser,
      isLiked: false,
      text: "Hello how are you ? ,can you help me please ",
      time: "7.09 PM",
      unread: true),
  Message(
      sender: zezo,
      isLiked: false,
      text: "Hello how are you ? ",
      time: "7.03 PM",
      unread: false),
  Message(
      sender: currentUser,
      isLiked: false,
      text: "Hello how are you ? ,can you help me please ",
      time: "7.09 PM",
      unread: true),
  Message(
      sender: zezo,
      isLiked: false,
      text: "Hello how are you ? ",
      time: "7.03 PM",
      unread: false),
];
