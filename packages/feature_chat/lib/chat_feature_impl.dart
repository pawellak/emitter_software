import 'package:core/core_exports.dart' show Singleton;
import 'package:core/features/features_set.dart';
import 'package:feature_chat/presentation/chat_page/chat_page.dart';

@Singleton(as: ChatFeature)
class ChatFeatureImpl implements ChatFeature {
  static const String featurePath = ChatPage.path;

  @override
  String get path => featurePath;
}
