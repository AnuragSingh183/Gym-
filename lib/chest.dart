import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ChestExerciseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Chest Exercises'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ExerciseCard(
            exerciseName: 'Push-Ups',
            //description: 'Description of Push-Ups exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/march/push-up-header-830x467.jpg',
            videoUrl: "https://youtu.be/IODxDxX7oi4",
          ),
          ExerciseCard(
            exerciseName: 'Bench Press',
            //description: 'Description of Bench Press exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/march/barbell-bench-press-header-830x467.jpg',
            videoUrl: "https://youtu.be/vthMCtgVtFw",
          ),
          ExerciseCard(
            exerciseName: "Dumbell Pull Over",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/march/chest-dumbbell-pull-over-header-830x467.jpg",
            videoUrl: "https://youtu.be/5YStMv6m2g8",
          ),
          ExerciseCard(
            exerciseName: 'Machine Fly',
            // description: 'Description of Dumbbell Flyes exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/march/machine-fly-header-830x467.jpg',
            videoUrl: "https://youtu.be/u56jywgbvE4",
          ),
          ExerciseCard(
            exerciseName: "Dumbbell Press",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/march/dumbbell-bench-press-header-830x467.jpg",
            videoUrl: "https://youtu.be/SHsUIZiNdeY",
          ),
          ExerciseCard(
            exerciseName: "Chest Flyes",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/march/chest-fly-header-v2-830x467.jpg",
            videoUrl: "https://youtu.be/1SoJVttMI1w",
          ),
          ExerciseCard(
            exerciseName: "Incline Bench Press",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/march/incline-bench-press-header-830x467.jpg",
            videoUrl: "https://youtu.be/SrqOu55lrYU",
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
  final String videoUrl;

  const ExerciseCard(
      {super.key,
      required this.exerciseName,
      //required this.description,
      required this.imageUrl,
      required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Stack(
          children: [
            Column(
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
            Positioned(
                bottom: 12,
                right: 8,
                child: IconButton(
                  onPressed: () {
                    _launchURL(videoUrl);
                  },
                  icon: const Icon(
                    Icons.play_circle_fill,
                    size: 35,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
