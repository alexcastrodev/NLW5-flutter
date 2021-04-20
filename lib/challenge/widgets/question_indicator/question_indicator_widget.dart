import 'package:flutter/material.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator_widget.dart';


class QuestionIndicationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 20 ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Questão 04"),
              Text("de 10"),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ProgressIndicatorWidget(
            value: 0.7,
          )
        ],
      ),
    );
  }
}
