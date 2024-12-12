// import 'package:flutter/material.dart';

// class ActionWidget extends StatefulWidget {
//   const ActionWidget({
//     super.key,
//     this.label,
//     this.button,
//   });

//   final String? label;
//   final String? button;

//   @override
//   State<ActionWidget> createState() => _ActionWidgetState();
// }

// class _ActionWidgetState extends State<ActionWidget> {
//   late ActionModel _model;

//   @override
//   void setState(VoidCallback callback) {
//     super.setState(callback);
//     _model.onUpdate();
//   }

//   @override
//   void initState() {
//     super.initState();
//     _model = createModel(context, () => ActionModel());

//     WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
//   }

//   @override
//   void dispose() {
//     _model.maybeDispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
//       child: Container(
//         width: MediaQuery.sizeOf(context).width,
//         decoration: BoxDecoration(
//           color: Color(0x339DCEFF),
//           borderRadius: BorderRadius.circular(30),
//         ),
//         child: Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(20, 18, 20, 18),
//           child: Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 widget!.label!,
//                 style: FlutterFlowTheme.of(context).titleMedium.override(
//                       fontFamily: 'Poppins',
//                       color: FlutterFlowTheme.of(context).primaryText,
//                       letterSpacing: 0.0,
//                       fontWeight: FontWeight.w500,
//                       lineHeight: 1.5,
//                     ),
//               ),
//               FFButtonWidget(
//                 onPressed: () {
//                   print('Button pressed ...');
//                 },
//                 text: widget!.button!,
//                 options: FFButtonOptions(
//                   width: 90,
//                   height: 40,
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                   iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
//                   color: FlutterFlowTheme.of(context).brand1,
//                   textStyle: FlutterFlowTheme.of(context).titleSmall.override(
//                         fontFamily: 'Poppins',
//                         color: Colors.white,
//                         letterSpacing: 0.0,
//                       ),
//                   borderSide: BorderSide(
//                     color: Colors.transparent,
//                     width: 1,
//                   ),
//                   borderRadius: BorderRadius.circular(100),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
