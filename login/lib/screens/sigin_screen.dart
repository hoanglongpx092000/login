import 'package:flutter/material.dart';
import 'package:login/screens/home_screen.dart';
import 'package:login/utils/color_utils.dart';
import 'package:login/reusable_widgets/reusable_widget.dart';
import 'package:login/screens/sigup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: [
              // logoWidget(
              //     "https://designs.vn/wp-content/images/09-08-2013/logo_lagi_8_resize.JPG"),
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                      "https://designs.vn/wp-content/images/09-08-2013/logo_lagi_8_resize.JPG"),
                )),
                height: 100,
              ),
              // Image.network(
              //     "https://designs.vn/wp-content/images/09-08-2013/logo_lagi_8_resize.JPG"),
              const SizedBox(
                height: 30,
              ),
              reusableTextField("Enter Username", Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, true,
                  _passwordTextController),
              SizedBox(
                height: 20,
              ),
              SignInSignUpButton(context, true, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }),
              signUpOption()
            ],
          ),
        )),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have account? ",
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
