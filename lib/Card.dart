import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:glass/glass.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CardG extends StatelessWidget {
  const CardG({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 560,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/pp2.jpg'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.only(top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10),
                Expanded( // Utilisation d'Expanded pour que le Container occupe toute la largeur disponible
                  child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(width: 7), // Ajout d'un espace entre les objets de la Row
                Expanded( // Utilisation d'Expanded pour que le Container occupe toute la largeur disponible
                  child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(width: 7), // Ajout d'un autre espace entre les objets de la Row
                Expanded( // Utilisation d'Expanded pour que le Container occupe toute la largeur disponible
                  child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),

          Container(
            height: 300,
            width: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.0),
                ],
                stops: [0.0, 1],
              ),
            ),
          child: Container(
            height: 185,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GlassContainer(
                    height: 30,
                    width: 120,
                    blur: 4,
                    color: Colors.black12.withOpacity(0.4),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(0.3),
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '3KM AWAY',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: "SfPro",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 10),
                          child: Icon(
                            PhosphorIcons.paperPlaneTiltBold,
                            size: 17.0,
                            color: Color(0xffffffff),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  const Text(
                    'Phillipe M, 34',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: "SfPro",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 7,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GlassContainer(
                        height: 60,
                        width: 250,
                        blur: 4,
                        color: Colors.black12.withOpacity(0.9),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.red.withOpacity(0.2),
                            Colors.purpleAccent.withOpacity(0.2),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 10,),
                            Image.asset('assets/images/db.png', height: 50, width: 50,),
                            SizedBox(width: 10,),
                            const Text(
                              'ON AIR LDF',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: "SfPro",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      GlassContainer(
                        height: 60,
                        width: 90,
                        blur: 4,
                        color: Colors.black12.withOpacity(0.9),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.greenAccent.withOpacity(0.2),
                            Colors.blueAccent.withOpacity(0.2),
                          ],
                        ),
                        child: Image.asset('assets/images/gym.png', height: 50, width: 50,),
                      )
                    ],
                  ),
                  SizedBox(height: 7,)
                ],
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}