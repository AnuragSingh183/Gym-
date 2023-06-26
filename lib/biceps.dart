import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BicepExerciseScreen extends StatelessWidget {
  //const TricepExerciseScreen({super.key});
  static const routeName = "/bicep";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Bicep Exercises'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ExerciseCard(
            exerciseName: 'Dumbell Curl',
            //description: 'Description of Push-Ups exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/march/dumbbell-curl-header-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: 'Concentration Curl',
            //description: 'Description of Bench Press exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/march/concentration-curl-header-v2-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: 'Barbell Curl',
            // description: 'Description of Dumbbell Flyes exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/march/standing-barbell-curl-header-830x467.jpg',
          ),
          ExerciseCard(
            exerciseName: "Cable Curl",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/march/standing-cable-curl-header-v2-830x467.jpg",
          ),
          ExerciseCard(
            exerciseName: "Reverse-Grip Barbell Row",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/march/reverse-grip-barbell-row-header-830x467.jpg",
          ),
          ExerciseCard(
              exerciseName: "Preacher curl",
              imageUrl:
                  "https://thumbs.dreamstime.com/b/woman-doing-preacher-curl-biceps-exercise-attractive-woman-curly-hair-doing-preacher-curl-biceps-exercise-bench-ez-115698380.jpg"),
          ExerciseCard(
            exerciseName: "Ez Curl",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/march/biceps-for-beginners-header-830x467.jpg",
          )
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
