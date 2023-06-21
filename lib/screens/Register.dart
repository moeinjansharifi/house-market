import 'package:flutter/material.dart';
// import 'package:House_Market/screens/LoginPage.dart';
import 'package:House_Market/components/Button_Content.dart';
import 'package:House_Market/components/Title_Content.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                child: TitleContent(title: 'Register'),
              ),
              Row(
                children: [
                  Input(
                    labelText: 'Full Name',
                    hintText: 'Enter your full name ',
                  ),
                ],
              ),
              Row(
                children: [
                  Input(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                  ),
                ],
              ),
              Row(
                children: [
                  Input(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                  ),
                ],
              ),
              Row(
                children: [
                  Input(
                    labelText: 'Confirm Password',
                    hintText: 'Enter your confirm password',
                  ),
                ],
              ),
              ButtomContent(text: 'Register'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have a account?",
                    style: TextStyle(),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => LoginPage(),
                      // ),
                      // );
                    },
                    child: Text(
                      "Login ",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Input extends StatelessWidget {
  Input({@required this.labelText, @required this.hintText});
  final labelText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 5),
            child: Text(
              labelText,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 30),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 0.0),
                ),
                hintStyle: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
                filled: true,
                fillColor: Color(0xFFF1EFEF),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 17, vertical: 12),
                hintText: hintText,
              ),
            ),
          )
        ],
      ),
    );
  }
}
