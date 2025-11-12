import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

typedef MyValidator = String? Function(String?);

class TextFormFieldWidget extends StatefulWidget {
  final TextInputType keyboardType;
  final String? hintText;
  bool obscureText;
  final bool isPassword;
  final TextEditingController controller;
  final MyValidator validator;
  final Widget? prefixIcon; // Changed to Widget to support SvgPicture or Icon

  TextFormFieldWidget({
    required this.controller,
    required this.validator,
    this.hintText,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.isPassword = false,
    super.key,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        overflow: TextOverflow.ellipsis,
      ),
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.grey,
          overflow: TextOverflow.ellipsis,
        ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  widget.obscureText ? Icons.visibility_off : Icons.visibility,
                  color: const Color(0xff454A4F),
                  size: 24,
                ),
                onPressed: () {
                  setState(() {
                    widget.obscureText = !widget.obscureText;
                  });
                },
              )
            : null,
        contentPadding: const EdgeInsets.all(15),
        enabledBorder: outlineInputBorder(
          color: const Color(0xffBABABA),
          radius: 10,
          width: 1,
        ),
        focusedBorder: outlineInputBorder(
          color: const Color(0xFF407CE2),
          radius: 10,
          width: 1,
        ),
        errorBorder: outlineInputBorder(
          color: Colors.red,
          radius: 10,
          width: 1,
        ),
        focusedErrorBorder: outlineInputBorder(
          color: Colors.red,
          radius: 10,
          width: 1,
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({
    required double radius,
    required Color color,
    required double width,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide: BorderSide(color: color, width: width),
    );
  }
}

Widget taps(String image, String label, VoidCallback ontap) {
  return InkWell(
    onTap: ontap,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 32,
<<<<<<< HEAD
          backgroundColor: Colors.blue,
          child: SvgPicture.asset("$image"),
        ),
        Gap(10),
        Text(label, style: TextStyle(color: Color(0xFF221F1F), fontSize: 14)),
=======
          child: SvgPicture.asset("$image"),
          backgroundColor: Colors.blue,
        ),
        Gap(10),
        Text(
          "$label",
          style: TextStyle(color: Color(0xFF221F1F), fontSize: 14),
        ),
>>>>>>> 2ff976a25248ea8be63421499049c7b967276633
      ],
    ),
  );
}

Widget healthartical(
  String image,
  String title,
  String meta,
  VoidCallback ontap,
) {
  return Column(children: [
      
    ],
  );
}
