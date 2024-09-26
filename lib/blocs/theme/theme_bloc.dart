// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  // final WeatherBloc weatherBloc;

  ThemeBloc(
      // required this.weatherBloc,
      )
      : super(ThemeState.inital()) {
    // weatherSubscription = weatherBloc.stream.listen((WeatherState weatherState) {
    //   if (weatherState.weather.temp > kWarmOrNot) {
    //     add(const ChangeThemeEvent(themeStatus: ThemeStatus.light));
    //   } else {
    //     add(const ChangeThemeEvent(themeStatus: ThemeStatus.dark));
    //   }
    // });
    on<ChangeThemeEvent>(_toggleTheme);
  }

  void _toggleTheme(ChangeThemeEvent event, Emitter<ThemeState> emit) {
    emit(state.copyWith(themeStatus: event.themeStatus));
  }
}
