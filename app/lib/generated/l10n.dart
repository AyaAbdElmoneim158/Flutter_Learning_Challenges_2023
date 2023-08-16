// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ِAnimals`
  String get title {
    return Intl.message(
      'ِAnimals',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Loin`
  String get LoinName {
    return Intl.message(
      'Loin',
      name: 'LoinName',
      desc: '',
      args: [],
    );
  }

  /// `Cat`
  String get CatName {
    return Intl.message(
      'Cat',
      name: 'CatName',
      desc: '',
      args: [],
    );
  }

  /// `Elephant`
  String get ElephantName {
    return Intl.message(
      'Elephant',
      name: 'ElephantName',
      desc: '',
      args: [],
    );
  }

  /// `Tiger`
  String get TigerName {
    return Intl.message(
      'Tiger',
      name: 'TigerName',
      desc: '',
      args: [],
    );
  }

  /// `Cow`
  String get CowName {
    return Intl.message(
      'Cow',
      name: 'CowName',
      desc: '',
      args: [],
    );
  }

  /// `sheep`
  String get SheepName {
    return Intl.message(
      'sheep',
      name: 'SheepName',
      desc: '',
      args: [],
    );
  }

  /// `flamingo`
  String get flamingoName {
    return Intl.message(
      'flamingo',
      name: 'flamingoName',
      desc: '',
      args: [],
    );
  }

  /// `giraffe`
  String get giraffeName {
    return Intl.message(
      'giraffe',
      name: 'giraffeName',
      desc: '',
      args: [],
    );
  }

  /// `horse`
  String get horseName {
    return Intl.message(
      'horse',
      name: 'horseName',
      desc: '',
      args: [],
    );
  }

  /// `rabbit`
  String get rabbitName {
    return Intl.message(
      'rabbit',
      name: 'rabbitName',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
