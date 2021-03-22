import 'package:flutter/material.dart';
import 'package:medihere_ui/medihere_ui.dart';

class MButtonStyles {
  /// 버튼의 Color만 지정함, TextStyle까지 지정된 public 변수들을 사용하도록 하자.
  /// public 변수 [solidBlueXL, ...]
  static final ButtonStyle _solidBlue = ButtonStyle(
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 16),
    ),
    foregroundColor: MaterialStateProperty.all(Colors.white),
    backgroundColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return MColors.gray[80];
        } else {
          return MColors.blue[500];
        }
      },
    ),
    overlayColor: MaterialStateProperty.all(MColors.blue[700]),
  );
  static final solidBlueXL = _solidBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.black[21]),
  );
  static final solidBlueL = _solidBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.black[18]),
  );
  static final solidBlueM = _solidBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.black[16]),
  );
  static final solidBlueS = _solidBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.black[14]),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static final ButtonStyle _outlinedBlue = ButtonStyle(
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 16),
    ),
    foregroundColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return MColors.gray[80];
        } else {
          return MColors.blue[800];
        }
      },
    ),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    overlayColor: MaterialStateProperty.all(MColors.blue[100]),
  );
  static final outlinedBlueXL = _outlinedBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[21]),
  );
  static final outlinedBlueL = _outlinedBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[18]),
  );
  static final outlinedBlueM = _outlinedBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[16]),
  );
  static final outlinedBlueS = _outlinedBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[14]),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static final ButtonStyle _outlinedGray = ButtonStyle(
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 16),
    ),
    foregroundColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return MColors.gray[80];
        } else {
          return MColors.gray[600];
        }
      },
    ),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    overlayColor: MaterialStateProperty.all(MColors.gray[80]),
  );
  static final outlinedGrayXL = _outlinedGray.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[21]),
  );
  static final outlinedGrayL = _outlinedGray.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[18]),
  );
  static final outlinedGrayM = _outlinedGray.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[16]),
  );
  static final outlinedGrayS = _outlinedGray.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[14]),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static final ButtonStyle _textBlue = ButtonStyle(
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 16),
    ),
    foregroundColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return MColors.gray[80];
        } else {
          return MColors.blue[800];
        }
      },
    ),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    overlayColor: MaterialStateProperty.all(MColors.blue[100]),
  );
  static final textBlueXL = _textBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[21]),
  );
  static final textBlueL = _textBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[18]),
  );
  static final textBlueM = _textBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[16]),
  );
  static final textBlueS = _textBlue.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[14]),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static final ButtonStyle _textGray = ButtonStyle(
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 16),
    ),
    foregroundColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return MColors.gray[80];
        } else {
          return MColors.gray[600];
        }
      },
    ),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    overlayColor: MaterialStateProperty.all(MColors.gray[80]),
  );
  static final textGrayXL = _textGray.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[21]),
  );
  static final textGrayL = _textGray.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[18]),
  );
  static final textGrayM = _textGray.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[16]),
  );
  static final textGrayS = _textGray.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[14]),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  static final ButtonStyle _textRed = ButtonStyle(
    padding: MaterialStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 16),
    ),
    foregroundColor: MaterialStateProperty.resolveWith(
      (states) {
        if (states.contains(MaterialState.disabled)) {
          return MColors.gray[80];
        } else {
          return MColors.red[700];
        }
      },
    ),
    backgroundColor: MaterialStateProperty.all(Colors.white),
    overlayColor: MaterialStateProperty.all(MColors.red[100]),
  );
  static final textRedXL = _textRed.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[21]),
  );
  static final textRedL = _textRed.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[18]),
  );
  static final textRedM = _textRed.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[16]),
  );
  static final textRedS = _textRed.copyWith(
    textStyle: MaterialStateProperty.all(MTextStyles.bold[14]),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
