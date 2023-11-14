import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_management_practice/counter%20app/services/counter_service.dart';
import 'package:stacked_management_practice/counter%20app/views/counter_view.dart';
import 'package:stacked_management_practice/counter%20app/views/home_views.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: CounterView, initial: true),
  MaterialRoute(page: HomeViews),
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterService)
])
class App {}
