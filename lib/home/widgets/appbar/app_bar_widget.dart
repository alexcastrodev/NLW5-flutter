import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(preferredSize: Size.fromHeight(250),
      child: Container(
        height: 250,
        child:Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("Olá, ", style: AppTextStyles.title,),
                          Text("Alex", style: AppTextStyles.titleBold,),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/10711649?v=4"
                            )
                        )
                    ),
                  ),
                ],
              ),
              height: 161,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  gradient: AppGradients.linear
              ),
            ),
            Align(
              alignment: Alignment(0.0, 1.1),
              child: ScoreCardWidget(),
            )
          ],
        )
      )
  );
}

