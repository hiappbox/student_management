import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Icon(Icons.sort_rounded,size: 24,color: Colors.black54,),
        ),
        actions: <Widget>[
          Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                child: Text("কোর্স সমূহ",style: GoogleFonts.hindSiliguri(
                  fontSize: 14.sp
                )),
              )),
          SizedBox(width: 10.w,),
        ],
      ),
      body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                HomeCard(image: "assets/images/logoB.svg", size: 60,),
                HomeCard(image: "assets/images/blackLogo.svg", size: 40,),
                HomeCard(image: "assets/images/logoB.svg", size: 60,),
                HomeCard(image: "assets/images/blackLogo.svg", size: 40,),
              ],
            ),
          )
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String image;
  final double size;
  // final Callback onTap;
  const HomeCard({
    super.key, required this.image, required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      width: double.infinity,
      child: Card(
        elevation: 0,
        color: Colors.grey.shade100,
        child: Center(child: SvgPicture.asset(image,height: size.h,)),
      ),
    );
  }
}
