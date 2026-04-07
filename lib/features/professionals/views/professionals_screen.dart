import '../../../l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/data/doctors_data.dart';
import '../../../shared/models/consultation.dart';
import 'consultation_request_screen.dart';

class ProfessionalsScreen extends StatelessWidget {
  const ProfessionalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l = L.of(context);
    final doctors = DoctorsData.accepting();

    return Scaffold(
      appBar: AppBar(
        title: Text(l.findProfessionals),
        actions: [
          IconButton(icon: const Icon(Icons.filter_list), onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: l.searchDoctors,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: AppColors.surface,
            ),
          ),
          const SizedBox(height: 20),

          // How it works banner
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppColors.secondary, AppColors.secondaryDark],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Async Consultations',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
                ),
                const SizedBox(height: 6),
                Text(
                  'Describe your concern, upload labs/photos, get a written '
                  'assessment from a real doctor within 24-48 hours. '
                  'One follow-up question included.',
                  style: TextStyle(color: Colors.white.withValues(alpha: 0.9), fontSize: 13, height: 1.4),
                ),
                const SizedBox(height: 12),
                const Row(
                  children: [
                    _HowItWorksStep(number: '1', label: 'Describe'),
                    _HowItWorksStep(number: '2', label: 'Upload'),
                    _HowItWorksStep(number: '3', label: 'Pay'),
                    _HowItWorksStep(number: '4', label: 'Get answer'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          Text('Specialties', style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),
          SizedBox(
            height: 44,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const _SpecialtyChip(label: 'All', isSelected: true),
                ...SpecialtyType.values.take(5).map((s) => _SpecialtyChip(label: s.label)),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Text(l.recommended, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 12),

          ...doctors.map((doc) => _DoctorCard(
                doctor: doc,
                onConsult: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => ConsultationRequestScreen(doctor: doc)),
                ),
              )),

          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.accent.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.accent.withValues(alpha: 0.2)),
            ),
            child: Column(
              children: [
                const Icon(Icons.person_add, color: AppColors.accentDark, size: 32),
                const SizedBox(height: 8),
                const Text('More doctors joining soon', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                const SizedBox(height: 4),
                Text(
                  'Pediatricians, OB-GYNs, lactation consultants, mental health specialists, and nutritionists.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: AppColors.textSecondary, height: 1.4),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _HowItWorksStep extends StatelessWidget {
  final String number;
  final String label;
  const _HowItWorksStep({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 28, height: 28,
            decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.25), shape: BoxShape.circle),
            child: Center(child: Text(number, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 13))),
          ),
          const SizedBox(height: 4),
          Text(label, style: TextStyle(color: Colors.white.withValues(alpha: 0.9), fontSize: 11, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class _SpecialtyChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  const _SpecialtyChip({required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (_) {},
        selectedColor: AppColors.primary.withValues(alpha: 0.15),
        checkmarkColor: AppColors.primary,
        side: BorderSide(color: isSelected ? AppColors.primary : AppColors.divider),
      ),
    );
  }
}

class _DoctorCard extends StatelessWidget {
  final DoctorProfile doctor;
  final VoidCallback onConsult;
  const _DoctorCard({required this.doctor, required this.onConsult});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 14),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: AppColors.secondary.withValues(alpha: 0.12),
                  child: Text(
                    doctor.fullName.split(' ').last[0],
                    style: const TextStyle(color: AppColors.secondary, fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(child: Text(doctor.fullName, style: Theme.of(context).textTheme.titleMedium, overflow: TextOverflow.ellipsis)),
                          if (doctor.isVerified) ...[const SizedBox(width: 4), const Icon(Icons.verified, size: 16, color: AppColors.secondary)],
                        ],
                      ),
                      Text('${doctor.title} · ${doctor.specialty.label}', style: Theme.of(context).textTheme.bodySmall),
                      const SizedBox(height: 4),
                      Wrap(
                        spacing: 4,
                        children: doctor.languages.map((lang) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(color: AppColors.secondary.withValues(alpha: 0.08), borderRadius: BorderRadius.circular(4)),
                          child: Text(lang, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: AppColors.secondaryDark)),
                        )).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(doctor.bio, style: TextStyle(fontSize: 13, color: AppColors.textSecondary, height: 1.5), maxLines: 3, overflow: TextOverflow.ellipsis),
            const SizedBox(height: 12),
            ...doctor.credentials.take(3).map((c) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.school, size: 14, color: AppColors.secondary),
                  const SizedBox(width: 6),
                  Expanded(child: Text(c, style: const TextStyle(fontSize: 12, height: 1.3))),
                ],
              ),
            )),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(color: AppColors.success.withValues(alpha: 0.06), borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  const Icon(Icons.access_time, size: 14, color: AppColors.success),
                  const SizedBox(width: 6),
                  Text(doctor.responseTime, style: const TextStyle(color: AppColors.success, fontSize: 13, fontWeight: FontWeight.w500)),
                  const Spacer(),
                  Text(doctor.priceFormatted, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: AppColors.primary)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: onConsult, child: const Text('Request Consultation')),
            ),
          ],
        ),
      ),
    );
  }
}
