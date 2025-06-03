

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class selectionList extends StatefulWidget {
    final String linkRoute;
  final double height;
  final double width;
  final Color backgroundColor;
  final Widget child;
  final VoidCallback onTap;
  final double borderRadius;
  final double elevation;
  final Color shadowColor;
  final Color splashColor;
  final Duration animationDuration;
  final Color colorGradian1;
  final Color colorGradian2;


  const selectionList({
    Key? key,
    required this.child,
    required this.onTap,
    this.height = 50,
    this.width = 50,
    this.colorGradian1 = const Color.fromARGB(255, 210, 10, 10),
    this.colorGradian2 = const Color.fromARGB(255, 200, 191, 7),

    this.backgroundColor = const Color.fromARGB(255, 255, 254, 254),
    this.borderRadius = 0,
    this.elevation = 6,
    this.shadowColor = const Color(0x55000000),
    this.splashColor = const Color(0x220000FF),
    this.animationDuration = const Duration(milliseconds: 100),
    this.linkRoute = ""
  }) : super(key: key);

  @override
  State<selectionList> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<selectionList> {
  double _scale = 1.0;
  void _animateDown() {
    setState(() => _scale = 0.92);
  }

  Future<void> _animateUpAndCallback() async {
   await Future.delayed(Duration(milliseconds: 50)); // Cho hiệu ứng lún hiển thị
     if (!mounted) return;
        setState(() => _scale = 1.0);
    await Future.delayed(Duration(milliseconds: 50)); // Cho scale lên lại mượt
    if (!mounted) return;

    // widget.onTap(); 
    // Đợi một chút để animation hoàn tất trước khi gọi callback
    await Future.delayed(widget.animationDuration ~/ 2);
    if (!mounted) return;
    widget.onTap();
  }
  @override
  
  Widget build(BuildContext context) {
    return GestureDetector(
   
     onTapDown: (_) => _animateDown(),
      onTapUp: (_) => _animateUpAndCallback(),
      onTapCancel: () => _animateUpAndCallback(),
      child: AnimatedScale(
        scale: _scale,
        duration: widget.animationDuration,
        curve: Curves.easeOut,
        child: Material(
          elevation: widget.elevation,
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          shadowColor: widget.shadowColor,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                 Radius.circular(widget.borderRadius)
              ),
                gradient: LinearGradient(
                    colors: [widget.colorGradian1, widget.colorGradian2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
            child: SizedBox(
            
              width: widget.width,
              height: widget.height,
              child: Center(child: widget.child),
            ),
          ),
        ),
      ),
    );
  }
}
