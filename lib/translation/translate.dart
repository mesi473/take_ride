import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ride_test/translation/amharic.dart';
import 'package:ride_test/translation/english.dart';

class Translation {
  Translation(this.locale);

  Locale locale;

  static Translation of(BuildContext context) {
    return Localizations.of<Translation>(context, Translation)!;
  }

  static const _localizedValues = <String, Map<String, String>>{
    'en': english,
    'am': amharic
  };

  String trans(String transId) {
    return _localizedValues[locale.languageCode]![transId]!;
  }

  changeTranslation(String languageCode) {
    locale = Locale(languageCode);
  }
}

class TranslationDelegate extends LocalizationsDelegate<Translation> {
  const TranslationDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'am'].contains(locale.languageCode);

  @override
  Future<Translation> load(Locale locale) {
    return SynchronousFuture<Translation>(Translation(locale));
  }
  @override
  bool shouldReload(TranslationDelegate old) => false;
}
