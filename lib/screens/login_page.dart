import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: HexColor("#b9c2d1"),
              ),
            ),
            Text(
              "Sign In",
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Text(isCreateAccountClicked
                      ? 'Create Acct Form'
                      : 'Login Form'),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: HexColor('#fd5b28'),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  icon: const Icon(Icons.portrait_rounded),
                  label: Text(isCreateAccountClicked
                      ? 'Already Have an Account'
                      : 'Create Account'),
                  onPressed: () {
                    setState(() {
                      if (!isCreateAccountClicked) {
                        isCreateAccountClicked = true;
                      } else {
                        isCreateAccountClicked = false;
                      }
                    });
                  },
                ),
              ],
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: HexColor("#69639f"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
