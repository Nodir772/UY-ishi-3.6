import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class LocalizationViewModel extends ChangeNotifier {
  Locale _currentLocale = Locale("en");

  Locale get currentLocale => _currentLocale;

  set currentLocale(Locale locale) {
    _currentLocale = locale;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LocalizationViewModel()),
      ],
      builder:
          (context, child) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          MyLocalizations.delegate,
        ],
        supportedLocales: [Locale("uz"), Locale("en"), Locale("ru")],
        locale: context.watch<LocalizationViewModel>().currentLocale,
        home: MyHomePage(),
      ),
    );
  }
}


  of(BuildContext context) {}
class MyLocalizations {
  static var delegate;
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<LocalizationViewModel>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              context.read<LocalizationViewModel>().currentLocale = Locale(
                "uz",
              );
            },
            child: Text("uz"),
          ),
          TextButton(
            onPressed: () {
              context.read<LocalizationViewModel>().currentLocale = Locale(
                "ru",
              );
            },
            child: Text("ru"),
          ),
          TextButton(
            onPressed: () {
              context.read<LocalizationViewModel>().currentLocale = Locale(
                "en",
              );
            },
            child: Text("en"),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(MyLocalizations.of(context)!.trendingRecipe("Dianne")),
            Text(
              DateFormat.MMMM(
                vm.currentLocale.toString(),
              ).format(DateTime(2000, 01, 01)),
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          showDatePicker(
            context: context,
            firstDate: DateTime(1of0),
            lastDate: DateTime.now(),
          );
        },
        child: Text(MyLocalizations.of(context)!.hello),
      ),
    );
  }
}
