library bouncingbutton;

import 'package:flutter/material.dart';

class BouncingWidget extends StatefulWidget {
  const BouncingWidget(
      {Key? key,
      required this.child,
      this.offsetYaxis = 0.09,
      this.offsetXaxis = 0,
      this.milliSecondDuration = 400})
      : super(key: key);
  final Widget child;
  // A widget to bounce widget and attract users
  //

  final double offsetYaxis;
  final int milliSecondDuration;
  final double offsetXaxis;

  @override
  State<BouncingWidget> createState() => _BouncingWidgetState();
}

class _BouncingWidgetState extends State<BouncingWidget>
    with TickerProviderStateMixin {
  /// Animation controls
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: widget.milliSecondDuration),
  )..repeat(reverse: true);
  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: Offset(widget.offsetXaxis, widget.offsetYaxis),
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
