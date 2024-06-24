import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cadastrar_curso_widget.dart' show CadastrarCursoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastrarCursoModel extends FlutterFlowModel<CadastrarCursoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for txtNome widget.
  FocusNode? txtNomeFocusNode;
  TextEditingController? txtNomeTextController;
  String? Function(BuildContext, String?)? txtNomeTextControllerValidator;
  String? _txtNomeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatorio';
    }

    return null;
  }

  // State field(s) for txtWhatsapp widget.
  FocusNode? txtWhatsappFocusNode;
  TextEditingController? txtWhatsappTextController;
  final txtWhatsappMask = MaskTextInputFormatter(mask: '(##) ###-###-###');
  String? Function(BuildContext, String?)? txtWhatsappTextControllerValidator;
  String? _txtWhatsappTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatorio';
    }

    if (val.length < 11) {
      return 'Verifique el código del país o de su teléfono';
    }

    return null;
  }

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  String? _txtCorreoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatorio';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Digite un correo  válido';
    }
    return null;
  }

  // State field(s) for txtCidade widget.
  FocusNode? txtCidadeFocusNode;
  TextEditingController? txtCidadeTextController;
  String? Function(BuildContext, String?)? txtCidadeTextControllerValidator;
  String? _txtCidadeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatorio';
    }

    return null;
  }

  // State field(s) for txtPais widget.
  FocusNode? txtPaisFocusNode;
  TextEditingController? txtPaisTextController;
  String? Function(BuildContext, String?)? txtPaisTextControllerValidator;
  String? _txtPaisTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatorio';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (IfapApiPost)] action in Button widget.
  ApiCallResponse? resultApiInserir;

  @override
  void initState(BuildContext context) {
    txtNomeTextControllerValidator = _txtNomeTextControllerValidator;
    txtWhatsappTextControllerValidator = _txtWhatsappTextControllerValidator;
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
    txtCidadeTextControllerValidator = _txtCidadeTextControllerValidator;
    txtPaisTextControllerValidator = _txtPaisTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    txtNomeFocusNode?.dispose();
    txtNomeTextController?.dispose();

    txtWhatsappFocusNode?.dispose();
    txtWhatsappTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtCidadeFocusNode?.dispose();
    txtCidadeTextController?.dispose();

    txtPaisFocusNode?.dispose();
    txtPaisTextController?.dispose();
  }
}
