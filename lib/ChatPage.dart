import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                const Padding(padding: EdgeInsets.only(left: 20, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'MATCHES',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black45,
                          fontFamily: "SfPro",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(padding: const EdgeInsets.only(left: 20, right: 25),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26, // Couleur de l'ombre et opacité
                            spreadRadius: 2.5, // Rayon de diffusion
                            blurRadius: 3, // Flou
                            offset: Offset(0, 2), // Décalage de l'ombre
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/pp3.jpg'),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26, // Couleur de l'ombre et opacité
                            spreadRadius: 2.5, // Rayon de diffusion
                            blurRadius: 3, // Flou
                            offset: Offset(0, 2), // Décalage de l'ombre
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/pp2.jpg'),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26, // Couleur de l'ombre et opacité
                            spreadRadius: 2.5, // Rayon de diffusion
                            blurRadius: 3, // Flou
                            offset: Offset(0, 2), // Décalage de l'ombre
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/pp3.jpg'),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26, // Couleur de l'ombre et opacité
                            spreadRadius: 2.5, // Rayon de diffusion
                            blurRadius: 3, // Flou
                            offset: Offset(0, 2), // Décalage de l'ombre
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/pp2.jpg'),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26, // Couleur de l'ombre et opacité
                            spreadRadius: 2.5, // Rayon de diffusion
                            blurRadius: 3, // Flou
                            offset: Offset(0, 2), // Décalage de l'ombre
                          ),
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/pp3.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
                ),
                const SizedBox(height: 30,),
                Padding(padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black12, // Couleur de fond grise claire
                      borderRadius: BorderRadius.circular(14.0), // Bords arrondis
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15.0), // Espacement interne horizontal
                    child: const Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black45,
                                fontFamily: "SfPro",
                                fontWeight: FontWeight.w500,
                              ),
                            decoration: InputDecoration(
                              hintText: 'Shearch',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontSize: 18,
                                color: Colors.black45,
                                fontFamily: "SfPro",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          PhosphorIcons.magnifyingGlass,
                          size: 22.0,
                            color: Colors.black45
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                const Padding(padding: EdgeInsets.only(left: 20, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CHAT',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black45,
                          fontFamily: "SfPro",
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(left: 20, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/pp3.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Nathalie, 29',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black87,
                                      fontFamily: "SfPro",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(width: 8,),
                                  Container(
                                    width: 8, // Largeur du cercle
                                    height: 8, // Hauteur du cercle
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle, // Forme de cercle
                                      color: Colors.red, // Couleur rouge
                                    ),
                                  )
                                ],
                              ),
                              const Text(
                                '6 mins',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                  fontFamily: "SfPro",
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                          const Text(
                            'Tu voudrais pas manger tes morts?',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontFamily: "SfPro",
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                Padding(padding: EdgeInsets.only(left: 20, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/pp4.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Mia, 23',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black87,
                                      fontFamily: "SfPro",
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  const SizedBox(width: 8,),
                                ],
                              ),
                              const Text(
                                '1h',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black45,
                                  fontFamily: "SfPro",
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                          const Text(
                            'Ouais je suis de paris',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45,
                              fontFamily: "SfPro",
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          )
                        ],
                      ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
              ],
            ),
          )
      ),
    );
  }
}
