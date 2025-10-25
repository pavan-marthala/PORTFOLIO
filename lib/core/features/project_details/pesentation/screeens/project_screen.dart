import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/features/home/data/models/project_model.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/project_app_bar.dart';
import 'package:portfolio_pavan/core/features/project_details/pesentation/widgets/project_body.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key, required this.projectModel});
  final ProjectModel projectModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(painter: GradientBackgroundPainter(), child: Container()),
          Stack(
            alignment: Alignment.center,
            children: [
              ProjectBody(projectModel: projectModel),
              ProjectAppBar(),
            ],
          ),
        ],
      ),
    );
  }
}

class GradientBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Base gradient
    final baseGradient = RadialGradient(
      center: const Alignment(0.0, -0.8),
      radius: 1.5,
      colors: [const Color(0xFF1e1b4b), const Color(0xFF000000)],
      stops: const [0.0, 0.5],
    );

    final basePaint = Paint()
      ..shader = baseGradient.createShader(
        Rect.fromLTWH(0, 0, size.width, size.height),
      );

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), basePaint);

    // Purple blob
    final purpleGradient = RadialGradient(
      colors: [const Color(0xFF7c3aed).withOpacity(0.15), Colors.transparent],
      stops: const [0.0, 0.5],
    );

    final purplePaint = Paint()
      ..shader = purpleGradient.createShader(
        Rect.fromCircle(
          center: Offset(size.width * 0.2, size.height * 0.3),
          radius: 300,
        ),
      );

    canvas.drawCircle(
      Offset(size.width * 0.2, size.height * 0.3),
      300,
      purplePaint,
    );

    // Blue blob
    final blueGradient = RadialGradient(
      colors: [const Color(0xFF3b82f6).withOpacity(0.15), Colors.transparent],
      stops: const [0.0, 0.5],
    );

    final bluePaint = Paint()
      ..shader = blueGradient.createShader(
        Rect.fromCircle(
          center: Offset(size.width * 0.8, size.height * 0.7),
          radius: 350,
        ),
      );

    canvas.drawCircle(
      Offset(size.width * 0.8, size.height * 0.7),
      350,
      bluePaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
