class MachineData {
  MachineData({
    required this.voltage,
    required this.lineCurrent,
    required this.armatureCurrent,
    required this.copperLoss,
    required this.totalLoss,
    required this.outputPower,
    required this.inputPower,
    required this.efficiency,
  });
  final double voltage;
  final List<double> lineCurrent;
  final List<double> armatureCurrent;
  final List<double> copperLoss;
  final List<double> totalLoss;
  final List<double> outputPower;
  final List<double> inputPower;
  final List<double> efficiency;
}
