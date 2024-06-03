import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';
import 'package:path/path.dart' as path;

class SamplePlayer extends StatefulWidget {
  SamplePlayer({Key? key}) : super(key: key);

  @override
  _SamplePlayerState createState() => _SamplePlayerState();
}

class _SamplePlayerState extends State<SamplePlayer> {
  late FlickManager flickManager;
//   final picker = ImagePicker();
//   XFile? picked;
// void open()async{
//   try{
//     picked= await picker.pickImage(source: ImageSource.gallery);
//     final fileName= path.basename(picked!.path);
//    // File pickfile =File(picked!.path);
//   }catch (error) {
//     print("Exception during file fetching $error");
//   }
// }
  @override
  void initState()  {
    super.initState();
   // open();
   //  flickManager= FlickManager(videoPlayerController: VideoPlayerController.file(File(picked!.path)
   //
   //  ));
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl(Uri.parse('https://www.youtube.com/watch?v=OIj5T7ULBL4'
            //"https://youtu.be/6IeBIFZMlSQ?si=LwfHRtXj86KIs8BE"
        ),));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlickVideoPlayer(
          flickManager: flickManager
      ),
    );
  }
}