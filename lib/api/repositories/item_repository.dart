import '../old_reader_api.dart';
import '../models/item.dart';

class ItemRepository {
  final OldReaderApi _api;

  ItemRepository(this._api);

  Future<List<Item>> getItems({
    required String streamId,
    int? limit,
    bool? unreadOnly,
    DateTime? olderThan,
    DateTime? newerThan,
  }) async {
    // Implementation for getting items
    throw UnimplementedError();
  }

  Future<void> markAsRead(List<String> itemIds) async {
    // Implementation for marking items as read
    throw UnimplementedError();
  }

  Future<void> markAllAsRead(String streamId, {DateTime? olderThan}) async {
    // Implementation for marking all items as read
    throw UnimplementedError();
  }

  Future<void> toggleStarred(String itemId, bool starred) async {
    // Implementation for toggling starred status
    throw UnimplementedError();
  }

  Future<void> toggleLiked(String itemId, bool liked) async {
    // Implementation for toggling liked status
    throw UnimplementedError();
  }

  Future<void> toggleShared(String itemId, bool shared, {String? note}) async {
    // Implementation for toggling shared status
    throw UnimplementedError();
  }
}