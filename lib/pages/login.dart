import 'package:flutter/material.dart';
import 'package:tracker/components/login_controller.dart';
import 'package:tracker/pages/homepage.dart';
// import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/Sign_in.png",
                width: MediaQuery.of(context).size.width * .8,
              ),
              const SizedBox(height: 50),
              _signInButton(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _signInButton(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      signInWithGoogle().then((result) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const Home();
            },
          ),
        );
      });
    },
    style: ElevatedButton.styleFrom(
      primary: const Color(0xFFFFFAED),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Image(
              image: AssetImage("assets/images/google_logo.png"), height: 35.0),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Sign in with Google',
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          )
        ],
      ),
    ),
  );
}
