import 'package:flutter/material.dart';
import 'package:learn_flutter/materi/06_stateless_and_stateful_widget.dart';
import 'package:learn_flutter/materi/07_anonymous_method.dart';
import 'package:learn_flutter/materi/08_text_style.dart';
import 'package:learn_flutter/materi/09_list_and_list_view.dart';
import 'package:learn_flutter/materi/10_animated_container_and_gesture_detector.dart';
import 'package:learn_flutter/materi/11_flexible_widget.dart';
import 'package:learn_flutter/materi/12_stack_and_align_widget.dart';
import 'package:learn_flutter/materi/13_image_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageWidget(),
    );
  }
}