import 'package:flutter/material.dart';
import 'package:flutter_learntwo/Demo/Demo_Note/demo_login.dart';
import 'package:flutter_learntwo/Demo/Demo_Note/demo_main.dart';
import 'package:flutter_learntwo/Demo/Demo_Note/demo_signup.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  final _appBarTextSkip = 'Skip';
  final _bodyText =
      'Welcome to Note Taking: Simplify Your Note-Taking Journey!';
  final _button1Text = 'Login';
  final _button2Text = 'Sign Up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        actions: [
          Padding(
            padding: PaddingItems.appBarButtonPadding,
            child: TextButton(
              style: StyleItems().appBarStyle(),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
              child:
                  Text(_appBarTextSkip, style: StyleItems().appBarTextStyle()),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: SizedBox(
              height: 350,
              width: 500,
              child: Padding(
                padding: PaddingItems.picturePadding,
                child: Image.asset('assets/note.png'),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: PaddingItems.picturePadding,
              child: Text(
                _bodyText,
                style: StyleItems().bodyTextStyle(),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: PaddingItems.button1Padding,
            child: SizedBox(
              width: 200,
              height: 80,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: StyleItems().button1Style(),
                child: Text(
                  _button1Text,
                  style: StyleItems().button1TextStyle(),
                ),
              ),
            ),
          ),
          Padding(
            padding: PaddingItems.button2Padding,
            child: SizedBox(
              width: 200,
              height: 80,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DemoSignUp()),
                  );
                },
                style: StyleItems().button2Style(),
                child: Text(
                  _button2Text,
                  style: StyleItems().button2TextStyle(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaddingItems {
  static EdgeInsets appBarButtonPadding =
      const EdgeInsets.only(top: 23, right: 28);
  static EdgeInsets picturePadding = const EdgeInsets.only(top: 20);
  static EdgeInsets bodyTextPadding = const EdgeInsets.only(top: 20);
  static EdgeInsets button1Padding = const EdgeInsets.only(top: 40);
  static EdgeInsets button2Padding = const EdgeInsets.only(top: 30);
}

class StyleItems {
  ButtonStyle appBarStyle() {
    return TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
    );
  }

  TextStyle appBarTextStyle() =>
      const TextStyle(fontSize: 25, color: Colors.black54);

  ButtonStyle button1Style() {
    return ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 255, 209, 3),
      shape: const StadiumBorder(),
    );
  }

  TextStyle bodyTextStyle() {
    return const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w800,
        fontSize: 30,
        height: 1.4);
  }

  ButtonStyle button2Style() {
    return TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
    );
  }

  TextStyle button1TextStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 20,
    );
  }

  TextStyle button2TextStyle() {
    return const TextStyle(fontSize: 20, color: Colors.black87);
  }
}
