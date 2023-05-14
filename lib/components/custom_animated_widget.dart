import 'package:flutter/widgets.dart';

class CustomAnimatedWidget extends StatefulWidget {
  final Widget child;
  final int interval;
  final bool? isDelay;
  final TextDirection? direction;

  const CustomAnimatedWidget(
      {Key? key,
      required this.child,
      required this.interval,
      this.isDelay,
      this.direction})
      : super(key: key);

  @override
  State<CustomAnimatedWidget> createState() => _CustomAnimatedWidgetState();
}

class _CustomAnimatedWidgetState extends State<CustomAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animControllerSlideIn;
  late Animation<Offset> _slideIn;
  late Offset beginOffset;
  late Offset endOffset;

  @override
  void dispose() {
    _animControllerSlideIn.dispose();
    super.dispose();
  }

  @override
  void initState() {
    beginOffset =
        widget.direction == null || widget.direction == TextDirection.ltr
            ? const Offset(1.1, 0)
            : const Offset(-1.1, 0);
    endOffset =
        widget.direction == null || widget.direction == TextDirection.ltr
            ? const Offset(0, 0)
            : const Offset(0, 0);
    _animControllerSlideIn = AnimationController(
        duration: Duration(milliseconds: widget.interval), vsync: this);
    _slideIn = Tween<Offset>(begin: beginOffset, end: endOffset).animate(
        CurvedAnimation(parent: _animControllerSlideIn, curve: Curves.easeOut));

    if (widget.isDelay ?? false) {
      Future.delayed(Duration(milliseconds: widget.interval), () {
        if (mounted) {
          _animControllerSlideIn.forward();
        }
      });
    } else {
      if (mounted) {
        _animControllerSlideIn.forward();
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slideIn,
      child: widget.child,
    );
  }
}
