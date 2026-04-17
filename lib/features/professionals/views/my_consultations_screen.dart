import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../l10n/app_localizations.dart';
import '../../../shared/models/consultation.dart';
import '../providers/consultation_provider.dart';

/// Patient-facing list of their consultations — streams from Firestore.
class MyConsultationsScreen extends ConsumerWidget {
  const MyConsultationsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(patientConsultationsProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(L.of(context).myConsultations),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (list) {
          if (list.isEmpty) return _Empty(onBrowse: () => context.go('/professionals'));
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: list.length,
            itemBuilder: (context, i) => _ConsultCard(data: list[i]),
          );
        },
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  final VoidCallback onBrowse;
  const _Empty({required this.onBrowse});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: AppColors.secondary.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.medical_services,
                  color: AppColors.secondary, size: 36),
            ),
            const SizedBox(height: 20),
            Text(
              L.of(context).noConsultationsYet,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              L.of(context).browseAndConsult,
              style: TextStyle(color: AppColors.textHint, fontSize: 14, height: 1.5),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: onBrowse,
              icon: const Icon(Icons.arrow_forward),
              label: Text(L.of(context).findProfessionals),
            ),
          ],
        ),
      ),
    );
  }
}

class _ConsultCard extends StatelessWidget {
  final Map<String, dynamic> data;
  const _ConsultCard({required this.data});

  @override
  Widget build(BuildContext context) {
    final status = data['status'] as String? ?? 'submitted';
    final createdAt = DateTime.tryParse(data['createdAt']?.toString() ?? '') ??
        DateTime.now();
    final ago = DateTime.now().difference(createdAt);
    final agoStr = ago.inHours < 1
        ? '${ago.inMinutes}m'
        : ago.inHours < 24
            ? '${ago.inHours}h'
            : '${ago.inDays}d';

    final isAnswered = status == ConsultationStatus.answered.name ||
        status == ConsultationStatus.followUpAnswered.name;
    final statusColor = isAnswered
        ? AppColors.success
        : status == ConsultationStatus.followUpAsked.name
            ? AppColors.accent
            : AppColors.secondary;
    final statusLabel = isAnswered
        ? L.of(context).doctorHasResponded
        : status == ConsultationStatus.followUpAsked.name
            ? L.of(context).waitingForFollowUpAnswer
            : L.of(context).doctorReviewingCase;

    final mainConcern = (data['intake'] as Map?)?['mainConcern'] ??
        data['mainConcern'] ??
        '';

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => context.push('/my-consultations/${data['id']}'),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                      color: statusColor.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      statusLabel,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: statusColor,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(agoStr, style: TextStyle(fontSize: 12, color: AppColors.textHint)),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                data['doctorName'] ?? 'Doctor',
                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
              ),
              const SizedBox(height: 4),
              Text(
                mainConcern,
                style: TextStyle(fontSize: 13, color: AppColors.textSecondary, height: 1.4),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
