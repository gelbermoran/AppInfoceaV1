import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../pesaje_total_lote/pesaje_total_lote_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class BotonDetalleWidget extends StatefulWidget {
  const BotonDetalleWidget({
    Key key,
    this.icon,
    this.lote,
  }) : super(key: key);

  final Widget icon;
  final int lote;

  @override
  _BotonDetalleWidgetState createState() => _BotonDetalleWidgetState();
}

class _BotonDetalleWidgetState extends State<BotonDetalleWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: widget.icon,
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PesajeTotalLoteWidget(
                  lote: widget.lote.toString(),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
