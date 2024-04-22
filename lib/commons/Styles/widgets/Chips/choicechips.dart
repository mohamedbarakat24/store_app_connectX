import 'package:flutter/material.dart';
import 'package:store_app_connectx/commons/Styles/widgets/Containers/CirculerContainer.dart';
import 'package:store_app_connectx/utils/constants/colors.dart';
import 'package:store_app_connectx/utils/helpers/helper_functions.dart';

class ChoiceChipforColors extends StatelessWidget {
  const ChoiceChipforColors({
    super.key,
    required this.text,
    required this.selected,
    this.onselected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onselected;
  @override
  Widget build(BuildContext context) {
    final iscolor = MyHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: iscolor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onselected,
        labelStyle: TextStyle(color: selected ? MyColors.white : null),
        avatar: iscolor
            ? CirculerContainer(
                width: 50,
                height: 50,
                backgroundcolor: MyHelperFunctions.getColor(text)!,
              )
            : null,
        shape: iscolor ? const CircleBorder() : null,
        // ignore: prefer_null_aware_operators
        backgroundColor: iscolor ? MyHelperFunctions.getColor(text)! : null,
        labelPadding: iscolor ? const EdgeInsets.all(0) : null,
        padding: iscolor ? const EdgeInsets.all(0) : null,
        //  selectedColor:  MyHelperFunctions.getColor(text) !=null ? MyHelperFunctions.getColor(text) :null,
      ),
    );
  }
}
