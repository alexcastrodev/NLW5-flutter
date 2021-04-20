import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  final String variant;

  LevelButtonWidget({
    Key? key,
    required this.label,
    this.variant = "normal",
  }) : assert(["normal", "warning", "success", "danger"].contains(variant)) , super (key: key);

  final config = {
      "normal": {
        "color": AppColors.levelButtonFacil,
        "borderColor": AppColors.levelButtonBorderFacil,
        "fontColor": AppColors.levelButtonTextFacil,
      },
      "success": {
        "color": AppColors.levelButtonMedio,
        "borderColor": AppColors.levelButtonBorderMedio,
        "fontColor": AppColors.levelButtonTextMedio,
      },
      "warning": {
        "color": AppColors.levelButtonDificil,
        "borderColor": AppColors.levelButtonBorderDificil,
        "fontColor": AppColors.levelButtonTextDificil,
      },
      "danger": {
        "color": AppColors.levelButtonPerito,
        "borderColor": AppColors.levelButtonBorderPerito,
        "fontColor": AppColors.levelButtonTextPerito,
      }
    };


  Color get color => config[variant]!['color']!;
  Color get borderColor => config[variant]!['borderColor']!;
  Color get fontColor => config[variant]!['fontColor']!;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.fromBorderSide(
          BorderSide(color: borderColor)
        ),
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26, vertical: 6 ),
        child: Text(label, style: GoogleFonts.notoSans(
            color: fontColor,
            fontSize: 13
        )),
      ),
    );
  }
}
