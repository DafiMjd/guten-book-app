enum SortEnum {
  popular,
  ascending,
  descending;

  String get text => switch (this) {
    SortEnum.popular => 'Popular',
    SortEnum.ascending => 'A - Z',
    SortEnum.descending => 'Z - A',
  };

  String get value => switch (this) {
    SortEnum.popular => 'popular',
    SortEnum.ascending => 'ascending',
    SortEnum.descending => 'descending',
  };
}
