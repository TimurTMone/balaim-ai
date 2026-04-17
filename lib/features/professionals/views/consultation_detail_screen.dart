import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/services/consultation_service.dart';
import '../../../shared/models/consultation.dart';
import '../../../l10n/app_localizations.dart';
import '../providers/consultation_provider.dart';

/// What the patient sees after submitting — streams the live consultation.
/// As the doctor transitions status (inReview → answered) the screen auto-updates.
class ConsultationDetailScreen extends ConsumerStatefulWidget {
  final String consultationId;

  const ConsultationDetailScreen({
    super.key,
    required this.consultationId,
  });

  @override
  ConsumerState<ConsultationDetailScreen> createState() =>
      _ConsultationDetailScreenState();
}

class _ConsultationDetailScreenState extends ConsumerState<ConsultationDetailScreen> {
  final _followUpController = TextEditingController();
  bool _showFollowUpInput = false;
  bool _submittingFollowUp = false;

  @override
  void dispose() {
    _followUpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(consultationDetailProvider(widget.consultationId));

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(L.of(context).consultation),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Text('Error: $e', textAlign: TextAlign.center),
          ),
        ),
        data: (c) {
          if (c == null) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(L.of(context).waitingForDoctorFollowUp, textAlign: TextAlign.center),
              ),
            );
          }
          return _buildBody(c);
        },
      ),
    );
  }

  Widget _buildBody(Map<String, dynamic> c) {
    final response = c['response'] as Map<String, dynamic>?;
    final status = c['status'] as String?;
    final intake = (c['intake'] as Map?)?.cast<String, dynamic>() ?? const {};
    final mainConcern = intake['mainConcern'] ?? c['mainConcern'] ?? '';
    final canAskFollowUp =
        status == ConsultationStatus.answered.name && c['followUpQuestion'] == null;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Status banner
        _StatusBanner(status: status ?? 'submitted'),
        const SizedBox(height: 16),

        // Doctor info
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.divider),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: AppColors.secondary.withValues(alpha: 0.12),
                child: const Icon(Icons.medical_services,
                    color: AppColors.secondary, size: 20),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(c['doctorName'] ?? 'Your Doctor',
                        style: const TextStyle(fontWeight: FontWeight.w700)),
                    Text(c['specialty'] ?? '',
                        style: TextStyle(
                            fontSize: 12, color: AppColors.textHint)),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),

        // Your concern (what you submitted)
        _Section(
          title: L.of(context).yourConcern,
          icon: Icons.message_outlined,
          child: Text(
            mainConcern,
            style: const TextStyle(fontSize: 14, height: 1.5),
          ),
        ),

        // Doctor's response (if answered)
        if (response != null) ...[
          const SizedBox(height: 12),
          _Section(
            title: L.of(context).doctorsAssessment,
            icon: Icons.medical_information,
            color: AppColors.secondary,
            child: Text(
              response['assessment'] ?? '',
              style: const TextStyle(fontSize: 15, height: 1.6),
            ),
          ),
          const SizedBox(height: 12),
          _Section(
            title: L.of(context).recommendationsLabel,
            icon: Icons.checklist,
            color: AppColors.success,
            child: Text(
              response['recommendations'] ?? '',
              style: const TextStyle(fontSize: 14, height: 1.6),
            ),
          ),

          if (response['prescriptionNotes'] != null &&
              (response['prescriptionNotes'] as String).isNotEmpty) ...[
            const SizedBox(height: 12),
            _Section(
              title: L.of(context).medicationNotes,
              icon: Icons.medication,
              child: Text(
                response['prescriptionNotes'],
                style: const TextStyle(fontSize: 14, height: 1.6),
              ),
            ),
          ],

          if (response['followUpTests'] != null &&
              (response['followUpTests'] as List).isNotEmpty) ...[
            const SizedBox(height: 12),
            _Section(
              title: L.of(context).recommendedFollowUpTests,
              icon: Icons.science,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: (response['followUpTests'] as List)
                    .map<Widget>((t) => Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(Icons.arrow_right,
                                  size: 18, color: AppColors.secondary),
                              Expanded(
                                  child: Text(t.toString(),
                                      style: const TextStyle(
                                          fontSize: 14, height: 1.4))),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],

          if (response['referralNote'] != null &&
              (response['referralNote'] as String).isNotEmpty) ...[
            const SizedBox(height: 12),
            _Section(
              title: L.of(context).referral,
              icon: Icons.swap_horiz,
              child: Text(
                response['referralNote'],
                style: const TextStyle(fontSize: 14, height: 1.6),
              ),
            ),
          ],

          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.error.withValues(alpha: 0.06),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.error.withValues(alpha: 0.3)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.emergency, color: AppColors.error, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      L.of(context).whenToSeekEmergencyCare,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: AppColors.error,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  response['whenToSeekEmergencyCare'] ?? '',
                  style: const TextStyle(fontSize: 14, height: 1.6),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),

          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.divider.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              response['disclaimer'] ??
                  'This assessment is based on the information provided and does not '
                      'replace an in-person examination. If symptoms worsen, please visit '
                      'your local healthcare provider.',
              style: TextStyle(
                  fontSize: 12, color: AppColors.textHint, height: 1.4),
            ),
          ),
        ],

        // Follow-up question section
        if (c['followUpQuestion'] != null) ...[
          const SizedBox(height: 16),
          _Section(
            title: L.of(context).yourFollowUpQuestion,
            icon: Icons.help_outline,
            color: AppColors.accent,
            child: Text(
              c['followUpQuestion'],
              style: const TextStyle(fontSize: 14, height: 1.5),
            ),
          ),
          if (c['followUpAnswer'] != null) ...[
            const SizedBox(height: 12),
            _Section(
              title: L.of(context).doctorsAnswer,
              icon: Icons.reply,
              color: AppColors.secondary,
              child: Text(
                c['followUpAnswer'],
                style: const TextStyle(fontSize: 14, height: 1.6),
              ),
            ),
          ] else
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                L.of(context).waitingForDoctorFollowUp,
                style: TextStyle(
                  color: AppColors.textHint,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
        ],

        if (canAskFollowUp && !_showFollowUpInput) ...[
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: () => setState(() => _showFollowUpInput = true),
              icon: const Icon(Icons.reply),
              label: Text(L.of(context).askFollowUpQuestion),
            ),
          ),
        ],

        if (_showFollowUpInput) ...[
          const SizedBox(height: 16),
          Text(
            L.of(context).askOneFollowUp,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          ),
          const SizedBox(height: 4),
          Text(
            L.of(context).beSpecificDoctor,
            style: const TextStyle(fontSize: 12, color: AppColors.textHint),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _followUpController,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: L.of(context).yourFollowUpQuestionHint,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: _submittingFollowUp
                      ? null
                      : () => setState(() => _showFollowUpInput = false),
                  child: Text(L.of(context).cancel),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  onPressed: _submittingFollowUp ? null : _submitFollowUp,
                  child: _submittingFollowUp
                      ? const SizedBox(
                          width: 18, height: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : Text(L.of(context).sendQuestion),
                ),
              ),
            ],
          ),
        ],
        const SizedBox(height: 32),
      ],
    );
  }

  Future<void> _submitFollowUp() async {
    final text = _followUpController.text.trim();
    if (text.isEmpty) return;
    setState(() => _submittingFollowUp = true);
    try {
      await ConsultationService().askFollowUp(widget.consultationId, text);
      if (!mounted) return;
      setState(() {
        _submittingFollowUp = false;
        _showFollowUpInput = false;
        _followUpController.clear();
      });
      await showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(L.of(context).followUpSent),
          content: Text(L.of(context).doctorWillRespond),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(L.of(context).gotIt),
            ),
          ],
        ),
      );
    } catch (e) {
      if (!mounted) return;
      setState(() => _submittingFollowUp = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e'), behavior: SnackBarBehavior.floating),
      );
    }
  }
}

class _StatusBanner extends StatelessWidget {
  final String status;
  const _StatusBanner({required this.status});

  @override
  Widget build(BuildContext context) {
    final isAnswered = status == 'answered' ||
        status == 'followUpAnswered' ||
        status == 'closed';
    final isFollowUpWaiting = status == 'followUpAsked';

    final color = isAnswered
        ? AppColors.success
        : isFollowUpWaiting
            ? AppColors.accent
            : AppColors.secondary;
    final icon = isAnswered
        ? Icons.check_circle
        : isFollowUpWaiting
            ? Icons.hourglass_top
            : Icons.schedule;
    final label = isAnswered
        ? L.of(context).doctorHasResponded
        : isFollowUpWaiting
            ? L.of(context).waitingForFollowUpAnswer
            : L.of(context).doctorReviewingCase;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 22),
          const SizedBox(width: 10),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color;
  final Widget child;
  const _Section({
    required this.title,
    required this.icon,
    this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final c = color ?? AppColors.primary;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.divider),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: c, size: 20),
              const SizedBox(width: 8),
              Text(title,
                  style:
                      const TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
            ],
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}
