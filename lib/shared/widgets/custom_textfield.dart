import 'package:flutter/material.dart';
import 'package:weather_app/core/constants/app_colors.dart';

class CustomTextfield<T> extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final bool isLoading;
  final Function(String)? onSubmitted;
  final Function(String)? onChanged;
  final List<T>? suggestions;
  final Function(T)? onSuggestionTap;

  const CustomTextfield({
    super.key,
    required this.controller,
    this.isLoading = false,
    this.hint,
    this.onSubmitted,
    this.onChanged,
    this.suggestions,
    this.onSuggestionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            onSubmitted: onSubmitted,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hint,
              border: InputBorder.none,
              suffixIcon: isLoading
                  ? Transform.scale(
                      scale: 0.5,
                      child: CircularProgressIndicator(),
                    )
                  : null,
              icon: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: const Icon(Icons.search, color: Color(0xFF9E9E9E)),
              ),
            ),
          ),
          if (suggestions != null && suggestions!.isNotEmpty)
            Container(
              color: AppColors.backgroundColor,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: suggestions!.length,
                itemBuilder: (context, index) {
                  final item = suggestions![index];
                  return ListTile(
                    title: Text(item.toString()),
                    onTap: () => onSuggestionTap?.call(item),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
