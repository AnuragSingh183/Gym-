import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShoulderExerciseScreen extends StatelessWidget {
  //const TricepExerciseScreen({super.key});
  static const routeName = "/shoulder";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Shoulder Exercises'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ExerciseCard(
            exerciseName: 'Seated Dumbbell Press',
            //description: 'Description of Push-Ups exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/april/seated-dumbbell-shoulder-press-header-v2-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: 'Upright Row',
            //description: 'Description of Bench Press exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/april/ez-bar-upright-row-header-v2-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: 'Lateral Raise',
            // description: 'Description of Dumbbell Flyes exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/april/lateral-raise-header-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: "Machine Lateral Raises",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/april/machine-pump-shoulder-workout-header-830x467.jpg",
          ),
          ExerciseCard(
            exerciseName: "Front Raise",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/april/front-dumbbell-raise-header-830x467.jpg",
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
