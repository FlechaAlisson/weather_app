import 'package:flutter/material.dart';

Future<T?> showCustomAppModal<T>({
  required BuildContext context,
  required String title,
  String? message,
  String? primaryLabel,
  VoidCallback? onPrimary,
  String? secondaryLabel,
  VoidCallback? onSecondary,
  bool dismissible = true,
  Widget? content,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isDismissible: dismissible,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
    ),
    builder: (context) => ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.9,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 8),
            if (message != null)
              Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.black54,
                ),
              ),

            if (content != null)
              Flexible(
                child: content,
              ),

            const SizedBox(height: 24),
            if (primaryLabel != null)
              FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                  onPrimary?.call();
                },
                child: Text(primaryLabel),
              ),
            if (secondaryLabel != null) ...[
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  onSecondary?.call();
                },
                child: Text(secondaryLabel),
              ),
            ],
          ],
        ),
      ),
    ),
  );
}
