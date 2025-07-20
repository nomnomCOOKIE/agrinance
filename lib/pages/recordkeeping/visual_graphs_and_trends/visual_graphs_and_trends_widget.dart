import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'visual_graphs_and_trends_model.dart';
export 'visual_graphs_and_trends_model.dart';

class VisualGraphsAndTrendsWidget extends StatefulWidget {
  const VisualGraphsAndTrendsWidget({super.key});

  static String routeName = 'VisualGraphsAndTrends';
  static String routePath = '/visualGraphsAndTrends';

  @override
  State<VisualGraphsAndTrendsWidget> createState() =>
      _VisualGraphsAndTrendsWidgetState();
}

class _VisualGraphsAndTrendsWidgetState
    extends State<VisualGraphsAndTrendsWidget> {
  late VisualGraphsAndTrendsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisualGraphsAndTrendsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final chartPieChartColorsList1 = [
      Color(0xFFE99A47),
      Color(0xFF29CC4E),
      Color(0xFF2636A5),
      Color(0xFFC24A7B),
      Color(0xFFC2B44A)
    ];
    final chartPieChartColorsList2 = [
      Color(0xFFE99A47),
      Color(0xFF29CC4E),
      Color(0xFF2636A5),
      Color(0xFFC24A7B),
      Color(0xFFC2B44A)
    ];
    return StreamBuilder<List<IncomeRecord>>(
      stream: queryIncomeRecord(
        queryBuilder: (incomeRecord) => incomeRecord.where(
          'User',
          isEqualTo: currentUserReference,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFFF1F4F8),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<IncomeRecord> visualGraphsAndTrendsIncomeRecordList =
            snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFF1F4F8),
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed(WalletOverviewWidget.routeName);
                },
              ),
              title: Text(
                'Analytics',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primary,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: StreamBuilder<List<ExpenseRecord>>(
                stream: queryExpenseRecord(
                  queryBuilder: (expenseRecord) => expenseRecord.where(
                    'User',
                    isEqualTo: currentUserReference,
                  ),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  List<ExpenseRecord> containerExpenseRecordList =
                      snapshot.data!;

                  return Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().incomeCounts = functions
                              .returnCount(visualGraphsAndTrendsIncomeRecordList
                                  .toList())
                              .toList()
                              .cast<int>();
                          FFAppState().incomeCategories =
                              functions.returnString().toList().cast<String>();
                          FFAppState().expenseCategories = functions
                              .returnExpenseString()
                              .toList()
                              .cast<String>();
                          FFAppState().expenseCounts = functions
                              .returnExpenseCount(
                                  containerExpenseRecordList.toList())
                              .toList()
                              .cast<int>();
                          safeSetState(() {});
                        },
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Visual Graphs and Trends',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      font: GoogleFonts.sora(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF14181B),
                                      fontSize: 28.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                'Press the legends (boxes) to show/update the graphs. Graph does not appear if empty values.',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FontStyle.italic,
                                    ),
                              ),
                              Text(
                                'Income Count Distribution Graph',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                width: 332.31,
                                height: 230.0,
                                child: Stack(
                                  children: [
                                    FlutterFlowPieChart(
                                      data: FFPieChartData(
                                        values: FFAppState().incomeCounts,
                                        colors: chartPieChartColorsList1,
                                        radius: [100.0],
                                        borderColor: [Color(0x00000000)],
                                      ),
                                      donutHoleRadius: 0.0,
                                      donutHoleColor: Colors.transparent,
                                      sectionLabelType:
                                          PieChartSectionLabelType.percent,
                                      sectionLabelStyle: FlutterFlowTheme.of(
                                              context)
                                          .headlineSmall
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: FlutterFlowChartLegendWidget(
                                        entries: FFAppState()
                                            .incomeCategories
                                            .asMap()
                                            .entries
                                            .map(
                                              (label) => LegendEntry(
                                                chartPieChartColorsList1[
                                                    label.key %
                                                        chartPieChartColorsList1
                                                            .length],
                                                label.value,
                                              ),
                                            )
                                            .toList(),
                                        width: 74.0,
                                        height: 70.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 11.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                5.0, 0.0, 0.0, 0.0),
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        borderWidth: 1.0,
                                        borderColor: Colors.black,
                                        indicatorSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Expense Count Distribution Graph',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Container(
                                width: 332.3,
                                height: 230.0,
                                child: Stack(
                                  children: [
                                    FlutterFlowPieChart(
                                      data: FFPieChartData(
                                        values: FFAppState().expenseCounts,
                                        colors: chartPieChartColorsList2,
                                        radius: [100.0],
                                        borderColor: [Color(0x00000000)],
                                      ),
                                      donutHoleRadius: 0.0,
                                      donutHoleColor: Colors.transparent,
                                      sectionLabelType:
                                          PieChartSectionLabelType.percent,
                                      sectionLabelStyle: FlutterFlowTheme.of(
                                              context)
                                          .headlineSmall
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: FlutterFlowChartLegendWidget(
                                        entries: FFAppState()
                                            .expenseCategories
                                            .asMap()
                                            .entries
                                            .map(
                                              (label) => LegendEntry(
                                                chartPieChartColorsList2[
                                                    label.key %
                                                        chartPieChartColorsList2
                                                            .length],
                                                label.value,
                                              ),
                                            )
                                            .toList(),
                                        width: 74.0,
                                        height: 70.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 11.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                5.0, 0.0, 0.0, 0.0),
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        borderWidth: 1.0,
                                        borderColor: Colors.black,
                                        indicatorSize: 10.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                                .divide(SizedBox(height: 24.0))
                                .addToStart(SizedBox(height: 20.0))
                                .addToEnd(SizedBox(height: 20.0)),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
