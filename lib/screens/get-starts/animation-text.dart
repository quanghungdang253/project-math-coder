import 'dart:async';
import 'package:flutter/material.dart';

class AnimatedTextWords extends StatefulWidget {
  @override
  _AnimatedTextWordsState createState() => _AnimatedTextWordsState();
}

class _AnimatedTextWordsState extends State<AnimatedTextWords> {
  final String fullText = "Chào mừng bạn đến với MathCoder nơi chia sẻ kiến thức về Toán và Lập trình  ";
  List<String> words = [];
  int currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    words = fullText.split("");
    _startAnimation();
  }

  void _startAnimation() {
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {
        currentIndex++;
        if (currentIndex > words.length) {
          currentIndex = 0; // Reset lại để chạy lại từ đầu
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      
      opacity: 0.7,
      child:     Container(
      height: 120,
      color: Colors.white,
       
       margin: EdgeInsets.only(top: 40),
       child: Center(
      child: Text(
           words.take(currentIndex).join(""),
           textAlign: TextAlign.center,
           style: TextStyle(
           decoration: TextDecoration.none,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 0, 0, 0)
      ),

      ),
    ),
    ) ,
    );

   
  }
}
