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
    assert(_current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
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
    assert(instance != null, 'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `reviews`
  String get reviews {
    return Intl.message(
      'reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Opinions, next to the booksy spoons there is a tag Verified Booksy users - the opinions about the Booksy spoons ensure that every registered user of Booksy uses the spoons. Only after the provision of a given service, rekisteröity käyttäjä Booksy receives the following opinions`
  String get reviews_info {
    return Intl.message(
      'Opinions, next to the booksy spoons there is a tag Verified Booksy users - the opinions about the Booksy spoons ensure that every registered user of Booksy uses the spoons. Only after the provision of a given service, rekisteröity käyttäjä Booksy receives the following opinions',
      name: 'reviews_info',
      desc: '',
      args: [],
    );
  }

  /// `about us`
  String get about_us {
    return Intl.message(
      'about us',
      name: 'about_us',
      desc: '',
      args: [],
    );
  }

  /// `Contact & Business Hours`
  String get contact {
    return Intl.message(
      'Contact & Business Hours',
      name: 'contact',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get o_r {
    return Intl.message(
      'OR',
      name: 'o_r',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message(
      'or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `continue with google`
  String get continue_with_google {
    return Intl.message(
      'continue with google',
      name: 'continue_with_google',
      desc: '',
      args: [],
    );
  }

  /// `continue with Facebook`
  String get continue_with_Facebook {
    return Intl.message(
      'continue with Facebook',
      name: 'continue_with_Facebook',
      desc: '',
      args: [],
    );
  }
  /// `the field empty`
  String get the_field_empty {
    return Intl.message(
      'the field empty',
      name: 'the_field_empty',
      desc: '',
      args: [],
    );
  }

  /// `signup to book and manage your appointments`
  String get signup_to_book_and_manage_your_appointments {
    return Intl.message(
      'signup to book and manage your appointments',
      name: 'signup_to_book_and_manage_your_appointments',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `email format dosent correct`
  String get email_format_dosent_correct {
    return Intl.message(
      'email format dosent correct',
      name: 'email_format_dosent_correct',
      desc: '',
      args: [],
    );
  }

  /// `email address`
  String get email_address {
    return Intl.message(
      'email address',
      name: 'email_address',
      desc: '',
      args: [],
    );
  }

  /// `login to book and manage your appointments`
  String get login_to_book_and_manage_your_appointments {
    return Intl.message(
      'login to book and manage your appointments',
      name: 'login_to_book_and_manage_your_appointments',
      desc: '',
      args: [],
    );
  }

  /// `Get started`
  String get get_started {
    return Intl.message(
      'Get started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `the field is empty`
  String get the_field_is_empty {
    return Intl.message(
      'the field is empty',
      name: 'the_field_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `name dosent corect`
  String get name_dosent_corect {
    return Intl.message(
      'name dosent corect',
      name: 'name_dosent_corect',
      desc: '',
      args: [],
    );
  }

  /// `email format dosent corect`
  String get email_format_dosent_corect {
    return Intl.message(
      'email format dosent corect',
      name: 'email_format_dosent_corect',
      desc: '',
      args: [],
    );
  }

  /// `password must beat least characters long`
  String get password_must_beat_least_characters_long {
    return Intl.message(
      'password must beat least characters long',
      name: 'password_must_beat_least_characters_long',
      desc: '',
      args: [],
    );
  }

  /// `password format dosent correct`
  String get password_format_dosent_correct {
    return Intl.message(
      'password format dosent correct',
      name: 'password_format_dosent_correct',
      desc: '',
      args: [],
    );
  }

  /// `password must beat most characters short`
  String get password_must_beat_most_characters_short {
    return Intl.message(
      'password must beat most characters short',
      name: 'password_must_beat_most_characters_short',
      desc: '',
      args: [],
    );
  }

  /// `password2`
  String get password2 {
    return Intl.message(
      'password2',
      name: 'password2',
      desc: '',
      args: [],
    );
  }

  /// `user name`
  String get user_name {
    return Intl.message(
      'user name',
      name: 'user_name',
      desc: '',
      args: [],
    );
  }

  /// `if member?`
  String get if_member {
    return Intl.message(
      'if member?',
      name: 'if_member',
      desc: '',
      args: [],
    );
  }

  /// `login now`
  String get login_now {
    return Intl.message(
      'login now',
      name: 'login_now',
      desc: '',
      args: [],
    );
  }

  /// `Not a member?`
  String get not_a_member {
    return Intl.message(
      'Not a member?',
      name: 'not_a_member',
      desc: '',
      args: [],
    );
  }

  /// `Register now`
  String get register_now {
    return Intl.message(
      'Register now',
      name: 'register_now',
      desc: '',
      args: [],
    );
  }

  /// `home`
  String get home {
    return Intl.message(
      'home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `my booking`
  String get my_booking {
    return Intl.message(
      'my booking',
      name: 'my_booking',
      desc: '',
      args: [],
    );
  }

  /// `profile`
  String get profile {
    return Intl.message(
      'profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Find best vaccinate, treatment...`
  String get find_best_vaccinate_treatment {
    return Intl.message(
      'Find best vaccinate, treatment...',
      name: 'find_best_vaccinate_treatment',
      desc: '',
      args: [],
    );
  }

  /// `booking`
  String get booking {
    return Intl.message(
      'booking',
      name: 'booking',
      desc: '',
      args: [],
    );
  }

  /// `book`
  String get book {
    return Intl.message(
      'book',
      name: 'book',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get services {
    return Intl.message(
      'Services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `portfolio`
  String get portfolio {
    return Intl.message(
      'portfolio',
      name: 'portfolio',
      desc: '',
      args: [],
    );
  }

  /// `details`
  String get details {
    return Intl.message(
      'details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Tuesday`
  String get tuesday {
    return Intl.message(
      'Tuesday',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `monday`
  String get monday {
    return Intl.message(
      'monday',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Wednesday`
  String get wednesday {
    return Intl.message(
      'Wednesday',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `thursday`
  String get thursday {
    return Intl.message(
      'thursday',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `friday`
  String get friday {
    return Intl.message(
      'friday',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `saturday`
  String get saturday {
    return Intl.message(
      'saturday',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `sunday`
  String get sunday {
    return Intl.message(
      'sunday',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }

  /// `submit`
  String get submit {
    return Intl.message(
      'submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `pleas add commitment`
  String get pleas_add_commitment {
    return Intl.message(
      'pleas add commitment',
      name: 'pleas_add_commitment',
      desc: '',
      args: [],
    );
  }

  /// `Choose the language`
  String get choose_the_language {
    return Intl.message(
      'Choose the language',
      name: 'choose_the_language',
      desc: '',
      args: [],
    );
  }

  /// `booking list`
  String get booking_list {
    return Intl.message(
      'booking list',
      name: 'booking_list',
      desc: '',
      args: [],
    );
  }

  /// `services manage`
  String get services_manages {
    return Intl.message(
      'services manage',
      name: 'services_manages',
      desc: '',
      args: [],
    );
  }

  /// `accepted`
  String get accepted {
    return Intl.message(
      'accepted',
      name: 'accepted',
      desc: '',
      args: [],
    );
  }

  /// `rejected`
  String get rejected {
    return Intl.message(
      'rejected',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `add about As`
  String get add_about_as {
    return Intl.message(
      'add about As',
      name: 'add_about_as',
      desc: '',
      args: [],
    );
  }

  /// `update about As`
  String get update_about_as {
    return Intl.message(
      'update about As',
      name: 'update_about_as',
      desc: '',
      args: [],
    );
  }

  /// `add phone`
  String get add_phone {
    return Intl.message(
      'add phone',
      name: 'add_phone',
      desc: '',
      args: [],
    );
  }

  /// `update phone`
  String get update_phone {
    return Intl.message(
      'update phone',
      name: 'update_phone',
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
      Locale.fromSubtags(languageCode: 'fr'),
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