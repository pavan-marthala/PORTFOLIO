import 'package:flutter/material.dart';
import 'package:portfolio_pavan/core/features/contact/presentation/widgets/contact_card.dart';
import 'package:portfolio_pavan/core/features/contact/presentation/widgets/contact_info.dart';
import 'package:portfolio_pavan/core/utils/sized_context.dart';

import '../../../../theme/dimens.dart';

class ContactContent extends StatelessWidget {
  const ContactContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = context.widthPx < 600;
    return isMobile
        ? Column(
            spacing: Dimens.largePadding,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ContactCard(), ContactInfo()],
          )
        : Row(
            spacing: Dimens.largePadding,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Column(children: [ContactCard()])),
              Expanded(child: ContactInfo()),
            ],
          );
  }
}
