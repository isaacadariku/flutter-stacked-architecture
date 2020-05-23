import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              // Text(model.title),
                                  ],
          ),
        ),
         floatingActionButton: FloatingActionButton(
     onPressed: () => model.navigateToHome(),
    ),
      ),
      viewModelBuilder: () => StartupViewModel(),
    );
  }
}