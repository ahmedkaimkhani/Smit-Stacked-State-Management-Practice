import 'package:stacked/stacked.dart';
import 'package:stacked_management_practice/counter%20app/app/app.locator.dart';

import '../services/counter_service.dart';

class HomeViewsModel extends BaseViewModel {
  final counterService = locator<CounterService>();
}
