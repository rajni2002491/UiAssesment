import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

void main() {
  runApp(FreightApp());
}

class FreightApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freight Rates UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.inter().fontFamily,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: FreightScreen(),
    );
  }
}

class FreightScreen extends StatelessWidget {
  const FreightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xFF0139FF).withOpacity(0.1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Container(
                width: 800,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Search the best Freight Rates",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Container(
                      width: 90,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        color: Color(0xFF0139FF).withOpacity(0.1),
                        border: Border.all(
                          color: Color(0xFF0139FF),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "History",
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF0139FF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // White Container with Form
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Origin and Destination
                        Row(
                          children: [
                            Expanded(child: customField("Origin")),
                            SizedBox(width: 16),
                            Expanded(child: customField("Destination")),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Checkbox(
                                      value: false,
                                      onChanged: (_) {},
                                      activeColor: Color(0xFF0139FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "Include nearby origin ports",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Checkbox(
                                      value: false,
                                      onChanged: (_) {},
                                      activeColor: Color(0xFF0139FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "Include nearby destination ports",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(child: customField("Commodity")),
                            SizedBox(width: 16),
                            Expanded(
                                child:
                                    customField("Cut Off Date", isDate: true)),
                          ],
                        ),

                        SizedBox(height: 20),

                        Text("Shipment Type:",
                            style: TextStyle(color: Colors.black)),
                        Row(
                          children: [
                            customCheckbox("FCL", true),
                            SizedBox(width: 10),
                            customCheckbox("LCL", false),
                          ],
                        ),

                        SizedBox(height: 12),

                        Row(
                          children: [
                            Expanded(child: dropdownContainer()),
                            SizedBox(width: 16),
                            Expanded(child: customField("No of Boxes")),
                            SizedBox(width: 16),
                            Expanded(child: customField("Weight (Kg)")),
                          ],
                        ),

                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.info_outline,
                                size: 16, color: Colors.black54),
                            SizedBox(width: 4),
                            Flexible(
                              child: Text(
                                "To obtain accurate rate for spot rate with guaranteed space and booking, please ensure your container count and weight per container is accurate.",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 20),

                        Text("Container Internal Dimensions :",
                            style: TextStyle(color: Colors.black)),
                        SizedBox(height: 10),
                        Text(
                          "Length: 39.46 ft\nWidth: 7.70 ft\nHeight: 7.84 ft",
                          style: TextStyle(color: Colors.black),
                        ),

                        SizedBox(height: 24),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 90,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19),
                              color: Color(0xFF0139FF).withOpacity(0.1),
                              border: Border.all(
                                color: Color(0xFF0139FF),
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.search,
                                    color: Color(0xFF0139FF), size: 20),
                                SizedBox(width: 4),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF0139FF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customField(String label, {bool isDate = false}) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: (label == "Origin" || label == "Destination")
            ? Icon(Icons.location_on, color: Colors.black)
            : null,
        suffixIcon: isDate ? Icon(Icons.calendar_today_outlined) : null,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: kBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget customCheckbox(String label, bool selected) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: selected,
          onChanged: (_) {},
          activeColor: kPrimaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        Text(label),
      ],
    );
  }

  Widget dropdownContainer() {
    return DropdownButtonFormField<String>(
      value: "40' Standard",
      decoration: InputDecoration(
        labelText: "Container Size",
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: kBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      items: ["20' Standard", "40' Standard", "40' HC"]
          .map((e) => DropdownMenuItem(value: e, child: Text(e)))
          .toList(),
      onChanged: (val) {},
    );
  }
}
