import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'non_alcoholicbrandsdetails_model.dart';
export 'non_alcoholicbrandsdetails_model.dart';

class NonAlcoholicbrandsdetailsWidget extends StatefulWidget {
  const NonAlcoholicbrandsdetailsWidget({
    Key? key,
    this.nonalcoholicbrandsRef,
  }) : super(key: key);

  final DocumentReference? nonalcoholicbrandsRef;

  @override
  _NonAlcoholicbrandsdetailsWidgetState createState() =>
      _NonAlcoholicbrandsdetailsWidgetState();
}

class _NonAlcoholicbrandsdetailsWidgetState
    extends State<NonAlcoholicbrandsdetailsWidget> {
  late NonAlcoholicbrandsdetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NonAlcoholicbrandsdetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<NonalcoholicbrandsRecord>(
      stream:
          NonalcoholicbrandsRecord.getDocument(widget.nonalcoholicbrandsRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        final nonAlcoholicbrandsdetailsNonalcoholicbrandsRecord =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            automaticallyImplyLeading: false,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pop();
              },
              child: Icon(
                Icons.chevron_left_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 32.0,
              ),
            ),
            title: Text(
              nonAlcoholicbrandsdetailsNonalcoholicbrandsRecord.name!,
              style: FlutterFlowTheme.of(context).titleMedium,
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CachedNetworkImage(
                          imageUrl:
                              nonAlcoholicbrandsdetailsNonalcoholicbrandsRecord
                                  .image!,
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 230.0,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 16.0, 0.0, 0.0),
                          child: Text(
                            nonAlcoholicbrandsdetailsNonalcoholicbrandsRecord
                                .name!,
                            style: FlutterFlowTheme.of(context).headlineMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 8.0, 0.0, 0.0),
                          child: Text(
                            formatNumber(
                              nonAlcoholicbrandsdetailsNonalcoholicbrandsRecord
                                  .price!,
                              formatType: FormatType.custom,
                              currency: '\$',
                              format: '',
                              locale: '',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                        Divider(
                          height: 24.0,
                          thickness: 2.0,
                          indent: 20.0,
                          endIndent: 20.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 20.0, 16.0, 24.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await launchURL(
                                  'https://naijafoodspage.carrd.co/');
                            },
                            text: 'Order now',
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                            ),
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
      },
    );
  }
}
