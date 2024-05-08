import 'package:audiofy/app.dart';
import 'package:audiofy/bloc_observer.dart';
import 'package:audiofy/features/home/data/models/hive_boxes/song_model_hive.dart';
import 'package:audiofy/features/home/data/services/song_service.dart';
import 'package:audiofy/firebase_options.dart';
import 'package:audiofy/router/router.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

//1. Design Login Page
//2. Add snackbars for auth errors
//3. add unit tests/ widget tests
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  final AudioContext audioContext = AudioContext(
    iOS: AudioContextIOS(
      category: AVAudioSessionCategory.multiRoute,
      options: const {
        AVAudioSessionOptions.mixWithOthers,
      },
    ),
    android: const AudioContextAndroid(
      isSpeakerphoneOn: true,
      stayAwake: true,
      contentType: AndroidContentType.sonification,
      usageType: AndroidUsageType.assistanceSonification,
      audioFocus: AndroidAudioFocus.none,
    ),
  );
  AudioPlayer.global.setAudioContext(audioContext);
  await Hive.initFlutter();
  Hive.registerAdapter(SongModelAdapter());
  await SongService().initialize();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final AppRouter appRouter = router;
  Bloc.observer = SimpleBlocObserver();
  runApp(MainApplication(
    router: appRouter,
  ));
}
