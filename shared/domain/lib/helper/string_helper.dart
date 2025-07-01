class StringHelper {
  const StringHelper._();

  static String conciseNumber(int n) {
    if (n < 1000) {
      return n.toString();
    } else if (n < 1000000) {
      final k = n / 1000;
      // Remove trailing .0 for whole numbers
      return '${k.toStringAsFixed(k.truncateToDouble() == k ? 0 : 1)}K';
    } else {
      final m = n / 1000000;
      return '${m.toStringAsFixed(m.truncateToDouble() == m ? 0 : 1)}M';
    }
  }
}
