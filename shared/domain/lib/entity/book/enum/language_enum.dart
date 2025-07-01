import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'languages')
enum LanguageEnum {
  en,
  fi,
  fr,
  un;

  static LanguageEnum fromString(String value) {
    return LanguageEnum.values.firstWhere(
      (e) => e.name == value,
      orElse: () => LanguageEnum.un,
    );
  }

  String get text => switch (this) {
    LanguageEnum.en => 'English',
    LanguageEnum.fi => 'Finnish',
    LanguageEnum.fr => 'French',
    LanguageEnum.un => 'Unknown',
  };
}
