import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/data/trimester_content.dart';
import '../providers/journey_provider.dart';

class TrimesterGuideScreen extends ConsumerWidget {
  const TrimesterGuideScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(userProfileProvider);
    final week = profile.currentWeek ?? 24;
    final trimester = Trimester.fromWeek(week);
    final nutrition = TrimesterContent.nutritionFor(week);
    final exercise = TrimesterContent.exerciseFor(week);
    final partner = TrimesterContent.partnerTipsFor(week);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('${trimester.label.of(context)} Trimester Guide'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Header
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColors.primary, AppColors.primaryDark],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${trimester.label.of(context)} Trimester',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Week $week · Weeks ${trimester.startWeek}-${trimester.endWeek}',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.85),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          _GuideSection(guide: nutrition),
          const SizedBox(height: 12),
          _GuideSection(guide: exercise),
          const SizedBox(height: 12),
          _GuideSection(guide: partner),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _GuideSection extends StatelessWidget {
  final TrimesterGuide guide;
  const _GuideSection({required this.guide});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: guide.color.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(guide.icon, color: guide.color, size: 22),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  guide.title.of(context),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            guide.intro.of(context),
            style: const TextStyle(fontSize: 14, height: 1.5),
          ),
          const SizedBox(height: 16),

          // Do's
          _BulletList(
            heading: 'DO',
            items: guide.dos.map((d) => d.of(context)).toList(),
            color: AppColors.success,
            icon: Icons.check_circle,
          ),
          const SizedBox(height: 12),

          // Don'ts
          _BulletList(
            heading: "DON'T",
            items: guide.donts.map((d) => d.of(context)).toList(),
            color: AppColors.error,
            icon: Icons.cancel,
          ),
        ],
      ),
    );
  }
}

class _BulletList extends StatelessWidget {
  final String heading;
  final List<String> items;
  final Color color;
  final IconData icon;

  const _BulletList({
    required this.heading,
    required this.items,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: color,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          ...items.map((item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(icon, size: 16, color: color),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        item,
                        style: const TextStyle(fontSize: 13, height: 1.4),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
