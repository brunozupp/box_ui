import 'package:box_ui/src/shared/styles.dart';
import 'package:flutter/material.dart';

import 'package:box_ui/box_ui.dart';
import 'package:box_ui/src/shared/app_colors.dart';

class BoxButton extends StatelessWidget {

  final String title;
  final bool disabled;
  final bool busy;
  final Widget? leading;
  final bool outline;

  const BoxButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.leading,
    this.outline = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 350,
        ),
        height: 48,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: !outline 
          ? BoxDecoration(
            color: !disabled ? kcPrimaryColor : kcMediumGreyColor,
            borderRadius: BorderRadius.circular(8),
          )
          : BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: kcPrimaryColor,
              width: 1,
            ),
          ),
        child: !busy 
          ? Row(
            mainAxisSize: MainAxisSize.min,
            children: [

              if(leading != null) leading!,

              if(leading != null) const SizedBox(width: 5),

              Text(
                title,
                style: bodyStyle.copyWith(
                  fontWeight: !outline
                    ? FontWeight.bold
                    : FontWeight.w400,
                  color: !outline
                    ? Colors.white
                    : kcPrimaryColor,
                ),
              )
            ],
          )
          : const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white),
            strokeWidth: 8,
          ),
      ),
    );
  }
}
