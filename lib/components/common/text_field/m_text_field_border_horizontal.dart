import 'package:flutter/material.dart';
import 'package:medihere_ui/medihere_ui.dart';

class MTextFieldBorderHorizontal extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String placeholder;
  final TextFieldDirection direction;
  final FocusNode focusNode;

  MTextFieldBorderHorizontal._(
      {Key key,
      this.controller,
      this.label,
      this.placeholder,
      this.direction,
      this.focusNode})
      : super(key: key);

  factory MTextFieldBorderHorizontal.vertical({
    Key key,
    TextEditingController controller,
    String label,
    String placeholder,
    FocusNode focusNode,
  }) {
    return MTextFieldBorderHorizontal._(
      key: key,
      controller: controller,
      label: label,
      placeholder: placeholder,
      direction: TextFieldDirection.vertical,
      focusNode: focusNode,
    );
  }

  factory MTextFieldBorderHorizontal.horizontal({
    Key key,
    TextEditingController controller,
    String label,
    String placeholder,
    FocusNode focusNode,
  }) {
    return MTextFieldBorderHorizontal._(
      key: key,
      controller: controller,
      label: label,
      placeholder: placeholder,
      direction: TextFieldDirection.horizontal,
      focusNode: focusNode,
    );
  }

  @override
  _MTextFieldBorderHorizontalState createState() =>
      _MTextFieldBorderHorizontalState();
}

class _MTextFieldBorderHorizontalState
    extends State<MTextFieldBorderHorizontal> {
  @override
  Widget build(BuildContext context) {
    if (widget.direction == TextFieldDirection.vertical) {
      return InkWell(
        onTap: widget.focusNode.hasFocus
            ? null
            : () => widget.focusNode.requestFocus(),
        focusColor: Colors.white,
        hoverColor: Colors.white,
        highlightColor: Colors.white,
        splashColor: Colors.black.withAlpha(25),
        child: AbsorbPointer(
          absorbing: !widget.focusNode.hasFocus,
          child: TextField(
            focusNode: widget.focusNode,
            style: MTextStyles.bold[21].copyWith(color: MTextColors.primary),
            decoration: InputDecoration(
              prefixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.label,
                    style: MTextStyles.bold[14].copyWith(
                      color: MColors.gray[600],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              // prefixIcon: Container(
              //   //width: 40,
              //   padding: const EdgeInsets.only(right:29.0),
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     widget.label,
              //     style: MTextStyles.bold[14].copyWith(
              //       color: MColors.gray[600],
              //     ),
              //     textAlign: TextAlign.left,
              //   ),
              // ),
              contentPadding:
                  EdgeInsets.only(top: 4, bottom: 7, left: 4, right: 4),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: MColors.red[700]),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: MColors.gray[200],
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: MColors.blue[500],
                ),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: MColors.red[700],
                ),
              ),
              hintStyle: MTextStyles.bold[21].copyWith(
                color: MColors.gray[100],
              ),
              hintText: widget.placeholder,
            ),
            controller: widget.controller,
          ),
        ),
      );
    } else {
      // TODO: 수평형 텍스트필드 구현
      return SizedBox.shrink();
    }
  }
}
