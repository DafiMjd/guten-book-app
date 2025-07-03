# guten-book-app

Guten Book

## Things to Install

1. Makefile

## How To Run

- install packages
  ```
  make get / melos run get
  ```
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

## How To Build Apk

- production:

  ```
  cd apps/guten_book && flutter build apk --flavor prod --target lib/launcher/main_prod.dart && cd ../..
  ```

- staging:

  ```
  cd apps/guten_book &&  flutter build apk --flavor staging --target lib/launcher/main_staging.dart && cd ../..
  ```

- development:
  ```
  cd apps/guten_book && flutter build apk --flavor dev --target lib/launcher/main_dev.dart && cd ../..
  ```

## Notes

- freezed & json_serializable:
  Read https://pub.dev/packages/freezed & https://pub.dev/packages/json_serializable
  whenever you modify a file that contains @freezed || @JsonSerializable
  you should run the build_runner command (check makefile)
