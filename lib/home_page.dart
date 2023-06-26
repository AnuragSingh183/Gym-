import 'package:dribbleui/back.dart';
import 'package:dribbleui/chest.dart';
import 'package:dribbleui/emoji_face.dart';
import 'package:dribbleui/exercise.dart';
import 'package:dribbleui/main.dart';
import 'package:dribbleui/tricep.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

String getCurrentDate() {
  final now = DateTime.now();
  final formatter = DateFormat("EEE, dd/MM/yyyy");
  return formatter.format(now);
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.add_home_outlined), label: ""),
      ]),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Anurag Singh",
                          // style: TextStyle(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.bold,

                          //     fontSize: 24),
                          style: GoogleFonts.openSans(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            //fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          getCurrentDate(),
                          style: GoogleFonts.openSans(color: Colors.white),
                        )
                      ],
                    ),
                    Container(
                      // decoration: BoxDecoration(
                      //     color: Colors.blue[600],
                      //     borderRadius: BorderRadius.circular(12)),
                      // padding: EdgeInsets.all(12),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.notifications),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "search",
                        style: GoogleFonts.openSans(
                            color: Colors.black, fontSize: 18),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "How do you feel?",
                      // style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     fontSize: 20,
                      //     color: Colors.white),
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const EmojiFace(
                          emojiface: "😒",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Pain",
                          style: GoogleFonts.openSans(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        EmojiFace(
                          emojiface: "💪",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Pumped",
                          style: GoogleFonts.openSans(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        EmojiFace(
                          emojiface: "🏋️‍♂️",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "PR",
                          style: GoogleFonts.openSans(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        EmojiFace(
                          emojiface: "😎",
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Dope",
                          style: GoogleFonts.openSans(color: Colors.white),
                          //style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              child: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Exercises",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(() => ChestExerciseScreen());
                                //print("tapped");
                              },
                              child: const workouts(
                                icon: Icons.fitness_center,
                                ExerciseName: "Chest Workout",
                                ExerciseNumber: "7",
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                //  print("tapped");
                                //Get.to(() => TricepExerciseScreen());
                                Navigator.of(context).pushNamed("/tricep");
                              },
                              child: const workouts(
                                icon: Icons.fitness_center,
                                ExerciseName: "Tricep Workout",
                                ExerciseNumber: "5",
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed("/bicep");
                              },
                              child: const workouts(
                                icon: Icons.fitness_center,
                                ExerciseName: "Biceps Workout",
                                ExerciseNumber: "7",
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/shoulder");
                              },
                              child: const workouts(
                                icon: Icons.fitness_center,
                                ExerciseName: "Shoulder Workout",
                                ExerciseNumber: "5",
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                //Get.toNamed();
                                Get.to(() => BackExerciseScreen());
                                //   Navigator.of(context)
                                //.pushNamed(BackExerciseScreen.routeName);
                              },
                              child: const workouts(
                                icon: Icons.fitness_center,
                                ExerciseName: "Back Workout",
                                ExerciseNumber: "6",
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed("/leg");
                              },
                              child: const workouts(
                                icon: Icons.fitness_center,
                                ExerciseName: "Legs Workout",
                                ExerciseNumber: "4",
                              ),
                            ),
                            // workouts(
                            //   icon: Icons.fitness_center,
                            //   ExerciseName: "Core Workout",
                            //   ExerciseNumber: "16",
                            // ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          )
        ],
      )),
    );
  }
}
