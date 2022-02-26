import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AvatarWidget extends StatefulWidget {
  const AvatarWidget({
    Key key,
    this.lado,
  }) : super(key: key);

  final int lado;

  @override
  _AvatarWidgetState createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.lado.toDouble(),
      height: 120,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: CachedNetworkImage(
        imageUrl: valueOrDefault<String>(
          FFAppState().usuarioAvatar,
          'https://ceagrodex.parquesoft.co/storage/users/default.png',
        ),
      ),
    );
  }
}
