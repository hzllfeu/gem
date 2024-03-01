import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:gem/Card.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Padding(padding: EdgeInsets.only(left: 25, right: 25),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Swipe',
                    style: TextStyle(
                      fontSize: 34,
                      color: Colors.redAccent,
                      fontFamily: "SfPro",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(
                    PhosphorIcons.slidersHorizontal,
                    size: 32.0,
                    color: Colors.grey,
                  )
                ],
              ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                width: 380,
                height: 560,
                child: AppinioSwiper(
                  cardCount: 100,
                  invertAngleOnBottomDrag: false,
                  allowUnSwipe: false,
                  backgroundCardCount: 0,
                  allowUnlimitedUnSwipe: true,
                  cardBuilder: (BuildContext context, int index) {
                    return const CardG();
                  },
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
