# guten-book-app

Guten Book

## Things to Install

1. Makefile

## How To Run

- production:
  ```
  flutter run --flavor prod --target apps/guten_book/lib/launcher/main_prod.dart
  ```

- staging:
  ```
  flutter run --flavor staging --target apps/guten_book/lib/launcher/main_staging.dart
  ```

- development:
  ```
  flutter run --flavor dev --target apps/guten_book/lib/launcher/main_dev.dart
  ```

## Notes

- freezed & json_serializable:
Read https://pub.dev/packages/freezed & https://pub.dev/packages/json_serializable
whenever you modify a file that contains @freezed || @JsonSerializable
you should run the build_runner command (check makefile)