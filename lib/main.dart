import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'blocs/blocs.dart';
import 'constants.dart/constants.dart';
import 'presentations/pages/pages.dart';
import 'repositors/weather_repository.dart';
import 'package:http/http.dart' as http;

import 'services/weather_servces.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => WeatherRepository(weatherApiServces: WeatherApiServices(httpClient: http.Client())),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => WeatherBloc(weatherRepository: context.read<WeatherRepository>())),
          BlocProvider(create: (context) => TempSettingBloc()),
          BlocProvider(create: (context) => ThemeBloc()),
        ],
        child: BlocListener<WeatherBloc, WeatherState>(
          listener: (context, state) {
            if (state.weather.temp > kWarmOrNot) {
              context.read<ThemeBloc>().add(const ChangeThemeEvent(themeStatus: ThemeStatus.light));
            } else {
              context.read<ThemeBloc>().add(const ChangeThemeEvent(themeStatus: ThemeStatus.dark));
            }
          },
          child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Weather',
                  theme: state.themeStatus == ThemeStatus.light ? ThemeData.light() : ThemeData.dark(),
                  home: const HomePage());
            },
          ),
        ),
      ),
    );
  }
}
