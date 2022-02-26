import 'package:fanpage_app/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();
  final imageUrl =
      'https://scontent.fatl1-2.fna.fbcdn.net/v/t39.30808-6/274691283_371174904829722_8155092361967285998_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_ohc=1qymWrGGxCgAX8FiSTs&_nc_oc=AQkmhJVchDdIpu4hzeg1XMIicM3k97xcsQbLwgud1Po8zdkYLHnWtmfF6PvXwDoH3I_Awxf0j3BY9hTFi7hI50W7&tn=mvys7yKoBPXRhjB9&_nc_ht=scontent.fatl1-2.fna&oh=00_AT-0d6nMMLqssaLQUkayR0KunXP3EEKwboIxAFE-LOMjgg&oe=621E27C9';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Welcome To my Fan Page. My name is Gerard Ortiz I was born on February 1 and when I grow up I will be a Superhero. My dad said sorry and that he will end the app soon. He just love to spend time with me and forget to finish his assigments on time :)',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: Text(' Gerard Ortiz Fan Page '),
        backgroundColor: Colors.blue[200],
        elevation: 0.0,
        actions: <Widget>[
          TextButton.icon(
            icon: Icon(Icons.person),
            label: Text('logout'),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
    );
  }
}
