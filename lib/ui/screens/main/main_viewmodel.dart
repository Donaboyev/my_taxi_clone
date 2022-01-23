import 'package:stacked/stacked.dart';
import 'package:my_taxi_clone/app/locator.dart';
import 'package:my_taxi_clone/core/services/theme_service.dart';

class MainAppViewModel extends ReactiveViewModel {
  final ThemeService _themeService = locator<ThemeService>();

  bool get isDarkMode => _themeService.isDarkMode;

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_themeService];
}
