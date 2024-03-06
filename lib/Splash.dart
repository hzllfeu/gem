import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:gem/Card.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 380,
                  child: Image.asset("assets/images/hero.png"),
                ),
                SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Find your ',
                      style: TextStyle(
                        fontSize: 38,
                        color: Colors.black87,
                        fontFamily: "SfPro",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'first',
                      style: TextStyle(
                        fontSize: 38,
                        color: Colors.deepOrange,
                        fontFamily: "SfPro",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'bolics ',
                      style: TextStyle(
                        fontSize: 38,
                        color: Colors.deepOrange,
                        fontFamily: "SfPro",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'matches.',
                      style: TextStyle(
                        fontSize: 38,
                        color: Colors.black87,
                        fontFamily: "SfPro",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Join us and socialize to find your next',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontFamily: "SfPro",
                  ),
                ),
                Text(
                  'gym bro or crush',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontFamily: "SfPro",
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.black87,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Get started',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: "SfPro",
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(width: 30,),
                          Icon(
                            PhosphorIcons.arrowUpRightBold,
                            size: 24.0,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/apple.png', height: 30,),
                        ],
                      )
                    ),
                    Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.white, Color.fromARGB(255, 189, 189, 189)],
                            ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/google.png', height: 30,),
                          ],
                        )
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ? ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontFamily: "SfPro",
                      ),
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.deepOrange,
                        fontFamily: "SfPro",
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ],
            ),
      ),
    );
  }
}
