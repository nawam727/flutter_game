import 'package:flutter/material.dart';

import 'onboarding.dart';

class welcomePage1 extends StatelessWidget {
  const welcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // Define your fem value or import it from somewhere else

    // Function to navigate to the sign-up page after a delay
    Future<void> navigateToSignUpPage() async {
      await Future.delayed(const Duration(seconds: 3)); // Wait for 20 seconds
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => onboarding()),
      );
    }

    // Start the navigation when the widget is built
    navigateToSignUpPage();

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          const Image(
            image: AssetImage('assets/welcome.png'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          // Centered Content
          Center(
            child: CirclesAnimation(fem: fem),
          ),
        ],
      ),
    );
  }
}

class CirclesAnimation extends StatefulWidget {
  final double fem;

  const CirclesAnimation({super.key, required this.fem});

  @override
  // ignore: library_private_types_in_public_api
  _CirclesAnimationState createState() => _CirclesAnimationState();
}

class _CirclesAnimationState extends State<CirclesAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000), // Adjust the duration here
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 194 * widget.fem,
      height: 194 * widget.fem,
      decoration: BoxDecoration(
        color: Color(0x8906ee6a),
        borderRadius: BorderRadius.circular(97 * widget.fem),
      ),
      child: Stack(
        children: [
          // First Circle
          Positioned(
            left: 15 * widget.fem,
            top: 15 * widget.fem,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Opacity(
                  opacity: _controller.value,
                  child: child,
                );
              },
              child: Container(
                width: 164 * widget.fem,
                height: 164 * widget.fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(82 * widget.fem),
                  color: Color(0xff06ee6a),
                ),
              ),
            ),
          ),

          // Second Circle
          Positioned(
            left: 27 * widget.fem,
            top: 27 * widget.fem,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Opacity(
                  opacity: 1 - _controller.value, // Reverse opacity
                  child: child,
                );
              },
              child: Container(
                width: 140 * widget.fem,
                height: 140 * widget.fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70 * widget.fem),
                  color: Color(0xff049cec),
                ),
              ),
            ),
          ),

          // Third Circle
          Positioned(
            left: 40 * widget.fem,
            top: 40 * widget.fem,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Opacity(
                  opacity: _controller.value,
                  child: child,
                );
              },
              child: Container(
                width: 114 * widget.fem,
                height: 114 * widget.fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(57 * widget.fem),
                  color: Color(0xff001863),
                ),
              ),
            ),
          ),

          // Fourth Circle (Centered)
          Positioned(
            left: 56 * widget.fem,
            top: 56 * widget.fem,
            child: Container(
              width: 81 * widget.fem,
              height: 81 * widget.fem,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.5 * widget.fem),
                color: Color(0xff001863),
              ),
              child: Center(
                child: Image.asset(
                  'assets/Skillup.png', // Add your Skillup image asset
                  width: 60 * widget.fem,
                  height: 60 * widget.fem,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
