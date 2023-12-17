import 'package:flutter/material.dart';

class FadeFromBottom extends StatefulWidget {
  final Widget child;

  FadeFromBottom({required this.child});
  @override
  State<FadeFromBottom> createState() => _FadeFromBottomState();
}

class _FadeFromBottomState extends State<FadeFromBottom>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _opacityAnimation;

  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _opacityAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
    _controller.forward();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: _slideAnimation,
        child: FadeTransition(opacity: _opacityAnimation, child: widget.child));
  }
}
