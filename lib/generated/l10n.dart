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

  /// `gogoPassword`
  String get app_name {
    return Intl.message(
      'gogoPassword',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `ALL`
  String get tab_bar_title_all {
    return Intl.message(
      'ALL',
      name: 'tab_bar_title_all',
      desc: '',
      args: [],
    );
  }

  /// `LOGIN`
  String get tab_bar_title_login {
    return Intl.message(
      'LOGIN',
      name: 'tab_bar_title_login',
      desc: '',
      args: [],
    );
  }

  /// `BANK`
  String get tab_bar_title_bank {
    return Intl.message(
      'BANK',
      name: 'tab_bar_title_bank',
      desc: '',
      args: [],
    );
  }

  /// `NOTES`
  String get tab_bar_title_note {
    return Intl.message(
      'NOTES',
      name: 'tab_bar_title_note',
      desc: '',
      args: [],
    );
  }

  /// `total {count}`
  String secure_info_total_count(int count) {
    return Intl.message(
      'total $count',
      name: 'secure_info_total_count',
      desc: 'Show secure information total count',
      args: [count],
    );
  }

  /// `Add first password`
  String get empty_description {
    return Intl.message(
      'Add first password',
      name: 'empty_description',
      desc: '',
      args: [],
    );
  }

  /// `Edit {title}`
  String edit_title(String title) {
    return Intl.message(
      'Edit $title',
      name: 'edit_title',
      desc: 'Show editor title',
      args: [title],
    );
  }

  /// `enter {item}`
  String input_hint(String item) {
    return Intl.message(
      'enter $item',
      name: 'input_hint',
      desc: 'input hint',
      args: [item],
    );
  }

  /// `Name`
  String get input_title_name {
    return Intl.message(
      'Name',
      name: 'input_title_name',
      desc: '',
      args: [],
    );
  }

  /// `Web Url`
  String get input_title_web_url {
    return Intl.message(
      'Web Url',
      name: 'input_title_web_url',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get input_title_account {
    return Intl.message(
      'Account',
      name: 'input_title_account',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get input_title_password {
    return Intl.message(
      'Password',
      name: 'input_title_password',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get input_title_note {
    return Intl.message(
      'Note',
      name: 'input_title_note',
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
      Locale.fromSubtags(languageCode: 'zh'),
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
