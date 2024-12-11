import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Animate extends StatefulWidget {
  const Animate({super.key});

  @override
  _AnimateState createState() => _AnimateState();
}

class _AnimateState extends State<Animate> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
      // value: 0.5,
    );

    // Bắt đầu animation khi màn hình được hiển thị
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _replayAnimation() {
    // Phát lại animation từ đầu
    _controller.reset();
    _controller.forward();
  }

  // void _changeRotation(double value) {
  //   setState(() {
  //     _controller.value = value;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Animate Screen'),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: _controller,
              child: const Text(
                'Fade & Scale!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ).animate().scale(duration: 500.ms),
            ),

            const SizedBox(height: 20),
            SlideTransition(
              position: _controller.drive(
                Tween<Offset>(
                  begin: const Offset(-1.0, 0.0),
                  end: Offset.zero,
                ),
              ),
              child: const Text(
                'Slide from Left!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20),
            RotationTransition(
              turns: _controller,
              child: const Text(
                'Rotate!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            // Rainbow Animation using flutter_animate
            const Text(
              'Rainbow Animation!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
                .animate(
              onPlay: (controller) => controller.repeat(),
            )
                //skeleton
                .shimmer(
              colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
                Colors.purple,
              ],
              duration: 3.seconds,
            ),

            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _replayAnimation,
              child: const Text('Replay Animation'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: Animate()));
}
