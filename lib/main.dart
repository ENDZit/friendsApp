import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class FriendsList {
  final String leading;
  final String title;
  final String subtitle;
  final String screen;

  FriendsList(
      {required this.leading,
      required this.title,
      required this.subtitle,
      required this.screen});
}

List<FriendsList> listOfFriends = [
  FriendsList(
      leading: "assets/IvanJPG.jpg",
      title: 'Ivan Pirozhenko',
      subtitle: 'pirozhenkoivan1701@gmail.com',
      screen: '/IvanScreen'),
  FriendsList(
      leading: "assets/dionisJPG.jpg",
      title: 'Dionis Cherkezov',
      subtitle: 'dionisdionis17@gmail.com',
      screen: '/DionisScreen'),
  FriendsList(
      leading: "assets/vovaJPG.jpg",
      title: 'Vova Tcachenko',
      subtitle: 'vovatetarist@gmail.com',
      screen: '/VovaScreen'),
  FriendsList(
      leading: "assets/maxJPG.jpg",
      title: 'Max Martinov',
      subtitle: 'maxmart1567@gmail.com',
      screen: '/MaxScreen'),
  FriendsList(
      leading: "assets/nastiaJPG.jpg",
      title: 'Anastasia Topolniak',
      subtitle: 'topolniakanastasia@gmail.com',
      screen: '/AnastasiaScreen'),
  FriendsList(
      leading: "assets/mariaJPG.jpg",
      title: 'Maria Julovskaia',
      subtitle: 'mariast1243@gmail.com',
      screen: '/MariaScreen'),
  FriendsList(
      leading: "assets/simpleJPG.jpg",
      title: 'Alex Kostilyev',
      subtitle: 'kostilyev14@gmail.com',
      screen: '/AlexScreen'),
  FriendsList(
      leading: "assets/steveJPG.jpg",
      title: 'Steve',
      subtitle: 'stevemojang@gmail.com',
      screen: '/SteveScreen'),
  FriendsList(
      leading: "assets/sfJPG.jpg",
      title: 'Shadow Fiend',
      subtitle: '1000-7?@gmail.com',
      screen: '/SfScreen'),
  FriendsList(
      leading: "assets/goblinJPG.jpg",
      title: 'Goblin Green',
      subtitle: 'gold@gmail.com',
      screen: '/GoblinScreen'),
  FriendsList(
      leading: "assets/twitch.png",
      title: 'Twitch',
      subtitle: 'lovetwitch@gmail.com',
      screen: '/TwitchScreen'),
  FriendsList(
      leading: "assets/mcqueen.jpg",
      title: 'MCQUEEN',
      subtitle: 'winner@gmail.com',
      screen: '/McqueenScreen'),
  FriendsList(
      leading: "assets/pepe1.jpg",
      title: 'Frog Pepe',
      subtitle: 'pepe@gmail.com',
      screen: '/PepeScreen'),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainScreen(),
      initialRoute: '/',
      routes: {
        // '/': (context) => const HomeScreen(),
        '/IvanScreen': (context) => const IvanScreen(),
        '/DionisScreen': (context) => const DionisScreen(),
        '/VovaScreen': (context) => const VovaScreen(),
        '/MaxScreen': (context) => const MaxScreen(),
        '/AnastasiaScreen': (context) => const AnastasiaScreen(),
        '/MariaScreen': (context) => const MariaScreen(),
        '/AlexScreen': (context) => const AlexScreen(),
        '/SteveScreen': (context) => const SteveScreen(),
        '/SfScreen': (context) => const SfScreen(),
        '/GoblinScreen': (context) => const GoblinScreen(),
        '/TwitchScreen': (context) => const TwitchScreen(),
        '/McqueenScreen': (context) => const McqueenScreen(),
        '/PepeScreen': (context) => const PepeScreen(),
        '/FriendsScreen': (context) => const FriendsScreen(),
        '/InformationPage': (context) => const InformationPage(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Friends app"),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(
        child: Text("Hello world))"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Text("Navigation"),
            ),
            ListTile(
              title: const Text('My profile'),
              onTap: () {
                Navigator.pushNamed(context, '/InformationPage');
              },
            ),
            ListTile(
              title: const Text("Friends"),
              onTap: () {
                Navigator.pushNamed(context, '/FriendsScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Friends list"),cd 
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: listOfFriends.length,
        itemBuilder: (BuildContext context, int index) {
          FriendListItem item = FriendListItem(
              listOfFriends[index].leading,
              listOfFriends[index].title,
              listOfFriends[index].subtitle,
              listOfFriends[index].screen);
          return item;
        },
      ),
    );
  }
}

class FriendListItem extends StatelessWidget {
  String? imageUrl;
  String? name;
  String? email;
  String? screen;

  FriendListItem(this.imageUrl, this.name, this.email, this.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(context, '$screen');
      },
      //color: Colors.white10,
      child: ListTile(
        leading: ClipOval(
          child:
              Image.asset(imageUrl!, height: 50, width: 50, fit: BoxFit.cover),
        ),
        title: Text(name!),
        subtitle: Text(email!),
      ),
    );
  }
}
                          // SCREENS ! ! ! ! ! !

class IvanScreen extends StatelessWidget {
  const IvanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Ivan'),
        ));
  }
}

class DionisScreen extends StatelessWidget {
  const DionisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Dionis'),
        ));
  }
}

class VovaScreen extends StatelessWidget {
  const VovaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Vova'),
        ));
  }
}

class MaxScreen extends StatelessWidget {
  const MaxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Max'),
        ));
  }
}

class AnastasiaScreen extends StatelessWidget {
  const AnastasiaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Anastasia'),
        ));
  }
}

class MariaScreen extends StatelessWidget {
  const MariaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Maria'),
        ));
  }
}

class AlexScreen extends StatelessWidget {
  const AlexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Alex'),
        ));
  }
}

class SteveScreen extends StatelessWidget {
  const SteveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Steve'),
        ));
  }
}

class SfScreen extends StatelessWidget {
  const SfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Shadow Fiend'),
        ));
  }
}

class GoblinScreen extends StatelessWidget {
  const GoblinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Goblin'),
        ));
  }
}

class TwitchScreen extends StatelessWidget {
  const TwitchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Twitch'),
        ));
  }
}

class McqueenScreen extends StatelessWidget {
  const McqueenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Mcqueen'),
        ));
  }
}

class PepeScreen extends StatelessWidget {
  const PepeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text('Pepe'),
        ));
  }
}
                                        //INFORMATION PAGE ! ! ! ! !
enum Gender {
  male("Male"),
  female("Female");

  final String text;

  const Gender(this.text);
}
class InformationPage extends StatefulWidget {
  const InformationPage({super.key});

  @override
  InformationPageState createState() => InformationPageState();
}

class InformationPageState extends State<InformationPage> {
  String dropdownValue = 'Student';
  String globalPassword = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration page"),
        backgroundColor: Colors.blueAccent,
      ),
      body:  SingleChildScrollView( child:  Form(
        key: _formKey,
        child: Column(
          children: [
            // Form fields go here
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Your name',
                hintText: 'Enter your name',
              ),
              validator: (name) {
                if (name == "") {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Your email',
                hintText: 'Enter your email',
              ),
              validator: (email) {
                if (email == null || email == "") {
                  return 'Please enter your email';
                } else if (!email.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Your age',
                hintText: 'Enter your age',
              ),
              validator: (age) {
                if (age == "") {
                  return 'Please enter your age';
                }
                return null;
              },
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(2)
              ],
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Password', hintText: 'Enter your password'),
              obscureText: true,
              validator: (password1) {
                globalPassword = password1.toString();
                if (password1 == "") {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Confirm password',
                  hintText: 'Enter yor password'),
              obscureText: true,
              validator: (password2) {
                if (password2 == "") {
                  return 'Please enter your password';
                } else if (password2 != globalPassword) {
                  return 'Password isnt match';
                }
                return null;
              },
            ),
            GenderSelectionWidget(),
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Student', 'Worker', 'Pensioner']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            MaterialButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Perform submission logic
                }
              },
              color: Colors.black26,
              child: Container(
                constraints:
                const BoxConstraints(minWidth: 88.0, minHeight: 36.0),
                alignment: Alignment.center,
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
class GenderSelectionWidget extends StatefulWidget {
  const GenderSelectionWidget({super.key});

  @override
  _GenderSelectionWidgetState createState() => _GenderSelectionWidgetState();
}

class _GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  Gender? _selectedOption = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: Gender.values
          .map((option) => RadioListTile<Gender>(
        title: Text(option.text),
        value: option,
        groupValue: _selectedOption,
        onChanged: (value) {
          setState(() {
            _selectedOption = value!;
          });
        },
      ))
          .toList(),
    );
  }
}