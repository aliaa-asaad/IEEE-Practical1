import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical1/widgets/route_button.dart';
import 'package:practical1/widgets/title_text.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/gradient_container.dart';
import 'package:practical1/constant.dart';

import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GradientContainer(),
                  SizedBox(
                    height: 40,
                  ),
                  //  #37ecba
                  TitleText(
                    title: 'SIGN UP',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomTextField(
                          text: 'Email',
                          input: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          text: 'Password',
                          input: TextInputType.visiblePassword,
                          value: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        CustomTextField(
                          text: 'Confirm Password',
                          input: TextInputType.visiblePassword,
                          value: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        RouteButton(
                          text: 'Sign Up',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RouteButton(
                    route: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => LoginScreen())));
                    },
                    text: 'Login',
                  )
                ],
              ),
            ),
          )),
    );
  }
}
