import 'package:core/core_exports.dart';
import 'package:core/presentation/base_page.dart';
import 'package:feature_chat/presentation/chat_page/bloc/chat_cubit.dart';
import 'package:flutter/material.dart';

class ChatPage extends BasePage<ChatCubit> {
  const ChatPage();

  static const path = '/chat';

  static const menuIndex = 0;

  @override
  String get navigationPath => path;

  @override
  ClAdapter buildPage(BuildContext context) => ClAdapter(desktop: _buildDesktopWidget(), mobile: _buildMobileWidget());

  Widget _buildDesktopWidget() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [Center(child: Text('Chat1'))],
        ),
        Column(
          children: [Center(child: Text('Chat2'))],
        )
      ],
    );
  }

  Widget _buildMobileWidget() => const Text('ChatSum');
}
