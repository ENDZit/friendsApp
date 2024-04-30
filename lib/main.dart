import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class FriendsList {
  final String leading;
  final String title;
  final String subtitle;

  FriendsList(
      {required this.leading, required this.title, required this.subtitle});
}

List<FriendsList> listOfFriends = [
  FriendsList(
      leading: "assets/IvanJPG.jpg",
      title: 'Ivan Pirozhenko',
      subtitle: 'pirozhenkoivan1701@gmail.com'),
  FriendsList(
      leading: "assets/dionisJPG.jpg",
      title: 'Dionis Cherkezov',
      subtitle: 'dionisdionis17@gmail.com'),
  FriendsList(
      leading: "assets/vovaJPG.jpg",
      title: 'Vova Tcachenko',
      subtitle: 'vovatetarist@gmail.com'),
  FriendsList(
      leading: "assets/maxJPG.jpg",
      title: 'Max Martinov',
      subtitle: 'maxmart1567@gmail.com'),
  FriendsList(
      leading: "assets/nastiaJPG.jpg",
      title: 'Anastasia Topolniak',
      subtitle: 'topolniakanastasia@gmail.com'),
  FriendsList(
      leading: "assets/mariaJPG.jpg",
      title: 'Maria Julovskaia',
      subtitle: 'mariast1243@gmail.com'),
  FriendsList(
      leading: "assets/simpleJPG.jpg",
      title: 'Alex Kostilyev',
      subtitle: 'kostilyev14@gmail.com'),
  FriendsList(
      leading: "assets/steveJPG.jpg",
      title: 'Steve',
      subtitle: 'stevemojang@gmail.com'),
  FriendsList(
      leading: "assets/sfJPG.jpg",
      title: 'Shadow Fiend',
      subtitle: '1000-7?@gmail.com'),
  FriendsList(
      leading: "assets/goblinJPG.jpg",
      title: 'Goblin Green',
      subtitle: 'gold@gmail.com'),
  FriendsList(
      leading: "assets/twitch.png",
      title: 'Twitch',
      subtitle: 'lovetwitch@gmail.com'),
  FriendsList(
      leading: "assets/mcqueen.jpg",
      title: 'MCQUEEN',
      subtitle: 'winner@gmail.com'),

  FriendsList(
      leading: "assets/pepe1.jpg",
      title: 'Frog Pepe',
      subtitle: 'pepe@gmail.com'),



];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Friends"),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: listOfFriends.length,
          itemBuilder: (BuildContext context, int index) {
            return MaterialButton(
              onPressed: () {},
              color: Colors.white10,
              child: ListTile(
                leading: ClipOval(
                  child: Image.asset(listOfFriends[index].leading,
                      height: 50, width: 50, fit: BoxFit.cover),
                ),
                title: Text(listOfFriends[index].title),
                subtitle: Text(listOfFriends[index].subtitle),
              ),
            );
          },
        ),
      ),
    );
  }
}
