library bouncingbutton;

import 'package:flutter/material.dart';

class BouncingWidget extends StatefulWidget {
  const BouncingWidget({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  State<BouncingWidget> createState() => _BouncingWidgetState();
}

class _BouncingWidgetState extends State<BouncingWidget>
    with TickerProviderStateMixin {
  /// Animation controls
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 400),
  )..repeat(reverse: true);
  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: Offset(0, 0.09),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation, child: widget.child);
  }
}
