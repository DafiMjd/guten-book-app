import 'package:dependencies/dependencies.dart';

/// A manager class that handles global refresh events across the application.
///
/// The [RefreshManager] provides a centralized way to trigger refresh events
/// for different parts of the application without direct coupling between components.
/// It uses RxDart's [PublishSubject] to broadcast refresh events to multiple listeners.
///
/// Usage:
///
/// 1. Listening to refresh events using RefreshableCubit:
/// ```dart
/// class FeatureCubit extends RefreshableCubit<FeatureState> {
///   FeatureCubit() : super(FeatureState.initial());
///
///   @override
///   void setup() {
///     initRefresh(
///       refreshKey: RefreshKeys.feature,
///       onRefresh: () {
///         loadData();
///       },
///     );
///   }
///
///   Future<void> loadData() async {
///     // Fetch and update data
///   }
/// }
/// ```
///
/// 2. Listening in a StatefulWidget:
/// ```dart
/// class _MyWidgetState extends State<MyWidget> {
///   StreamSubscription? _refreshSubscription;
///
///   @override
///   void initState() {
///     super.initState();
///     _refreshSubscription = getIt<RefreshManager>()
///         .refreshStream
///         .where((key) => key == RefreshKeys.feature)
///         .listen((_) => setState(() {}));
///   }
///
///   @override
///   void dispose() {
///     _refreshSubscription?.cancel();
///     super.dispose();
///   }
/// }
/// ```
///
/// 3. Triggering a refresh from anywhere:
/// ```dart
/// // Inside a widget, cubit, or service
/// getIt<RefreshManager>().triggerRefresh(RefreshKeys.feature);
/// ```
///
/// Common refresh keys:
/// - 'profile' - Refreshes user profile data
/// - 'assignments' - Refreshes assignments list
/// - 'notifications' - Refreshes notifications
///
/// Note: This class is registered as a singleton in GetIt dependency injection.
/// Access it using: `getIt<RefreshManager>()`
class RefreshManager {
  /// The controller that manages the refresh event stream
  final _refreshController = PublishSubject<String>();

  /// Stream of refresh events that can be listened to
  ///
  /// Returns a [Stream<String>] where the string is the refresh key
  /// identifying which part of the application should refresh
  Stream<String> get refreshStream => _refreshController.stream;

  /// Triggers a refresh event for the specified key
  ///
  /// [key] is a string identifier for the part of the application
  /// that needs to be refreshed. Listeners filtering for this specific
  /// key will receive the refresh event.
  ///
  /// Example:
  /// ```dart
  /// refreshManager.triggerRefresh('profile');
  /// ```
  void triggerRefresh(String key) {
    _refreshController.add(key);
  }

  /// Closes the refresh event stream
  ///
  /// Should be called when the application is terminating or
  /// when the refresh manager is no longer needed to prevent memory leaks
  void dispose() {
    _refreshController.close();
  }
}

/// Example refresh keys used throughout the application
/// Add new keys here as they are introduced
class RefreshKeys {
  static const likedBookList = 'LIKED_BOOK_LIST';
  // Add more keys as needed
}
