import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              // color: Colors.lightGreenAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Store App',
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.green.shade900,
                          offset: const Offset(3, 3),
                        )
                      ],
                    ),
                  ),
                  const Text(
                    'Masuk untuk melanjutkan',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        text: "Masuk dengan Google",
                        onPressed: () {},
                      ),
                      // SignInButton(
                      //   Buttons.Apple,
                      //   text: "Masuk dengan Apple ID",
                      //   onPressed: () {},
                      // ),
                      // SignInButton(
                      //   Buttons.Email,
                      //   text: "Masuk dengan Email",
                      //   onPressed: () {},
                      // ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        'By signing in you are agreeing to our',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      const Text(
                        'Terms and Privacy Policy',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
