import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class QuizCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 40,
            height: 40,
            child: Image.asset(AppImages.blocks),
          ),

          Text('Gerenciamento de Estado', style: AppTextStyles.heading,),
          Row(
            children: [
              Expanded(
                flex: 1,
                  child: Text("3/10", style: AppTextStyles.body11)),
              Expanded(
                  flex: 3,
                  child: ProgressIndicatorWidget(
                    value: 0.3,
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
