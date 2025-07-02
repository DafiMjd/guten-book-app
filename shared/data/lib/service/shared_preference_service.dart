import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  Future<List<int>> removeBookId(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final ids = (await loadBookIds())..removeWhere((e) => e == id);
    await prefs.setStringList(
      'book_ids',
      ids.map((e) => e.toString()).toList(),
    );
    return ids;
  }

  Future<List<int>> saveBookId(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final currentIds = await loadBookIds();
    final newIds = {...currentIds, id};
    await prefs.setStringList(
      'book_ids',
      newIds.map((e) => e.toString()).toList(),
    );
    return newIds.toList();
  }

  // To load a list of IDs
  Future<List<int>> loadBookIds() async {
    final prefs = await SharedPreferences.getInstance();
    final stringList = prefs.getStringList('book_ids') ?? [];
    return stringList.map(int.parse).toList();
  }
}
