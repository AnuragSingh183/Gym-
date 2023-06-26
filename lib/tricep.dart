import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TricepExerciseScreen extends StatelessWidget {
  //const TricepExerciseScreen({super.key});
  static const routeName = "/tricep";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Tricep Exercises'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ExerciseCard(
            exerciseName: 'Skull Crusher',
            //description: 'Description of Push-Ups exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/april/ez-bar-skullcrusher-header-830x467.jpg',
            videoUrl: "https://youtu.be/d_KZxkY_0cM",
          ),
          ExerciseCard(
            exerciseName: 'Dumbbell Overhead Triceps Extension',
            //description: 'Description of Bench Press exercise...',

            imageUrl:
                'https://www.bodybuilding.com/images/2021/april/seated-triceps-press-header-830x467.jpg',
            videoUrl: "https://youtu.be/YbX7Wd8jQ-Q",
          ),
          ExerciseCard(
            exerciseName: 'Cable Overhead Extension',
            // description: 'Description of Dumbbell Flyes exercise...',
            imageUrl:
                'https://www.bodybuilding.com/images/2021/april/cable-overhead-triceps-ext-header-830x467.jpg',
            videoUrl: "https://youtu.be/GzmlxvSFE7A",
          ),
          ExerciseCard(
            exerciseName: "Cable Push Down",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/april/cable-rope-pushdown-header-830x467.jpg",
            videoUrl: "https://youtu.be/2-LAMcpzODU",
          ),
          ExerciseCard(
            exerciseName: "Bench Dip",
            imageUrl:
                "https://www.bodybuilding.com/images/2021/april/bench-dip-header-830x467.jpg",
            videoUrl: "https://youtu.be/jdFzYGmvDyg",
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
  final String videoUrl;

  const ExerciseCard(
      {required this.exerciseName,
      //required this.description,
      required this.imageUrl,
      required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   _launchUrl(videoUrl);
      // },
      child: Card(
        child: Stack(
          children: [
            Column(
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
                ),
              ],
            ),
            Positioned(
                bottom: 12,
                right: 8,
                child: IconButton(
                  onPressed: () {
                    _launchUrl(videoUrl);
                  },
                  icon: Icon(
                    Icons.play_circle_fill,
                    size: 35,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
