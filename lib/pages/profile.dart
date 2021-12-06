import 'package:flutter/material.dart';
import 'package:tracker/components/login_controller.dart';
import 'package:flutter/widgets.dart';
import 'login.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFAED),
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset("assets/images/back.png"),
          ),
        ),
        backgroundColor: const Color(0xFFFFFAED),
        title: Text(
          name!,
          style: const TextStyle(color: Colors.black87),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                imageUrl!,
              ),
              radius: 60,
              backgroundColor: Colors.transparent,
            ),
            const SizedBox(height: 40),
            const Text(
              'NAME',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            Text(
              name!,
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'EMAIL',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            Text(
              email!,
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                signOutGoogle();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) {
                  return const Login();
                }), ModalRoute.withName('/'));
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Sign Out',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
