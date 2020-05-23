import 'package:my_app/app/locator.dart';
import 'package:my_app/services/third_party_services_module.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounterViewModel extends ReactiveViewModel {
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }
}