import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/theme/theme.dart';

class LiveNewsBanner extends StatelessWidget {
  const LiveNewsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = context.theme.appColors;
    final gradients = context.theme.appGradients;
    final typography = context.theme.appTypography;
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(gradient: gradients.rainbow),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 4,
            bottom: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Skills',
                  style: typography.labelSmall.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: _AutoScrollingText(
              text: _buildSkillsText(),
              style: typography.labelMedium.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _buildSkillsText() {
    return skills.map((skill) => skill.toUpperCase()).join('       ');
  }
}

class _AutoScrollingText extends StatefulWidget {
  final String text;
  final TextStyle style;

  const _AutoScrollingText({required this.text, required this.style});

  @override
  State<_AutoScrollingText> createState() => _AutoScrollingTextState();
}

class _AutoScrollingTextState extends State<_AutoScrollingText>
    with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(minutes: 4),
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      _controller.addListener(() {
        if (!mounted) return;
        if (_scrollController.hasClients) {
          final maxScroll = _scrollController.position.maxScrollExtent;
          _scrollController.jumpTo(
            (maxScroll * _controller.value)
                .clamp(0.0, _scrollController.position.maxScrollExtent),
          );
        }
      });

      _controller.repeat();
    });
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final repeatedText = '${widget.text}     ${widget.text}     ${widget.text}';

    return Center(
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        child: Text(repeatedText, style: widget.style, maxLines: 1),
      ),
    );
  }
}

List<String> skills = [
  "Flutter",
  "Dart",
  "Java",
  "JavaScript",
  "TypeScript",
  "Markdown",
  "AWS",
  "Google Cloud",
  "MongoDB",
  "Firebase",
  "Git",
  "REST APIs",
  "Apache Kafka",
  "HTML5",
  "CSS3",
  "Sass",
  "Bootstrap",
  "Material UI",
  "Agile Methodologies",
  "CI/CD",
  "Unit Testing",
  "Integration Testing",
  "JWT",
  "Spring Boot",
  "Spring webflux",
  "Azure",
  "Apache Maven",
  "Linux",
  "Vagrant",
  "Ansible",
  "Docker",
  "Kubernetes",
];
