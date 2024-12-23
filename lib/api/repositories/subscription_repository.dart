import '../old_reader_api.dart';
import '../models/subscription.dart';

class SubscriptionRepository {
  final OldReaderApi _api;

  SubscriptionRepository(this._api);

  Future<List<Subscription>> getSubscriptions() async {
    // Implementation for getting subscriptions
    throw UnimplementedError();
  }

  Future<void> addSubscription(String url) async {
    // Implementation for adding subscription
    throw UnimplementedError();
  }

  Future<void> removeSubscription(String id) async {
    // Implementation for removing subscription
    throw UnimplementedError();
  }

  Future<void> updateSubscription({
    required String id,
    String? title,
    String? folder,
  }) async {
    // Implementation for updating subscription
    throw UnimplementedError();
  }
}