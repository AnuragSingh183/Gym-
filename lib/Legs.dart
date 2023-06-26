import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LegsExerciseScreen extends StatelessWidget {
  static const routeName = "/leg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Legs Exercises'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ExerciseCard(
            exerciseName: 'Barbell Back Squats',
            //description: 'Description of Push-Ups exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/april/barbell-back-squat-legs-header-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: 'Lunge',
            //description: 'Description of Bench Press exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/april/lunge-header-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: 'Leg Press',
            // description: 'Description of Dumbbell Flyes exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/april/leg-press-header-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: "Leg Curl",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/april/leg-curl-header-830x467.jpg",
          ),

          // Add more ExerciseCard widgets for other chest exercises
        ],
      ),
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final String exerciseName;
  // final String description;
  final String imageUrl;

  const ExerciseCard({
    required this.exerciseName,
    //required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          // Image.asset(
          //   imageUrl,
          //   fit: BoxFit.cover,
          //   height: 200,
          // ),
          Image(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.cover,
            height: 200,
          ),
          ListTile(
            title: Text(exerciseName,
                style: GoogleFonts.openSans(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            //subtitle: Text(description),
          ),
        ],
      ),
    );
  }
}
