import 'package:eclinic_mobile/services/account_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AccountProvider provider = AccountProvider();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("eClinic",
              style: TextStyle(
                  color: Colors.white, decoration: TextDecoration.none)),
          const SizedBox(
            height: 40,
          ),
          _loginButton("Login")
        ],
      ),
    );
  }

  ElevatedButton _loginButton(String text) {
    return ElevatedButton(
        style:
            ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 30)),
        onPressed: () async {
          print("button pressed");
          // _showAlertDialog("show text");
          // await provider.tryToLogin();
          Navigator.pushNamed(context, '/news');
        },
        child: Text(
          text,
        ));
  }

  void _showAlertDialog(String buttonText) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Button Pressed'),
          content: Text('You pressed the $buttonText button.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
