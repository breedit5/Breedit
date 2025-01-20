import 'package:breedit/features/view_model/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_picker/country_picker.dart';

import 'package:breedit/core/util/app_colors.dart';
import 'package:breedit/core/widgets/text_field.dart';
import 'package:provider/provider.dart';

class Editor extends StatefulWidget {
  const Editor({super.key});

  @override
  State<Editor> createState() => _EditorState();
}

class _EditorState extends State<Editor> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<AuthProvider>(context, listen: false);
    showCountryCodePicker() {
      return showCountryPicker(
        context: context,
        useSafeArea: true,
        showPhoneCode: true,
        favorite: ["IN"],
        countryListTheme: CountryListThemeData(
          backgroundColor: background,
          bottomSheetHeight: MediaQuery.of(context).size.height,
          borderRadius: BorderRadius.circular(0),
          flagSize: 20,
          textStyle: GoogleFonts.quicksand(fontWeight: FontWeight.bold),
          searchTextStyle: GoogleFonts.quicksand(fontWeight: FontWeight.bold),
          inputDecoration: InputDecoration(
            hintText: "Search countries...",
            hintStyle: GoogleFonts.quicksand(fontWeight: FontWeight.bold),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: green, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: grey),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        onSelect: (country) {
          prov.countryCodeController.text = "+${country.phoneCode}";
        },
      );
    }

    return Row(
      children: [
        // COUNTRY CODE
        Expanded(
          child: CTextField(
            onTap: () => showCountryCodePicker(),
            controller: prov.countryCodeController,
            readOnly: true,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(width: 5),

        // PHONE NUMBER
        Consumer<AuthProvider>(
          builder: (_, value, __) {
            return Expanded(
              flex: 3,
              child: CTextField(
                controller: value.phoneNumberController,
                onChanged: (_) {
                  setState(() {
                    value.isError = false;
                  });
                },
                hintText: "Phone Number",
                errorText: value.isError
                    ? "Phone Number must contains 10 digits"
                    : null,
              ),
            );
          },
        )
      ],
    );
  }
}
