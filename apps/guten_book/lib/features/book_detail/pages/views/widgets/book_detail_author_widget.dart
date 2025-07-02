import 'package:component/component.dart';
import 'package:dependencies/dependencies.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class BookDetailAuthorWidget extends StatelessWidget {
  const BookDetailAuthorWidget({
    super.key,
    required this.authors,
    required this.isSaved,
    required this.onSaveTapped,
    required this.enabled,
  });

  final List<AuthorEntity> authors;
  final bool isSaved;
  final VoidCallback onSaveTapped;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: authors.mapIndexed((index, e) {
              final isLast = index == authors.length - 1;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.name, style: Theme.of(context).textTheme.titleLarge),
                  Text(
                    e.yearToString,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  if (!isLast) Gap(4.w),
                ],
              );
            }).toList(),
          ),
        ),
        Gap(16.w),
        GtSaveButton(isSaved: isSaved, onTap: onSaveTapped, enabled: enabled),
      ],
    );
  }
}
