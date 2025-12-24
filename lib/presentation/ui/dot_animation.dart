import 'dart:async';

import 'package:flutter/material.dart';

class DotAnimation extends StatefulWidget {
  const DotAnimation({
    Color? dotColor = Colors.black,
    super.key,
    this.numberOfDots = 3,
    this.dotHeight = 8,
    this.animationDuration = const Duration(milliseconds: 400),
    this.delayBetweenDots = const Duration(milliseconds: 200),
  }) : color = dotColor ?? Colors.black;

  final int numberOfDots;
  final double dotHeight;
  final Duration animationDuration;
  final Duration delayBetweenDots;
  final Color color;

  @override
  State<DotAnimation> createState() => _DotAnimationState();
}

class _DotAnimationState extends State<DotAnimation> with TickerProviderStateMixin {
  late final List<AnimationController> _controllers = List.generate(
    widget.numberOfDots,
    (index) => AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    ),
  );
  late final List<Animation<double>> _animations = _controllers
      .map(
        (controller) => Tween<double>(begin: 0, end: -widget.dotHeight).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0,
              1,
              curve: Curves.easeInQuart,
            ),
          ),
        ),
      )
      .toList();

  @override
  void initState() {
    super.initState();
    _startAnimations();
  }

  void _startAnimations() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      for (var i = 0; i < _controllers.length; i++) {
        Future.delayed(Duration(milliseconds: i * widget.delayBetweenDots.inMilliseconds), () {
          unawaited(_controllers[i].repeat(reverse: true));
        });
      }
    });
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: .min,
      crossAxisAlignment: .start,
      spacing: 4,
      children: _animations
          .map(
            (animation) => AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, animation.value),
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: widget.color,
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              },
            ),
          )
          .toList(),
    );
  }
}
