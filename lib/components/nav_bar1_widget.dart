import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'nav_bar1_model.dart';
export 'nav_bar1_model.dart';

class NavBar1Widget extends StatefulWidget {
  const NavBar1Widget({super.key});

  @override
  State<NavBar1Widget> createState() => _NavBar1WidgetState();
}

class _NavBar1WidgetState extends State<NavBar1Widget>
    with TickerProviderStateMixin {
  late NavBar1Model _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBar1Model());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(2.0, 2.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(2.0, 2.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(2.0, 2.0),
          ),
        ],
      ),
      'iconOnActionTriggerAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(2.0, 2.0),
          ),
        ],
      ),
      'iconButtonOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(2.0, 2.0),
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Stack(
        alignment: const AlignmentDirectional(0.0, 1.0),
        children: [
          Container(
            width: double.infinity,
            height: 80.0,
            decoration: const BoxDecoration(
              color: Color(0xFF5E1DDB),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (animationsMap['iconOnActionTriggerAnimation1'] !=
                        null) {
                      await animationsMap['iconOnActionTriggerAnimation1']!
                          .controller
                          .forward(from: 0.0)
                          .whenComplete(
                              animationsMap['iconOnActionTriggerAnimation1']!
                                  .controller
                                  .reverse);
                    }

                    context.pushNamed('Tienda2');
                  },
                  child: Icon(
                    Icons.storefront_outlined,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 35.0,
                  ),
                ).animateOnActionTrigger(
                  animationsMap['iconOnActionTriggerAnimation1']!,
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (animationsMap['iconOnActionTriggerAnimation2'] !=
                        null) {
                      await animationsMap['iconOnActionTriggerAnimation2']!
                          .controller
                          .forward(from: 0.0)
                          .whenComplete(
                              animationsMap['iconOnActionTriggerAnimation2']!
                                  .controller
                                  .reverse);
                    }

                    context.pushNamed('Donacion3');
                  },
                  child: Icon(
                    Icons.favorite_border_sharp,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 35.0,
                  ),
                ).animateOnActionTrigger(
                  animationsMap['iconOnActionTriggerAnimation2']!,
                ),
                Container(
                  width: 80.0,
                  height: double.infinity,
                  decoration: const BoxDecoration(),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (animationsMap['iconOnActionTriggerAnimation3'] !=
                        null) {
                      await animationsMap['iconOnActionTriggerAnimation3']!
                          .controller
                          .forward(from: 0.0)
                          .whenComplete(
                              animationsMap['iconOnActionTriggerAnimation3']!
                                  .controller
                                  .reverse);
                    }
                  },
                  child: Icon(
                    Icons.style_outlined,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 36.0,
                  ),
                ).animateOnActionTrigger(
                  animationsMap['iconOnActionTriggerAnimation3']!,
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    if (animationsMap['iconOnActionTriggerAnimation4'] !=
                        null) {
                      await animationsMap['iconOnActionTriggerAnimation4']!
                          .controller
                          .forward(from: 0.0)
                          .whenComplete(
                              animationsMap['iconOnActionTriggerAnimation4']!
                                  .controller
                                  .reverse);
                    }

                    context.pushNamed('Contacto5');
                  },
                  child: Icon(
                    Icons.wifi_calling_3,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 36.0,
                  ),
                ).animateOnActionTrigger(
                  animationsMap['iconOnActionTriggerAnimation4']!,
                ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: FlutterFlowIconButton(
                  borderRadius: 100.0,
                  buttonSize: 60.0,
                  fillColor: const Color(0xFFFF5A34),
                  icon: Icon(
                    Icons.home,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 40.0,
                  ),
                  onPressed: () async {
                    if (animationsMap['iconButtonOnActionTriggerAnimation'] !=
                        null) {
                      await animationsMap['iconButtonOnActionTriggerAnimation']!
                          .controller
                          .forward(from: 0.0)
                          .whenComplete(animationsMap[
                                  'iconButtonOnActionTriggerAnimation']!
                              .controller
                              .reverse);
                    }

                    context.pushNamed('HomePage');
                  },
                ).animateOnActionTrigger(
                  animationsMap['iconButtonOnActionTriggerAnimation']!,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
