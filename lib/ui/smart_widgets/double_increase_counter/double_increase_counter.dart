import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'double_increase_counter_viewmodel.dart';

class DoubleIncreaseCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewModel>.reactive(
      builder: (context, model, child) => GestureDetector(
        onTap: model.updateCounter,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Tap to increment the Counter',
                textAlign: TextAlign.center,
              ),
              Text(model.counter.toString())
            ],
          ),
        ),
      ),
      viewModelBuilder: () => DoubleIncreaseCounterViewModel(),
    );
  }
}