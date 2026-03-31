import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:fruits_ecommerce/features/auth/presentation/views/widgets/custom_check_box.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;
  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isTermsAccepted = false;
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = () {};
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isCheck: isTermsAccepted,
          onChanged: (value) {
            setState(() {
              isTermsAccepted = value;
              widget.onChanged(value);
            });
          },
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: "من خلال إنشاء حساب، فإنك توافق على ",
                  style: TextStyle(
                    color: Color(0xff949D9E),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: "الشروط والأحكام الخاصة بنا",
                  style: const TextStyle(
                    color: Color(0xff2D9F5D),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  recognizer: _tapGestureRecognizer,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
