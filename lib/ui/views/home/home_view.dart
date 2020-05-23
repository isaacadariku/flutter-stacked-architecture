import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
                      body: Container(
                        color: Colors.red,
                        child: Center(
                                child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border(left: BorderSide(color: Colors.blue, width: 13.0)),
                  borderRadius: BorderRadius.all( Radius.circular(5.0)
                            ),
                ),
              ),
              Text(model.title),
              SizedBox(
                  height: 20.0,
              ),
              Text(model.counter.toString()),
            ],
          ),
        ),
                      ),
         floatingActionButton: FloatingActionButton(
      onPressed: model.updateCounter,
    ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

