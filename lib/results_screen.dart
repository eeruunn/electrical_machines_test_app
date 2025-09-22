import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machines_test_app/about_screen.dart';
import 'package:machines_test_app/graphs_screen.dart';
import 'package:machines_test_app/models/chartData.dart';
import 'package:machines_test_app/models/machine.dart';
import 'package:machines_test_app/parameter_screen.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({
    super.key,
    required this.V,
    required this.If,
    required this.Ir,
    required this.Io,
    required this.Ra,
  });
  final double V;
  final double If;
  final double Ir;
  final double Io;
  final double Ra;
  @override
  State<ResultsScreen> createState() {
    return ResultsScreenState();
  }
}

class ResultsScreenState extends State<ResultsScreen> {
  int _currentIndex = 0;

  final List<String> titles = ["Parameters", "Graph", "About"];
  @override
  Widget build(BuildContext context) {
    double hotRes = 1.2 * widget.Ra;
    double constLoss =
        (widget.V * widget.Io) -
        (widget.Io - widget.If) * (widget.Io - widget.If) * hotRes;
    List<double> lC = [
      0.15 * widget.Ir,
      0.25 * widget.Ir,
      0.5 * widget.Ir,
      0.75 * widget.Ir,
    ];
    List<double> aC = [
      lC[0] - widget.If,
      lC[1] - widget.If,
      lC[2] - widget.If,
      lC[3] - widget.If,
    ];
    List<double> cL = [
      aC[0] * aC[0] * hotRes,
      aC[1] * aC[1] * hotRes,
      aC[2] * aC[2] * hotRes,
      aC[3] * aC[3] * hotRes,
    ];
    List<double> tL = [
      cL[0] + constLoss,
      cL[1] + constLoss,
      cL[2] + constLoss,
      cL[3] + constLoss,
    ];
    List<double> iP = [
      widget.V * lC[0],
      widget.V * lC[1],
      widget.V * lC[2],
      widget.V * lC[3],
    ];
    List<double> oP = [
      iP[0] - tL[0],
      iP[1] - tL[1],
      iP[2] - tL[2],
      iP[3] - tL[3],
    ];
    List<double> eff = [
      (oP[0] / iP[0]) * 100,
      (oP[1] / iP[1]) * 100,
      (oP[2] / iP[2]) * 100,
      (oP[3] / iP[3]) * 100,
    ];

    List<double> aCg = [
      lC[0] + widget.If,
      lC[1] + widget.If,
      lC[2] + widget.If,
      lC[3] + widget.If,
    ];
    List<double> cLg = [
      aCg[0] * aCg[0] * hotRes,
      aCg[1] * aCg[1] * hotRes,
      aCg[2] * aCg[2] * hotRes,
      aCg[3] * aCg[3] * hotRes,
    ];
    List<double> tLg = [
      cLg[0] + constLoss,
      cLg[1] + constLoss,
      cLg[2] + constLoss,
      cLg[3] + constLoss,
    ];
    List<double> oPg = [
      widget.V * lC[0],
      widget.V * lC[1],
      widget.V * lC[2],
      widget.V * lC[3],
    ];
    List<double> iPg = [
      iP[0] + tLg[0],
      iP[1] + tLg[1],
      iP[2] + tLg[2],
      iP[3] + tLg[3],
    ];
    List<double> effg = [
      (oPg[0] / iPg[0]) * 100,
      (oPg[1] / iPg[1]) * 100,
      (oPg[2] / iPg[2]) * 100,
      (oPg[3] / iPg[3]) * 100,
    ];
    final List<Widget> screens = [
      ParameterScreen(
        motor: MachineData(
          voltage: widget.V,
          lineCurrent: lC,
          armatureCurrent: aC,
          copperLoss: cL,
          totalLoss: tL,
          outputPower: oP,
          inputPower: iP,
          efficiency: eff,
        ),
        generator: MachineData(
          voltage: widget.V,
          lineCurrent: lC,
          armatureCurrent: aCg,
          copperLoss: cLg,
          totalLoss: tLg,
          outputPower: oPg,
          inputPower: iPg,
          efficiency: effg,
        ),
      ),

      GraphsScreen(
        data: [
          ChartData(
            mefficiency: eff[0],
            outputpower: oP[0],
            gefficiency: effg[0],
          ),
          ChartData(
            mefficiency: eff[1],
            outputpower: oP[1],
            gefficiency: effg[0],
          ),
          ChartData(
            mefficiency: eff[2],
            outputpower: oP[2],
            gefficiency: effg[2],
          ),
          ChartData(
            mefficiency: eff[3],
            outputpower: oP[3],
            gefficiency: effg[3],
          ),
        ],
      ),
      AboutScreen(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          titles[_currentIndex],
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (value) => setState(() {
          _currentIndex = value;
        }),
        elevation: 4,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart_outlined),
            label: "Parameters",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.bolt_outlined),
          //   label: "Efficiency",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_line_chart_rounded),
            label: "Graphs",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded),
            label: "About",
          ),
        ],
      ),
    );
  }
}
