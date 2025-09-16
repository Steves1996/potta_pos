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

class I18n {
  I18n();

  static I18n? _current;

  static I18n get current {
    assert(_current != null,
        'No instance of I18n was loaded. Try to initialize the I18n delegate before accessing I18n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I18n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I18n();
      I18n._current = instance;

      return instance;
    });
  }

  static I18n of(BuildContext context) {
    final instance = I18n.maybeOf(context);
    assert(instance != null,
        'No instance of I18n present in the widget tree. Did you add I18n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I18n? maybeOf(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }

  /// `Email or Phone Number`
  String get login_email_or_phone {
    return Intl.message(
      'Email or Phone Number',
      name: 'login_email_or_phone',
      desc: '',
      args: [],
    );
  }

  /// `Ce champ est obligatoire`
  String get empty_field {
    return Intl.message(
      'Ce champ est obligatoire',
      name: 'empty_field',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get login_password {
    return Intl.message(
      'Password',
      name: 'login_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Search Product`
  String get search_product {
    return Intl.message(
      'Search Product',
      name: 'search_product',
      desc: '',
      args: [],
    );
  }

  /// `Selected Table`
  String get selected_table {
    return Intl.message(
      'Selected Table',
      name: 'selected_table',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart {
    return Intl.message(
      'Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Add Customer`
  String get add_customer {
    return Intl.message(
      'Add Customer',
      name: 'add_customer',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Pay`
  String get confirm_pay {
    return Intl.message(
      'Confirm Pay',
      name: 'confirm_pay',
      desc: '',
      args: [],
    );
  }

  /// `Enter Telephone`
  String get phone {
    return Intl.message(
      'Enter Telephone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Name : `
  String get name {
    return Intl.message(
      'Name : ',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Payment Received`
  String get pay_receive {
    return Intl.message(
      'Payment Received',
      name: 'pay_receive',
      desc: '',
      args: [],
    );
  }

  /// `Return home`
  String get return_home {
    return Intl.message(
      'Return home',
      name: 'return_home',
      desc: '',
      args: [],
    );
  }

  /// `Print Receipt`
  String get print_receipt {
    return Intl.message(
      'Print Receipt',
      name: 'print_receipt',
      desc: '',
      args: [],
    );
  }

  /// `New Contact`
  String get new_contact {
    return Intl.message(
      'New Contact',
      name: 'new_contact',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get first_name {
    return Intl.message(
      'First Name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get last_name {
    return Intl.message(
      'Last Name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `Display Name`
  String get display_name {
    return Intl.message(
      'Display Name',
      name: 'display_name',
      desc: '',
      args: [],
    );
  }

  /// `Contact Detail`
  String get contact_detail {
    return Intl.message(
      'Contact Detail',
      name: 'contact_detail',
      desc: '',
      args: [],
    );
  }

  /// `Address Details`
  String get adress_detail {
    return Intl.message(
      'Address Details',
      name: 'adress_detail',
      desc: '',
      args: [],
    );
  }

  /// `Tax Infos`
  String get tax_info {
    return Intl.message(
      'Tax Infos',
      name: 'tax_info',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get note {
    return Intl.message(
      'Notes',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Save Contact`
  String get asve_contact {
    return Intl.message(
      'Save Contact',
      name: 'asve_contact',
      desc: '',
      args: [],
    );
  }

  /// `Add contact Details`
  String get add_contact_details {
    return Intl.message(
      'Add contact Details',
      name: 'add_contact_details',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Tel No.`
  String get phone_detail {
    return Intl.message(
      'Tel No.',
      name: 'phone_detail',
      desc: '',
      args: [],
    );
  }

  /// `Mobile`
  String get phone_mobile {
    return Intl.message(
      'Mobile',
      name: 'phone_mobile',
      desc: '',
      args: [],
    );
  }

  /// `mobile no.`
  String get mobile_detail {
    return Intl.message(
      'mobile no.',
      name: 'mobile_detail',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email_detail {
    return Intl.message(
      'email',
      name: 'email_detail',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email_mobile {
    return Intl.message(
      'Email',
      name: 'email_mobile',
      desc: '',
      args: [],
    );
  }

  /// `website`
  String get website_mobile {
    return Intl.message(
      'website',
      name: 'website_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Display Name`
  String get website_detail {
    return Intl.message(
      'Display Name',
      name: 'website_detail',
      desc: '',
      args: [],
    );
  }

  /// `Address Details`
  String get address_details {
    return Intl.message(
      'Address Details',
      name: 'address_details',
      desc: '',
      args: [],
    );
  }

  /// `complete address`
  String get address_detail {
    return Intl.message(
      'complete address',
      name: 'address_detail',
      desc: '',
      args: [],
    );
  }

  /// `Full Address`
  String get address {
    return Intl.message(
      'Full Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `city`
  String get city_detail {
    return Intl.message(
      'city',
      name: 'city_detail',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state_mobile {
    return Intl.message(
      'State',
      name: 'state_mobile',
      desc: '',
      args: [],
    );
  }

  /// `state`
  String get state_detail {
    return Intl.message(
      'state',
      name: 'state_detail',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code`
  String get postal_code_mobile {
    return Intl.message(
      'Postal Code',
      name: 'postal_code_mobile',
      desc: '',
      args: [],
    );
  }

  /// `postal code`
  String get postal_code_detail {
    return Intl.message(
      'postal code',
      name: 'postal_code_detail',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country_mobile {
    return Intl.message(
      'Country',
      name: 'country_mobile',
      desc: '',
      args: [],
    );
  }

  /// `country`
  String get country_detail {
    return Intl.message(
      'country',
      name: 'country_detail',
      desc: '',
      args: [],
    );
  }

  /// `Tax Information`
  String get tax_information {
    return Intl.message(
      'Tax Information',
      name: 'tax_information',
      desc: '',
      args: [],
    );
  }

  /// `Enter Tax payers ID`
  String get tax {
    return Intl.message(
      'Enter Tax payers ID',
      name: 'tax',
      desc: '',
      args: [],
    );
  }

  /// `Taxation ID`
  String get tax_detail {
    return Intl.message(
      'Taxation ID',
      name: 'tax_detail',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Open Orders`
  String get open_order {
    return Intl.message(
      'Open Orders',
      name: 'open_order',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Closed Orders`
  String get close_order {
    return Intl.message(
      'Closed Orders',
      name: 'close_order',
      desc: '',
      args: [],
    );
  }

  /// `Total Sales`
  String get total_sales {
    return Intl.message(
      'Total Sales',
      name: 'total_sales',
      desc: '',
      args: [],
    );
  }

  /// `Sales History`
  String get sales_history {
    return Intl.message(
      'Sales History',
      name: 'sales_history',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I18n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I18n> load(Locale locale) => I18n.load(locale);
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
