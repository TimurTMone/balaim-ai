import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/data/doctors_data.dart';
import '../../../shared/models/consultation.dart';

/// Multi-step consultation request form.
///
/// Step 1: Who is this for? (self, child, partner)
/// Step 2: What's going on? (main concern, symptoms, duration)
/// Step 3: What have you tried? (medications, mitigation)
/// Step 4: Medical history (history, allergies, family)
/// Step 5: Upload evidence (lab results, photos)
/// Step 6: Review & pay
class ConsultationRequestScreen extends ConsumerStatefulWidget {
  final DoctorProfile doctor;

  const ConsultationRequestScreen({super.key, required this.doctor});

  @override
  ConsumerState<ConsultationRequestScreen> createState() =>
      _ConsultationRequestScreenState();
}

class _ConsultationRequestScreenState
    extends ConsumerState<ConsultationRequestScreen> {
  final _pageController = PageController();
  int _currentStep = 0;
  final _totalSteps = 6;

  // Step 1: Who
  String _relationship = 'my child';
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  String _sex = 'Female';

  // Step 2: What's wrong
  final _mainConcernController = TextEditingController();
  final _symptomDetailsController = TextEditingController();
  final _symptomDurationController = TextEditingController();

  // Step 3: What they've tried
  final _whatTriedController = TextEditingController();
  final _medicationsController = TextEditingController();

  // Step 4: History
  final _medicalHistoryController = TextEditingController();
  final _allergiesController = TextEditingController();
  final _familyHistoryController = TextEditingController();

  // Step 5: Uploads (placeholder — URLs would come from Firebase Storage)
  final List<String> _labResultUrls = [];
  final List<String> _photoUrls = [];
  final _additionalNotesController = TextEditingController();

  // Step 6: Urgency
  ConsultationUrgency _urgency = ConsultationUrgency.routine;

  @override
  void dispose() {
    _pageController.dispose();
    _nameController.dispose();
    _ageController.dispose();
    _mainConcernController.dispose();
    _symptomDetailsController.dispose();
    _symptomDurationController.dispose();
    _whatTriedController.dispose();
    _medicationsController.dispose();
    _medicalHistoryController.dispose();
    _allergiesController.dispose();
    _familyHistoryController.dispose();
    _additionalNotesController.dispose();
    super.dispose();
  }

  void _nextStep() {
    if (_currentStep < _totalSteps - 1) {
      setState(() => _currentStep++);
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevStep() {
    if (_currentStep > 0) {
      setState(() => _currentStep--);
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final progress = (_currentStep + 1) / _totalSteps;
    final doctor = widget.doctor;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text('Consult ${doctor.fullName}'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => _confirmExit(context),
        ),
      ),
      body: Column(
        children: [
          // Progress bar
          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Step ${_currentStep + 1} of $_totalSteps',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                    Text(
                      '${(progress * 100).round()}%',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.textHint,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: progress,
                    minHeight: 6,
                    backgroundColor: AppColors.divider,
                    valueColor:
                        const AlwaysStoppedAnimation(AppColors.primary),
                  ),
                ),
              ],
            ),
          ),

          // Steps
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _buildStep1Who(),
                _buildStep2WhatsWrong(),
                _buildStep3WhatTried(),
                _buildStep4History(),
                _buildStep5Uploads(),
                _buildStep6Review(),
              ],
            ),
          ),

          // Navigation buttons
          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
            decoration: const BoxDecoration(
              color: AppColors.surface,
              border: Border(top: BorderSide(color: AppColors.divider)),
            ),
            child: Row(
              children: [
                if (_currentStep > 0)
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _prevStep,
                      child: const Text('Back'),
                    ),
                  ),
                if (_currentStep > 0) const SizedBox(width: 12),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: _currentStep == _totalSteps - 1
                        ? _submit
                        : _nextStep,
                    child: Text(
                      _currentStep == _totalSteps - 1
                          ? 'Submit & Pay ${doctor.priceFormatted}'
                          : 'Continue',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // =========================================================
  // STEP 1: WHO IS THIS FOR?
  // =========================================================
  Widget _buildStep1Who() {
    return _StepBody(
      title: 'Who is this consultation for?',
      children: [
        _ChoiceRow(
          options: const ['Self', 'My child', 'My partner'],
          selected: _relationship,
          onSelect: (v) => setState(() => _relationship = v.toLowerCase()),
        ),
        const SizedBox(height: 20),
        TextField(
          controller: _nameController,
          decoration: const InputDecoration(
            labelText: 'Patient name',
            prefixIcon: Icon(Icons.person_outline),
          ),
        ),
        const SizedBox(height: 14),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: _relationship == 'my child'
                      ? 'Age (months)'
                      : 'Age (years)',
                  prefixIcon: const Icon(Icons.cake_outlined),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Sex',
                      style:
                          TextStyle(fontSize: 12, color: AppColors.textHint)),
                  const SizedBox(height: 8),
                  _ChoiceRow(
                    options: const ['Female', 'Male'],
                    selected: _sex,
                    onSelect: (v) => setState(() => _sex = v),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // =========================================================
  // STEP 2: WHAT'S GOING ON?
  // =========================================================
  Widget _buildStep2WhatsWrong() {
    final reqs = IntakeRequirements.forSpecialty(widget.doctor.specialty);
    return _StepBody(
      title: "What's going on?",
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.secondary.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What ${widget.doctor.fullName} needs:',
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 6),
              ...reqs.take(3).map((r) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.check_circle,
                            size: 14, color: AppColors.secondary),
                        const SizedBox(width: 6),
                        Expanded(
                            child:
                                Text(r, style: const TextStyle(fontSize: 12))),
                      ],
                    ),
                  )),
            ],
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _mainConcernController,
          decoration: const InputDecoration(
            labelText: 'Main concern (in one sentence)',
            hintText: 'e.g., "My 6-month-old has a rash on her chest"',
            prefixIcon: Icon(Icons.medical_services_outlined),
          ),
          maxLines: 2,
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _symptomDetailsController,
          decoration: const InputDecoration(
            labelText: 'Describe symptoms in detail',
            hintText: 'When did it start? Is it getting worse? Any pattern?',
          ),
          maxLines: 4,
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _symptomDurationController,
          decoration: const InputDecoration(
            labelText: 'How long has this been going on?',
            hintText: 'e.g., "3 days", "since birth", "comes and goes"',
            prefixIcon: Icon(Icons.timer_outlined),
          ),
        ),
      ],
    );
  }

  // =========================================================
  // STEP 3: WHAT HAVE YOU TRIED?
  // =========================================================
  Widget _buildStep3WhatTried() {
    return _StepBody(
      title: "What have you tried so far?",
      children: [
        TextField(
          controller: _whatTriedController,
          decoration: const InputDecoration(
            labelText: 'What have you done to address this?',
            hintText:
                'e.g., "Applied hydrocortisone cream, gave Tylenol for fever"',
          ),
          maxLines: 3,
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _medicationsController,
          decoration: const InputDecoration(
            labelText: 'Current medications & supplements',
            hintText:
                'List everything being taken (prescription, OTC, vitamins)',
            prefixIcon: Icon(Icons.medication_outlined),
          ),
          maxLines: 3,
        ),
      ],
    );
  }

  // =========================================================
  // STEP 4: MEDICAL HISTORY
  // =========================================================
  Widget _buildStep4History() {
    return _StepBody(
      title: 'Medical history',
      children: [
        TextField(
          controller: _medicalHistoryController,
          decoration: const InputDecoration(
            labelText: 'Medical history',
            hintText:
                'Chronic conditions, past diagnoses, surgeries, hospitalizations',
          ),
          maxLines: 3,
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _allergiesController,
          decoration: const InputDecoration(
            labelText: 'Allergies',
            hintText: 'Drug allergies, food allergies, environmental',
            prefixIcon: Icon(Icons.warning_amber),
          ),
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _familyHistoryController,
          decoration: const InputDecoration(
            labelText: 'Relevant family history',
            hintText: 'Diabetes, thyroid, heart disease, cancer, etc.',
            prefixIcon: Icon(Icons.family_restroom),
          ),
          maxLines: 2,
        ),
      ],
    );
  }

  // =========================================================
  // STEP 5: UPLOADS
  // =========================================================
  Widget _buildStep5Uploads() {
    return _StepBody(
      title: 'Upload evidence',
      children: [
        // Lab results
        _UploadSection(
          title: 'Lab Results',
          icon: Icons.science_outlined,
          subtitle: 'Blood work, imaging, test results',
          urls: _labResultUrls,
          onAdd: () {
            // TODO: Firebase Storage upload via image_picker
            setState(() => _labResultUrls.add('placeholder_${_labResultUrls.length}'));
          },
        ),
        const SizedBox(height: 14),
        // Photos
        _UploadSection(
          title: 'Photos',
          icon: Icons.camera_alt_outlined,
          subtitle: 'Rash, swelling, affected area',
          urls: _photoUrls,
          onAdd: () {
            setState(() => _photoUrls.add('placeholder_${_photoUrls.length}'));
          },
        ),
        const SizedBox(height: 14),
        TextField(
          controller: _additionalNotesController,
          decoration: const InputDecoration(
            labelText: 'Anything else the doctor should know?',
            hintText: 'Additional context, worries, questions...',
          ),
          maxLines: 3,
        ),
      ],
    );
  }

  // =========================================================
  // STEP 6: REVIEW & PAY
  // =========================================================
  Widget _buildStep6Review() {
    final doctor = widget.doctor;
    return _StepBody(
      title: 'Review & submit',
      children: [
        // Doctor card
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
                radius: 24,
                backgroundColor: AppColors.secondary.withValues(alpha: 0.12),
                child: Text(
                  doctor.fullName[0],
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.secondary,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(doctor.fullName,
                        style: const TextStyle(fontWeight: FontWeight.w700)),
                    Text(doctor.specialty.label,
                        style: TextStyle(
                            fontSize: 12, color: AppColors.textHint)),
                  ],
                ),
              ),
              Text(
                doctor.priceFormatted,
                style: const TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // Urgency
        const Text('Urgency',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
        const SizedBox(height: 8),
        ...ConsultationUrgency.values.map((u) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Material(
                color: _urgency == u
                    ? AppColors.primary.withValues(alpha: 0.08)
                    : AppColors.surface,
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  onTap: () => setState(() => _urgency = u),
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: _urgency == u
                            ? AppColors.primary
                            : AppColors.divider,
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          _urgency == u
                              ? Icons.radio_button_checked
                              : Icons.radio_button_off,
                          color: _urgency == u
                              ? AppColors.primary
                              : AppColors.textHint,
                          size: 20,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(u.label,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w600)),
                              Text(u.description,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.textHint)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),

        const SizedBox(height: 16),
        // Summary
        _SummaryRow(label: 'Patient', value: _nameController.text),
        _SummaryRow(label: 'Concern', value: _mainConcernController.text),
        _SummaryRow(
            label: 'Attachments',
            value: '${_labResultUrls.length} labs, ${_photoUrls.length} photos'),
        _SummaryRow(label: 'Response time', value: doctor.responseTime),
        const SizedBox(height: 12),

        // What's included
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.success.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Included in your consultation:',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13)),
              SizedBox(height: 8),
              _IncludedItem('Full case review by the doctor'),
              _IncludedItem('Written assessment & recommendations'),
              _IncludedItem('1 follow-up question'),
              _IncludedItem('When to seek emergency care guidance'),
            ],
          ),
        ),

        const SizedBox(height: 12),
        Text(
          'By submitting, you agree that this is not an emergency and does not replace in-person care.',
          style:
              TextStyle(fontSize: 11, color: AppColors.textHint, height: 1.4),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  void _submit() {
    // TODO: Create Firestore document, process Stripe payment, notify doctor
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Consultation Submitted'),
        content: Text(
          '${widget.doctor.fullName} will review your case and respond ${widget.doctor.responseTime.toLowerCase()}.\n\n'
          'You\'ll receive a notification when the response is ready.',
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.go('/');
            },
            child: const Text('Got it'),
          ),
        ],
      ),
    );
  }

  void _confirmExit(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Discard consultation?'),
        content: const Text(
          'Your progress will be lost. Are you sure?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Keep editing'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.pop();
            },
            style: TextButton.styleFrom(foregroundColor: AppColors.error),
            child: const Text('Discard'),
          ),
        ],
      ),
    );
  }
}

// =========================================================
// SHARED WIDGETS
// =========================================================

class _StepBody extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _StepBody({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          ...children,
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class _ChoiceRow extends StatelessWidget {
  final List<String> options;
  final String selected;
  final ValueChanged<String> onSelect;

  const _ChoiceRow({
    required this.options,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: options.map((o) {
        final isSelected = selected.toLowerCase() == o.toLowerCase();
        return GestureDetector(
          onTap: () => onSelect(o),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primary : AppColors.surface,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: isSelected ? AppColors.primary : AppColors.divider,
              ),
            ),
            child: Text(
              o,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: isSelected ? Colors.white : AppColors.textPrimary,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _UploadSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final String subtitle;
  final List<String> urls;
  final VoidCallback onAdd;

  const _UploadSection({
    required this.title,
    required this.icon,
    required this.subtitle,
    required this.urls,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
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
              Icon(icon, color: AppColors.primary, size: 22),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(fontWeight: FontWeight.w700)),
                    Text(subtitle,
                        style: TextStyle(
                            fontSize: 12, color: AppColors.textHint)),
                  ],
                ),
              ),
              OutlinedButton.icon(
                onPressed: onAdd,
                icon: const Icon(Icons.add, size: 16),
                label: const Text('Add'),
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  textStyle: const TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
          if (urls.isNotEmpty) ...[
            const SizedBox(height: 10),
            Wrap(
              spacing: 8,
              children: List.generate(
                urls.length,
                (i) => Chip(
                  label: Text('File ${i + 1}',
                      style: const TextStyle(fontSize: 12)),
                  deleteIcon: const Icon(Icons.close, size: 14),
                  onDeleted: () {},
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  final String label;
  final String value;

  const _SummaryRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(label,
                style: TextStyle(fontSize: 13, color: AppColors.textHint)),
          ),
          Expanded(
            child: Text(
              value.isEmpty ? '—' : value,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

class _IncludedItem extends StatelessWidget {
  final String text;
  const _IncludedItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          const Icon(Icons.check, size: 14, color: AppColors.success),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(fontSize: 13)),
        ],
      ),
    );
  }
}
