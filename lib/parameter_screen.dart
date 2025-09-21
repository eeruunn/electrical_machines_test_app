import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:machines_test_app/models/machine.dart';

class ParameterScreen extends StatelessWidget {
  const ParameterScreen({
    super.key,
    required this.motor,
    required this.generator,
  });
  final MachineData motor;
  final MachineData generator;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Motor",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        "Voltage",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        "Line \n Current",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        "Armature \n Current",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        "Copper \n Loss",

                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        "Total \n Losses",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        "Output \n Power",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        "Input \n Power",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        "Efficiency",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.voltage.toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.lineCurrent[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.armatureCurrent[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.copperLoss[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.totalLoss[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.outputPower[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.inputPower[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.efficiency[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.voltage.toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.lineCurrent[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.armatureCurrent[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.copperLoss[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.totalLoss[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.outputPower[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.inputPower[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.efficiency[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.voltage.toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.lineCurrent[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.armatureCurrent[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.copperLoss[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.totalLoss[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.outputPower[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.inputPower[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.efficiency[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.voltage.toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.lineCurrent[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.armatureCurrent[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.copperLoss[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.totalLoss[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.outputPower[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.inputPower[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          motor.efficiency[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Generator",
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: DataTable(
                columns: [
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        "Voltage",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        "Line \n Current",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        "Armature \n Current",
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        "Copper \n Loss",

                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        "Total \n Losses",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        "Output \n Power",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        "Input \n Power",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Expanded(
                      child: Text(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        "Efficiency",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.voltage.toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.lineCurrent[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.armatureCurrent[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.copperLoss[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.totalLoss[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.outputPower[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.inputPower[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.efficiency[0].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.voltage.toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.lineCurrent[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.armatureCurrent[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.copperLoss[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.totalLoss[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.outputPower[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.inputPower[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.efficiency[1].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.voltage.toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.lineCurrent[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.armatureCurrent[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.copperLoss[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.totalLoss[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.outputPower[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.inputPower[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.efficiency[2].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.voltage.toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.lineCurrent[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.armatureCurrent[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.copperLoss[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.totalLoss[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.outputPower[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.inputPower[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                      DataCell(
                        Text(
                          maxLines: 2,

                          generator.efficiency[3].toStringAsFixed(2),
                          style: GoogleFonts.poppins(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
