import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class InformacionDelUsuarioCall {
  static Future<ApiCallResponse> call({
    String token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiMDA4MTZkNmNkZGY3ZWQzYWJlZDUxYTVhNWU3M2RlZTg3NWJiZWNiZTY4YmRlMDRiNDc0ZmE5YmNiODJiOTMyZTk0NGRjMzAzNjZlMDE0NGUiLCJpYXQiOjE2NDQ1MjUwMDMuMjMwMjg3LCJuYmYiOjE2NDQ1MjUwMDMuMjMwMjkyLCJleHAiOjE2NzYwNjEwMDMuMjE0ODc0LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.nXwPAf4qt5wJ8EWAJlY5Y36g8bs3DYM-2TFLBPvAxNJGM5fXSP1rF0sFlUM9JiprRgcj2639_Nke4VftUY8MOrolT5uzq7QdgB9fiWsKSxMV95lUQES4kTptBbfxE1cmL2VYZN50Cs6K1_ONzpptmHMICM0AtunKjVTUtLHxtHFoKq-hKiQDLfJLdjbpoP15ZFyLfoqoNrN3TDi_pGnPXamk3MqfapE9xhGfBciWYpMVUkgQ0eHBdYiyOxzHOf_NLvqYH_fGv8gvWALPm5LLQ0T3hig1Hb5DH3TvKCNtWrTwyxNq1Loi8Ch-hCqojcR89BvhlEmk1bRDzQX_8Yk34R7RIU0uqrE1rxuioldvEQbuJ-JF7PcOY_Pft2xCZuD3lKoh55LsKHEI0c1enn2cVR6GPiiA5sk0BxYfjwSStrz9s38eFf6n55NIMiZhcuZJ0ZeuLGiYjFWnm8FnDwz-Laz7_oYFNSSIwmwNLALlyGpt2vD6PhvX0THto5aRWNaTJF3SLceBmxnC8lQvmeVXmpTFrJDnkR8zDpztd6PXy69K364NfPHtEPvJ5YvSDaXWIVRZYYQU_PPG-nXaJqWOvrGhWaD5PBc_u_S66gO84eOiq52F4pe34fDdOgSGLbG-1mSw89DzeyDzSX4cbFFyR9VjO2KVEplQ-vB_KPAc-TE',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Informacion del Usuario',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/auth/user',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-Requested-With': 'XMLHttpRequest',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
}

class SalidaDelUsuarioCall {
  static Future<ApiCallResponse> call({
    String token =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiOGRjYTllOGZhYjEwNGJmYmQ3YmIyMjM2YWFkYTcyNmRmYWU4MzliYjQ3ZWVjMjVkYTM1ZjU0ZTJjNTFlNDY5NGY0NGUxYTliY2JkZWQxMTQiLCJpYXQiOjE2NDI5MDU2NzkuMTk5OTUyLCJuYmYiOjE2NDI5MDU2NzkuMTk5OTU2LCJleHAiOjE2NzQ0NDE2NzkuMTgyNDY5LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.NvgEhuqzcC3ixoZN6aKwunUUX7tE69W6l8WTHCqTILGP6Ibot4xZ8tzGDAc5bI_-sAjBZO4yeiRd8BxLW9tT7BKntJQxTIbrZZaDad8o3KoF7K4Vp_A0aWHxGO3nRafwTBMfHfnnCwe0FfWxe_PtpJRbdcSAL1f4bLoPRD_wBvjO0zsulNbrthH6tgUGhR35PVRvrWrgMywK_ZrEV0yjOTWRhNTgxXm8_4F4YepGVwZnbNKUWphUx-KqsiB3Ti3KLFToJ6Sx0LtyTF8OgB6e9_fOPks-UDLMPPOJjoQO2RsdBPR5RbJKxd-t-8LwsYUjaYk_x_t0lratBm1fidqyEKYoIYypq9_wbBsQGT7aJbGcfUx3n_or6iJ_XcQshsJgf8hw_7DZfyNrcwBEelxgZvNPjMEUt8V_4dyWVVRbdb2Hy2r4dx82SCPmrvaDLXo-HIeirQ5CU7dS4DgqFQUIzTSQq99yT90Xz_L6zUnYKRXIkyvVcxV1YYd_M9DKffsdOe6r4fXxzpUKRDSXJ9OrfuuXbwDPWia-JvlZsD6QeHCMEhL3nm0iXT505bCid3L8IKvmzmt_lwWVesx5GCUZuHr9NQvIYMKPEm7UBboOCqpGt390eqqwGnGH01CXTVgRxU8L1ZEVKq-qFJnyS4T6vITHbsjIpljG-N0mwuSI3xI',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Salida del Usuario',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/auth/logout',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'X-Requested-With': 'XMLHttpRequest',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
    );
  }
}

class LoginAPICeagrodexCall {
  static Future<ApiCallResponse> call({
    String email = 'hugo@ceagrodex.com',
    String password = '12345678',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login API Ceagrodex',
      apiUrl:
          'https://ceagrodex.parquesoft.co/api/auth/login?email=${email}&password=${password}',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Requested-With': 'XMLHttpRequest',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.access_token''',
      );
  static dynamic user(dynamic response) => getJsonField(
        response,
        r'''$.user''',
      );
}

class IngresoVehiculosCall {
  static Future<ApiCallResponse> call({
    int cliente = 1,
    String inicio = '2021-11-17 00:00',
    String fin = '2022-02-31 23:59',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'IngresoVehiculos',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/ingresos-vehiculos',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
        'inicio': inicio,
        'fin': fin,
      },
      returnBody: true,
    );
  }
}

class PesajoTotalXLoteCall {
  static Future<ApiCallResponse> call({
    int lote = 100,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PesajoTotalXLote',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/pesajes-pies/lote',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lote': lote,
      },
      returnBody: true,
    );
  }
}

class PesajePieAnimalesCall {
  static Future<ApiCallResponse> call({
    int lote = 100,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PesajePieAnimales',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/pesajes-pies/animal',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lote': lote,
      },
      returnBody: true,
    );
  }
}

class RendimientoCanalOrdenesProduccionCall {
  static Future<ApiCallResponse> call({
    int cliente = 1,
    String inicio = '2021-11-17 00:00',
    String fin = '2022-12-31 23:59',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RendimientoCanalOrdenesProduccion',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/rendimientos-canales/orden',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
        'inicio': inicio,
        'fin': fin,
      },
      returnBody: true,
    );
  }
}

class RendimientoCanalXCanalCall {
  static Future<ApiCallResponse> call({
    int orden = 100,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RendimientoCanalXCanal',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/rendimientos-canales/canal',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'orden': orden,
      },
      returnBody: true,
    );
  }
}

class RetomeSubproductoCall {
  static Future<ApiCallResponse> call({
    int orden = 100,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RetomeSubproducto',
      apiUrl:
          'https://ceagrodex.parquesoft.co/api/retome-subproductos/orden-produccion',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'orden': orden,
      },
      returnBody: true,
    );
  }
}

class DecomisosSacrificiosCall {
  static Future<ApiCallResponse> call({
    int cliente = 1,
    String inicio = '2021-11-17 00:00',
    String fin = '2022-12-31 23:59',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DecomisosSacrificios',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/decomisos-sacrificios',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
        'inicio': inicio,
        'fin': fin,
      },
      returnBody: true,
    );
  }
}

class DecomisosDesposteCall {
  static Future<ApiCallResponse> call({
    int cliente = 1,
    String inicio = '2021-11-17 00:00',
    String fin = '2022-12-31 23:59',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DecomisosDesposte',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/decomisos-despostes',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
        'inicio': inicio,
        'fin': fin,
      },
      returnBody: true,
    );
  }
}

class InventarioDisponibleRefrigeradoCall {
  static Future<ApiCallResponse> call({
    int cliente = 1,
    String inicio = '2021-11-17 00:00',
    String fin = '2022-12-31 23:59',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'InventarioDisponibleRefrigerado',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/inventarios-refrigerados',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
        'inicio': inicio,
        'fin': fin,
      },
      returnBody: true,
    );
  }
}

class InventarioDisponibleCalienteCall {
  static Future<ApiCallResponse> call({
    int cliente = 1,
    String inicio = '2021-11-17 00:00',
    String fin = '2022-12-31 23:59',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'InventarioDisponibleCaliente',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/inventarios-calientes',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
        'inicio': inicio,
        'fin': fin,
      },
      returnBody: true,
    );
  }
}

class RevisionDespachoCall {
  static Future<ApiCallResponse> call({
    int cliente = 1,
    String inicio = '2021-11-17 00:00',
    String fin = '2022-12-31 23:59',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RevisionDespacho',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/despachos-transportes',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
        'inicio': inicio,
        'fin': fin,
      },
      returnBody: true,
    );
  }
}

class OrdenesDesposteCall {
  static Future<ApiCallResponse> call({
    int cliente = 1,
    String inicio = '2021-11-17 00:00',
    String fin = '2022-12-31 23:59',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'OrdenesDesposte',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/despostes',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
        'inicio': inicio,
        'fin': fin,
      },
      returnBody: true,
    );
  }
}

class DetallesDesposteCall {
  static Future<ApiCallResponse> call({
    int orden = 17,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DetallesDesposte',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/despostes-detalles',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'orden': orden,
      },
      returnBody: true,
    );
  }
}

class DesposteViscerasCall {
  static Future<ApiCallResponse> call({
    int orden = 17,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DesposteVisceras',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/despostes-visceras',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'orden': orden,
      },
      returnBody: true,
    );
  }
}

class DetallesViscerasCall {
  static Future<ApiCallResponse> call({
    int orden = 17,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DetallesVisceras',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/despostes-visceras-detalles',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'orden': orden,
      },
      returnBody: true,
    );
  }
}

class AnimalesDesposteCall {
  static Future<ApiCallResponse> call({
    int orden = 17,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AnimalesDesposte',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/despostes-animales',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'orden': orden,
      },
      returnBody: true,
    );
  }
}

class NotificacionesCall {
  static Future<ApiCallResponse> call({
    int cliente = 2,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Notificaciones',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/notificaciones',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
      },
      returnBody: true,
    );
  }
}

class DetalleNotificacionCall {
  static Future<ApiCallResponse> call({
    int notificacion = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'DetalleNotificacion',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/detalle-notificacion',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'notificacion': notificacion,
      },
      returnBody: true,
    );
  }
}

class TotalOperacionesCall {
  static Future<ApiCallResponse> call({
    int cliente = 1,
    String operacion = 'ingreso',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'TotalOperaciones',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/total-operaciones',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
        'operacion': operacion,
      },
      returnBody: true,
    );
  }
}

class NotificacionesXFechasCall {
  static Future<ApiCallResponse> call({
    int cliente = 2,
    String inicio = '2022-02-12',
    String fin = '2022-02-12',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'NotificacionesXFechas',
      apiUrl: 'https://ceagrodex.parquesoft.co/api/notificaciones-semana',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'cliente': cliente,
        'inicio': inicio,
        'fin': fin,
      },
      returnBody: true,
    );
  }
}
