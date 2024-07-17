
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  bool isPlaying = false;
  late final AudioPlayer player;
  late final AssetSource path;

  Duration _duration = const Duration();
  Duration _position = const Duration();

  @override
  void initState() {
    initPlayer();
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Future initPlayer() async {
    player = AudioPlayer();
    path = AssetSource('audio/song.mp3');

    // set a callback for changing duration
    player.onDurationChanged.listen((Duration d) {
      setState(() => _duration = d);
    });

    // set a callback for position change
    player.onPositionChanged.listen((Duration p) {
      setState(() => _position = p);
    });

    // set a callback for when audio ends
    player.onPlayerComplete.listen((_) {
      setState(() => _position = _duration);
    });
  }

  void playPause() async {
    if (isPlaying) {
      player.pause();
      isPlaying = false;
    } else {
      player.play(path);
      isPlaying = true;
    }
    setState(() {});
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: InkWell(
          borderRadius: BorderRadius.circular(90),
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, size: 20),
        ),
        backgroundColor: Color.fromRGBO(102, 29, 137, 1),
        foregroundColor: Colors.white,
        title: Text(
          "Now Playing",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              width: 330,
              height: 345,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color.fromRGBO(150, 150, 150, 230),
              ),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/music_np.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),


            Slider(
              value: _position.inSeconds.toDouble(),
              onChanged: (value) async {
                await player.seek(Duration(seconds: value.toInt()));
                setState(() {});
              },
              min: 0,
              max: _duration.inSeconds.toDouble(),
              inactiveColor: Colors.grey,
              activeColor: Color.fromRGBO(112, 43, 146, 1),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    _formatDuration(_position),
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(74, 74, 74, 1),
                    ),
                  ),
                  Text(
                    _formatDuration(_duration),
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(74, 74, 74, 1),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(90),
                  onTap: () {
                    player.seek(Duration(seconds: _position.inSeconds - 10));
                    setState(() {});
                  },
                  child: Image.asset(
                    'assets/images/seconds_np.png',
                    height: 30,
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  borderRadius: BorderRadius.circular(90),
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/backward_np.png',
                    height: 30,
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  borderRadius: BorderRadius.circular(90),
                  onTap: playPause,
                  child: Icon(
                    isPlaying ? Icons.pause_circle : Icons.play_circle,
                    color: Color.fromRGBO(112, 43, 146, 1),
                    size: 50,
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  borderRadius: BorderRadius.circular(90),
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/forward_np.png',
                    height: 30,
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  borderRadius: BorderRadius.circular(90),
                  onTap: () {
                    player.seek(Duration(seconds: _position.inSeconds + 10));
                    setState(() {});
                  },
                  child: Image.asset(
                    'assets/images/seconds_np2.png',
                    height: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'dart:collection';
//
// import 'package:flutter/material.dart';
// import 'package:audio_service/audio_service.dart';
// import 'package:just_audio/just_audio.dart';
//
// class Demo extends StatefulWidget {
//   const Demo({super.key});
//
//   @override
//   State<Demo> createState() => _DemoState();
// }
//
// class _DemoState extends State<Demo> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(fontFamily: 'Mulish'),
//       home: Scaffold(
//         backgroundColor: Colors.white,
//       ),
//     );
//   }
// }
//
// class MyAudioHand extends BaseAudioHandler with QueueHandler, SeekHandler {
//   AudioPlayer audioPlay = AudioPlayer();
//
//   UriAudioSource _createAudioSource(MediaItem item) {
//     return ProgressiveAudioSource(Uri.parse(item.id));
//   }
//
//   void _listanForCurrentSongIndexChange() {
//     audioPlay.currentIndexStream.listen(
//       (index) {
//         final playlist = queue.value;
//         if (index == null || playlist.isEmpty) return;
//         mediaItem.add(playlist[index]);
//       },
//     );
//   }
//
//   void _broadcastState(PlaybackEvent event){
//     playbackState.add(
//       playbackState.value.copyWith(
//         controls: [
//           MediaControl.skipToPrevious,
//           if(audioPlay.playing)MediaControl.pause else MediaControl.play,
//           MediaControl.skipToNext,
//
//         ],
//         systemActions: const{
//           MediaAction.seek,
//           MediaAction.seekForward,
//           MediaAction.seekBackward,
//
//         },
//         processingState: {
//           ProcessingState.idle : AudioProcessingState.idle,
//           ProcessingState.loading : AudioProcessingState.loading,
//           ProcessingState.buffering : AudioProcessingState.buffering,
//           ProcessingState.ready : AudioProcessingState.ready,
//           ProcessingState.completed : AudioProcessingState.completed,
//
//         }[audioPlay.processingState]!,
//
//         playing: audioPlay.playing,
//         updatePosition: audioPlay.position,
//         bufferedPosition: audioPlay.bufferedPosition,
//         speed: audioPlay.speed,
//         queueIndex: audioPlay.currentIndex,
//
//       )
//     );
//   }
//
//
//
//
//
//
//
// }

// import 'package:flutter/material.dart';
// import 'package:audio_service/audio_service.dart';
// import 'package:just_audio/just_audio.dart';
//
// void main() {
//   AudioService.start(
//     backgroundTaskEntrypoint: () => AudioPlayerTask(),
//     androidNotificationChannelName: 'Audio Service Demo',
//     androidNotificationIcon: 'mipmap/ic_launcher',
//   );
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Audio Player Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Audio Player Demo'),
//         ),
//         body: AudioPlayerScreen(),
//       ),
//     );
//   }
// }
//
// class AudioPlayerScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           AudioService.play();
//         },
//         child: Text('Play'),
//       ),
//     );
//   }
// }
//
// class AudioPlayerTask extends BackgroundAudioTask {
//   final AudioPlayer _audioPlayer = AudioPlayer();
//
//   @override
//   Future<void> onStart(Map<String, dynamic>? params) async {
//     AudioServiceBackground.setQueue([]);
//     AudioServiceBackground.setState(
//       controls: [MediaControl.play],
//       playing: true,
//       position: Duration.zero,
//     );
//   }
//
//   @override
//   Future<void> onStop() async {
//     await _audioPlayer.stop();
//     await _audioPlayer.dispose();
//     AudioServiceBackground.setState(
//       controls: [],
//       playing: false,
//       position: Duration.zero,
//     );
//     await super.onStop();
//   }
// }
