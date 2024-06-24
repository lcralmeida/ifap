import '/flutter_flow/flutter_flow_util.dart';
import 'txt_base64_widget.dart' show TxtBase64Widget;
import 'package:flutter/material.dart';

class TxtBase64Model extends FlutterFlowModel<TxtBase64Widget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
