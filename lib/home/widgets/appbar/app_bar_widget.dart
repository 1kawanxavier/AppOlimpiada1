import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/home/widgets/score_card/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget() : super(
    preferredSize: Size.fromHeight(250),
    child: Container(
      height: 250,
      child: Stack(
        
        children: [
          Container( 
            height: 161,
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(gradient: AppGradients.linear), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Olá, ",
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: " Kawan",
                        style: TextStyle(
                          color: Colors.white, 
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://avatars.githubusercontent.com/u/123658645?v=4"),
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: ScoreCardWidget())
        ],
      ),
    ),
  );
}
