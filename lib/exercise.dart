// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class workouts extends StatelessWidget {
  final icon;
  final String ExerciseName;
  final String ExerciseNumber;
  const workouts(
      {Key? key,
      required this.icon,
      required this.ExerciseName,
      required this.ExerciseNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          //  color: Colors.grey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16)),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    )),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(ExerciseName,
                        // "chest",
                        style:
                            //TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                            GoogleFonts.openSans(
                                fontWeight: FontWeight.bold, fontSize: 15)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(ExerciseNumber.toString() + " exercises",
                        //"bruh",
                        style:
                            //TextStyle(
                            //  color: Colors.grey, fontWeight: FontWeight.bold),
                            GoogleFonts.openSans(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey)),
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        ));
  }
}
