import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackExerciseScreen extends StatelessWidget {
  //const TricepExerciseScreen({super.key});
  static const routeName = "/back";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Back Exercises'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ExerciseCard(
            exerciseName: 'Pull Up',
            //description: 'Description of Push-Ups exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/march/pull-up-header-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: 'Deadlift',
            //description: 'Description of Bench Press exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/march/deadlift-header-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: 'Lat Pull Down',
            // description: 'Description of Dumbbell Flyes exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/march/lat-pull-down-header-v2-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: "Single Arm Dumbell Row",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/march/single-arm-dumbbell-row-header-830x467.jpg",
          ),
          ExerciseCard(
            exerciseName: "Seated Row",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/march/seated-row-header-830x467.jpg",
          ),
          ExerciseCard(
              exerciseName: "Bent Over Row",
              imageUrl:
                  "https://www.bodybuilding.com/images/2021/march/bent-over-row-header-830x467.jpg")
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
