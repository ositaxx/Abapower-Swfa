import 'package:abapower/view/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MisScreen extends StatelessWidget {
  const MisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xffF7C314),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, right: 40.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/arrow.png",
                      width: 100,
                    ),
                    Text(
                      "Management Information System",
                      style: GoogleFonts.leagueSpartan(fontSize: 18.0),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 40.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.my_location_sharp,
                    color: Color(0xff0B7CC1),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text("Lat: 5.55576, Lng: 8.99009"),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black)),
                child: TextField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(20.0),
                    border: InputBorder.none,
                    hintText: "Please enter account number or meter number",
                  ),
                  style: GoogleFonts.leagueSpartan(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: TextButton(
                        //Routes you to the login screen
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Homescreen();
                          }));
                        },
                        child: Text(
                          'Search',
                          style: GoogleFonts.leagueSpartan(
                              fontSize: 24, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Container(
              width: 360,
              height: 550,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Customer Details",
                      style: GoogleFonts.leagueSpartan(fontSize: 24),
                    ),
                  ),
                  Text(
                    "Below are the customer details associated with this account",
                    style: GoogleFonts.leagueSpartan(
                        fontSize: 12, color: const Color(0xff9A9A9A)),
                  ),

                  //We are to insert customtextfield
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "Customer Name:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("John Doe",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    //you are to create a class for all the text
                    //Create a custom style for all the text
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 25.0,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Customer Account Number:",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text("750872887",
                              style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Meter Number:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("00006777565766",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Account Type:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("Prepaid",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Band:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("E",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Connection Status:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Address:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("Osisioma Road Ngwa Aba, Abia State",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Last Payment Date:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Last Amount Paid:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Last Billed Date:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Last Amount Billed:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Arrears:",
                          style: GoogleFonts.leagueSpartan(fontSize: 15.0),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text("",
                            style: GoogleFonts.leagueSpartan(fontSize: 15.0))
                      ],
                    ),
                  ),
                   Text("Sub Account", style: GoogleFonts.leagueSpartan(fontSize: 20.0, fontWeight: FontWeight.bold),),
                   Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Table(
                      border: TableBorder.all(color: Colors.white70),
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children:  [
                        TableRow(decoration: const BoxDecoration(color: Colors.blue),
                        children: [
                          TableCell(child: Padding(padding: const EdgeInsets.all(8.0),
                          child: Text("Arrear Description", style: GoogleFonts.leagueSpartan(fontSize: 15, color: Colors.white),),
                          )),
                          TableCell(child: Padding(padding: EdgeInsets.all(8.0),
                            child: Text("Arrear Booked", style: GoogleFonts.leagueSpartan(fontSize: 15, color: Colors.white),),
                          )),
                        TableCell(child: Padding(padding: EdgeInsets.all(8.0),
                            child: Text("Arrear Balance", style: GoogleFonts.leagueSpartan(fontSize: 15, color: Colors.white),),
                          )),
                          TableCell(child: Padding(padding: EdgeInsets.all(8.0),
                            child: Text("Rate", style: GoogleFonts.leagueSpartan(fontSize: 15, color: Colors.white),),
                          )),

                        ]),
                      ],
                    )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
