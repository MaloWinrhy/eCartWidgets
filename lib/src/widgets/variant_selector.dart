import 'package:flutter/material.dart';

class VariantSelector extends StatefulWidget {
  final String variantName;
  final List<String> options;

  VariantSelector({
    required this.variantName,
    required this.options,
  });

  @override
  _VariantSelectorState createState() => _VariantSelectorState();
}

class _VariantSelectorState extends State<VariantSelector> {
  int? _selectedOptionIndex;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Color selectedColor =
        theme.primaryColor; // la couleur quand l'option est sélectionnée
    Color nonSelectedColor = theme.canvasColor; // la couleur de fond par défaut
    Color selectedTextColor = theme.primaryTextTheme.button!.color ??
        Colors.white; // la couleur du texte quand l'option est sélectionnée
    Color nonSelectedTextColor = theme.textTheme.button!.color ??
        theme.primaryColor; // la couleur du texte par défaut

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.variantName, style: theme.textTheme.subtitle1),
        SizedBox(height: 8.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: widget.options.asMap().entries.map((entry) {
              int idx = entry.key;
              String option = entry.value;
              bool isSelected = _selectedOptionIndex == idx;

              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ChoiceChip(
                  label: Text(
                    option,
                    style: TextStyle(
                      color:
                          isSelected ? selectedTextColor : nonSelectedTextColor,
                    ),
                  ),
                  selected: isSelected,
                  onSelected: (bool selected) {
                    setState(() {
                      _selectedOptionIndex = selected ? idx : null;
                    });
                  },
                  backgroundColor: nonSelectedColor,
                  selectedColor: selectedColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: isSelected ? BorderSide.none : BorderSide.none,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
