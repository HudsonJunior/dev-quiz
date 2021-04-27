import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String level;

  LevelButtonWidget({
    Key? key,
    required this.level,
  })   : assert(
          ["Fácil", "Médio", "Difícil", "Perito"].contains(level),
        ),
        super(key: key);

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonFacil,
      "borderColor": AppColors.levelButtonBorderFacil,
      "fontColor": AppColors.levelButtonTextFacil,
    },
    "Médio": {
      "color": AppColors.levelButtonMedio,
      "borderColor": AppColors.levelButtonBorderMedio,
      "fontColor": AppColors.levelButtonTextMedio,
    },
    "Difícil": {
      "color": AppColors.levelButtonDificil,
      "borderColor": AppColors.levelButtonBorderDificil,
      "fontColor": AppColors.levelButtonTextDificil,
    },
    "Perito": {
      "color": AppColors.levelButtonPerito,
      "borderColor": AppColors.levelButtonBorderPerito,
      "fontColor": AppColors.levelButtonTextPerito,
    }
  };

  Color get buttonColor => config[level]!['color']!;

  Color get borderColor => config[level]!['borderColor']!;

  Color get fontColor => config[level]!['fontColor']!;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28.0),
            color: buttonColor,
            border: Border.fromBorderSide(BorderSide(
              color: borderColor,
            ))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 26.0,
            vertical: 6.0,
          ),
          child: Text(
            level,
            style: GoogleFonts.notoSans(
              color: fontColor,
              fontSize: 13,
            ),
          ),
        ),
      );
}
