import 'package:flutter/material.dart';
import 'package:potta_pos/src/features/home/logic/category.dart';


class CategoryFilter extends StatefulWidget {
  final Function(List<Category>) onSelectionChanged;

  const CategoryFilter({
    super.key,
    required this.onSelectionChanged,
  });

  @override
  _CategoryFilterState createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final category = categories[index];
          return FilterChip(
            label: Text(category.name),
            selected: category.isSelected,
            onSelected: (selected) {
              setState(() {
                category.isSelected = selected;
                widget.onSelectionChanged(categories);
              });
            },
            selectedColor: Theme.of(context).primaryColorLight,
            checkmarkColor: Theme.of(context).primaryColor,
            labelStyle: TextStyle(
              color: category.isSelected
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).textTheme.bodyLarge?.color,
            ),
            backgroundColor: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: category.isSelected
                    ? Theme.of(context).primaryColor
                    : Colors.grey[400]!,
              ),
            ),
          );
        },
      ),
    );
  }
}
