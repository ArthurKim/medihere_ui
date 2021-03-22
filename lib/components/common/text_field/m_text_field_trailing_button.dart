import 'package:flutter/material.dart';

class MTextFieldTrailingButton extends StatefulWidget {
  final Widget child;
  final void Function() onTap;
  final double width;
  final double height;

  MTextFieldTrailingButton.image({Key key, this.child, this.onTap})
      : this.width = 32,
        this.height = 46,
        super(key: key);

  MTextFieldTrailingButton.text({Key key, this.child, this.onTap})
      : this.width = 48,
        this.height = 46,
        super(key: key);

  @override
  _MTextFieldTrailingButtonState createState() =>
      _MTextFieldTrailingButtonState();
}

class _MTextFieldTrailingButtonState extends State<MTextFieldTrailingButton> {
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.attach(context);
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: _focusNode,
      canRequestFocus: false,
      descendantsAreFocusable: false,
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          alignment: Alignment.center,
          width: widget.width,
          height: widget.height,
          child: SizedBox(
            width: 20,
            height: 20,
            child: widget.child,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
