import 'package:flutter/material.dart';
import 'package:tracker/pages/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFAED),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFAED),
        automaticallyImplyLeading: false,
        title: const Text(
          "GPS Tracker",
          style: TextStyle(color: Colors.black87),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Profile();
                    },
                  ),
                );
              },
              child: Image.asset(
                "assets/images/user.png",
                width: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
