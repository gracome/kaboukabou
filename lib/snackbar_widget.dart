import 'package:flutter/material.dart';

class TopSnackBar extends StatefulWidget {
  final String message;
  final Duration duration;
  final Color backgroundColor;
  final TextStyle textStyle;

  const TopSnackBar({
    Key? key,
    required this.message,
    this.duration = const Duration(seconds: 5),
    this.backgroundColor = const Color(0xFF22A100),
    this.textStyle = const TextStyle(color: Colors.white, fontFamily: 'Riffic', fontSize: 16, fontWeight: FontWeight.w400, decoration: TextDecoration.none,),
  }) : super(key: key);

  @override
  _TopSnackBarState createState() => _TopSnackBarState();
}

class _TopSnackBarState extends State<TopSnackBar> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _offsetAnimation = Tween<Offset>(begin: Offset(0.0, -1.0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );
    _controller.forward();
    Future.delayed(widget.duration + Duration(milliseconds: 500), () {
      if (mounted) {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Container(
        color: widget.backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Center(
        child: Text(
          widget.message,
          style: widget.textStyle,
        ),
        )
      ),
    );
  }
}
