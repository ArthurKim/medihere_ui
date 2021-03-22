import 'package:flutter/material.dart';
import 'package:medihere_ui/medihere_ui.dart';

class MSolidButton extends StatefulWidget {
  final ButtonSize size; // Button height.
  final Widget child;
  final void Function() onPressed;
  final ButtonStyle style;

  const MSolidButton._({
    Key key,
    @required this.size,
    @required this.child,
    @required this.style,
    this.onPressed,
  }) : super(key: key);

  factory MSolidButton.blue(
      {Key key,
      @required ButtonSize size,
      @required Widget child,
      void Function() onPressed}) {
    return MSolidButton._(
      size: size,
      child: child,
      style: ButtonUtil.sizeToSolidBlueStyle(size),
      onPressed: onPressed,
    );
  }

  @override
  _MSolidButtonState createState() => _MSolidButtonState();
}

class _MSolidButtonState extends State<MSolidButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: ButtonUtil.sizeToLp(widget.size),
      child: TextButton(
        style: widget.style,
        onPressed: widget.onPressed,
        child: widget.child,
      ),
    );
  }
}
