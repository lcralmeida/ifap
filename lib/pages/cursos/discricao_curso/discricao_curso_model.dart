import '/flutter_flow/flutter_flow_util.dart';
import 'discricao_curso_widget.dart' show DiscricaoCursoWidget;
import 'package:flutter/material.dart';

class DiscricaoCursoModel extends FlutterFlowModel<DiscricaoCursoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
