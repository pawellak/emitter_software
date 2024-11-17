import 'package:core/core_exports.dart';
import 'package:core/presentation/base_cubit.dart';
import 'package:core/presentation/base_state.dart';

part 'chat_state.dart';

@injectable
class ChatCubit extends BaseCubit<ChatState> {
  ChatCubit() : super(ChatInitial());
}
