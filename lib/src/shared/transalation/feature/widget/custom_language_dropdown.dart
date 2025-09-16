import 'package:potta_pos/src/shared/extensions/context_extensions.dart';
import 'package:potta_pos/src/shared/transalation/language/language.dart';
import 'package:potta_pos/src/shared/transalation/logic/bloc/language_cubit.dart';
import 'package:potta_pos/src/shared/transalation/logic/bloc/language_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomLanguageDropdown extends StatelessWidget {
  const CustomLanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LanguageCubit, LanguageState>(
      listener: (context, state) {
        if (state is LanguageError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is LanguageLoading) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          );
        }

        if (state is LanguageLoaded) {
          final cubit = context.read<LanguageCubit>();
          final supportedLanguages = cubit.getSupportedLanguages();

          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: state.currentLocale.languageCode,
                onChanged: (String? newLanguageCode) {
                  if (newLanguageCode != null) {
                    cubit.changeLanguage(newLanguageCode);
                  }
                },
                items: supportedLanguages.map((Language language) {
                  return DropdownMenuItem<String>(
                    value: language.code,
                    child: Row(
                      children: [
                        Text(language.flag, style: const TextStyle(fontSize: 18)),
                        const SizedBox(width: 8),
                        Text(language.name,style: context.textTheme.bodyMedium?.copyWith(color: context.colorScheme.secondary),),
                      ],
                    ),
                  );
                }).toList(),
                icon: const Icon(Icons.keyboard_arrow_down),
              ),
            ),
          );
        }

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.error, color: Colors.red),
        );
      },
    );
  }
}