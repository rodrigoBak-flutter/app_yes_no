import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20),
    );
    final inputDecoration = InputDecoration(
        hintText: 'End your message with a "??"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
            onPressed: () {
              if (kDebugMode) {
                debugPrint('Send message ${textController.text}');
              }
              textController.clear();
            },
            icon: const Icon(Icons.send_outlined)));

    return TextFormField(
      key: Key('Text-form-field ${textController.text}'),
      controller: textController,
      focusNode: focusNode,
      decoration: inputDecoration,
      onTapOutside: (event) => focusNode.unfocus(),
      onFieldSubmitted: (value) {
        if (kDebugMode) {
          debugPrint('Sumit value $value');
        }
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
