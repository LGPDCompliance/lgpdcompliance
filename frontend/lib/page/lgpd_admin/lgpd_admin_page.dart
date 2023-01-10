import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lgpb_compliance/helpers/constants.dart';
import 'package:lgpb_compliance/models/graphs_model.dart';
import 'package:lgpb_compliance/stores/admin_store.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LGPDAdminPage extends StatelessWidget {
  LGPDAdminPage({Key? key}) : super(key: key);

  final AdminStore adminStore = GetIt.I<AdminStore>();

  @override
  Widget build(BuildContext context) {
    final List<Color> color = <Color>[];
    color.add(Colors.blue[200]!);
    color.add(Colors.blue[400]!);
    color.add(primaryColor);

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);

    final LinearGradient gradientColors =
        LinearGradient(colors: color, stops: stops);

    return Observer(
      builder: (_) {
        return adminStore.loadingAdminPage
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: ListView(
                  controller: ScrollController(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: SfCartesianChart(
                        backgroundColor: backgroundColor,
                        title: ChartTitle(
                          text: 'COMPLIANCES RESPONDIDOS AO LONGO DA SEMANA',
                          borderWidth: 2,
                          alignment: ChartAlignment.center,
                          textStyle: GoogleFonts.lexendDeca(
                            color: primaryColor,
                            fontSize: 17,
                          ),
                        ),
                        primaryXAxis: CategoryAxis(),
                        tooltipBehavior: TooltipBehavior(
                          enable: true,
                          canShowMarker: true,
                        ),
                        series: <ChartSeries>[
                          AreaSeries<WeekAmount, String>(
                            dataSource: adminStore.graphicsModel!.weekAmount,
                            xValueMapper: (WeekAmount data, _) =>
                                data.writingDay,
                            yValueMapper: (WeekAmount data, _) => data.amount,
                            gradient: gradientColors,
                            enableTooltip: true,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: SfCartesianChart(
                        title: ChartTitle(
                          text: 'RESULTADOS DOS COMPLIANCES EM CADA FAIXA',
                          borderWidth: 2,
                          alignment: ChartAlignment.center,
                          textStyle: GoogleFonts.lexendDeca(
                            color: primaryColor,
                            fontSize: 17,
                          ),
                        ),
                        // legend: Legend(isVisible: true),
                        primaryXAxis: CategoryAxis(),
                        series: <ChartSeries<AmountEachTrack, String>>[
                          ColumnSeries<AmountEachTrack, String>(
                            dataSource:
                                adminStore.graphicsModel!.amountEachTrack,
                            xValueMapper: (AmountEachTrack data, _) =>
                                data.description + '%',
                            yValueMapper: (AmountEachTrack data, _) =>
                                data.amount,
                            gradient: gradientColors,
                            dataLabelSettings: const DataLabelSettings(
                                isVisible: true,
                                useSeriesColor: true,
                                labelPosition: ChartDataLabelPosition.outside),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
      },
    );
  }
}
