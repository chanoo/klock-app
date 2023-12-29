import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SignInViewModel>(context, listen: false);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              "img_characters",
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 150.0),
                  child: Text(
                    "평생 지켜질 공부습관\n평생 친구와 함께",
                    style: TextStyle(
                      color: FancyColor.text.color, // Define this color
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Image.asset("ic_logo_klock"), // Ensure the color is set
                ),
                Spacer(),
                FancyButton( // Create a custom FancyButton widget
                  title: "Apple로 로그인",
                  onPressed: () {
                    viewModel.signInWithApple();
                  },
                  icon: Image.asset("ic_apple"),
                ),
                SizedBox(height: 12),
                FancyButton(
                  title: "카카오로 로그인",
                  onPressed: () {
                    viewModel.signInWithKakao();
                  },
                  icon: Image.asset("ic_kakao"),
                ),
                SizedBox(height: 24),
                // ... other buttons
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Define SignInViewModel similar to your SwiftUI ViewModel
class SignInViewModel extends ChangeNotifier {
  void signInWithApple() {
    // Implement sign-in logic
  }

  void signInWithKakao() {
    // Implement sign-in logic
  }

  // ... other methods
}

// Define FancyButton widget here
class FancyButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Widget icon;

  FancyButton({required this.title, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      label: Text(title),
      onPressed: onPressed,
      // Style your button here
    );
  }
}
