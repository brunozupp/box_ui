import 'package:box_ui/src/shared/app_colors.dart';
import 'package:box_ui/src/shared/styles.dart';
import 'package:flutter/material.dart';

// IMPORTANTE: Sempre Prefixar o nome do componente com o nome do projeto/idenficador
// Exemplo: DealTextField, DealSelectField, DealAvatarCircle 
class BoxText extends StatelessWidget {

  final String text;
  final TextStyle style;

  const BoxText.headingOne(this.text, {Key? key}) 
    : style = heading1Style,
      super(key: key);

  const BoxText.headingTwo(this.text, {Key? key}) 
    : style = heading2Style,
      super(key: key);

  const BoxText.headingThree(this.text, {Key? key}) 
    : style = heading3Style,
      super(key: key);

  const BoxText.headline(this.text, {Key? key}) 
    : style = headlineStyle,
      super(key: key);

  const BoxText.subheading(this.text, {Key? key}) 
    : style = subheadingStyle,
      super(key: key);

  const BoxText.caption(this.text, {Key? key}) 
    : style = captionStyle,
      super(key: key);

  const BoxText.body(this.text, {
    Key? key,
    Color color = kcMediumGreyColor,
  }) : style = captionStyle,
       super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}