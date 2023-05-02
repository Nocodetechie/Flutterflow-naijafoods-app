import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF4B39EF),
        appBar: AppBar(
          backgroundColor: Color(0xFF4B39EF),
          automaticallyImplyLeading: false,
          title: Text(
            'foods',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.normal,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.search_sharp,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: DefaultTabController(
                length: 3,
                initialIndex: 0,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: TabBar(
                        labelColor: Colors.white,
                        unselectedLabelColor: Color(0xB3FFFFFF),
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF14181B),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.normal,
                                ),
                        indicatorColor: Color(0xFF4B39EF),
                        indicatorWeight: 3.0,
                        tabs: [
                          Tab(
                            text: 'Foods',
                          ),
                          Tab(
                            text: 'Drinks',
                          ),
                          Tab(
                            text: 'Snacks',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F4F8),
                            ),
                            child: StreamBuilder<List<FoodsRecord>>(
                              stream: queryFoodsRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<FoodsRecord> listViewFoodsRecordList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewFoodsRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewFoodsRecord =
                                        listViewFoodsRecordList[listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3.0,
                                              color: Color(0x20000000),
                                              offset: Offset(0.0, 1.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 12.0, 8.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'dishes',
                                                queryParams: {
                                                  'foodref': serializeParam(
                                                    listViewFoodsRecord
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    listViewFoodsRecord.image!,
                                                    width: 70.0,
                                                    height: 70.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          listViewFoodsRecord
                                                              .name!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF14181B),
                                                                fontSize: 18.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          listViewFoodsRecord
                                                              .description!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF57636C),
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_right_rounded,
                                                  color: Color(0xFF4B39EF),
                                                  size: 24.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F4F8),
                            ),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3.0,
                                          color: Color(0x20000000),
                                          offset: Offset(0.0, 1.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 12.0, 8.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('Alcoholic');
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'data:image/jpeg;base64,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',
                                                width: 70.0,
                                                height: 70.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Alcoholic drinks',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF14181B),
                                                                fontSize: 18.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_right_rounded,
                                              color: Color(0xFF4B39EF),
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3.0,
                                          color: Color(0x20000000),
                                          offset: Offset(0.0, 1.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 12.0, 8.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('Non-alcoholic');
                                        },
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                'data:image/jpeg;base64,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',
                                                width: 70.0,
                                                height: 70.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Non-alchoholic drinks',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF14181B),
                                                                fontSize: 18.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_right_rounded,
                                              color: Color(0xFF4B39EF),
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF1F4F8),
                            ),
                            child: StreamBuilder<List<SnacksRecord>>(
                              stream: querySnacksRecord(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<SnacksRecord> listViewSnacksRecordList =
                                    snapshot.data!;
                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listViewSnacksRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewSnacksRecord =
                                        listViewSnacksRecordList[listViewIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 16.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 3.0,
                                              color: Color(0x20000000),
                                              offset: Offset(0.0, 1.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 12.0, 8.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'snacksdetails',
                                                queryParams: {
                                                  'snacksRef': serializeParam(
                                                    listViewSnacksRecord
                                                        .reference,
                                                    ParamType.DocumentReference,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    listViewSnacksRecord.image!,
                                                    width: 70.0,
                                                    height: 70.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          listViewSnacksRecord
                                                              .name!,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF14181B),
                                                                fontSize: 18.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          formatNumber(
                                                            listViewSnacksRecord
                                                                .price!,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: '\$',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF57636C),
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios,
                                                  color: Color(0xFF4B39EF),
                                                  size: 30.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
