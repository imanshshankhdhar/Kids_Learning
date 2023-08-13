import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizler/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with
  SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
   Future.delayed(const Duration(seconds: 3),(){
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
     (_) => const HomePage(),));
   });
  }
  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.blue, Colors.deepPurple,],
          begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/dash.png'),
            const Text(" Quzziler",style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white,
            ),)
          ],
        ),
      ),
    );
  }
}

