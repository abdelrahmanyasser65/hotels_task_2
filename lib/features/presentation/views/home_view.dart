import 'package:flutter/material.dart';
import 'package:hotels_task2/features/presentation/views/widget/build_app_bar.dart';
import 'package:hotels_task2/features/presentation/views/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(context),
      body:const HomeViewBody(),

    );
  }
}
