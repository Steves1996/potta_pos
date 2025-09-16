import 'package:potta_pos/src/shared/transalation/language/language.dart';
import 'package:potta_pos/src/shared/transalation/logic/bloc/language_cubit.dart';
import 'package:potta_pos/src/shared/transalation/logic/bloc/language_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageDropdown extends StatelessWidget {
  final bool showFlag;
  final bool showName;

  const LanguageDropdown({
    super.key,
    this.showFlag = true,
    this.showName = true,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        if (state is LanguageLoading) {
          return const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          );
        }

        if (state is LanguageError) {
          return const Icon(Icons.error, color: Colors.red);
        }

        if (state is LanguageLoaded) {
          final cubit = context.read<LanguageCubit>();
          final supportedLanguages = cubit.getSupportedLanguages();

          return DropdownButton<String>(
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
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (showFlag) ...[
                      Text(language.flag, style: const TextStyle(fontSize: 20)),
                      const SizedBox(width: 8),
                    ],
                    if (showName)
                      Text(
                        language.name,
                        style: const TextStyle(fontSize: 16),
                      ),
                  ],
                ),
              );
            }).toList(),
            underline: Container(),
            icon: const Icon(Icons.arrow_drop_down),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}