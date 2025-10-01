import 'package:flutter/material.dart';

import '../../../core/theming/styles.dart';

class CustomImageDoctorAndText extends StatelessWidget {
  const CustomImageDoctorAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Image(
          image: AssetImage("assets/images/Onbording_background_image.png"),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: const Image(
            image: AssetImage("assets/images/image_doctor_onbording.png"),
          ),
        ),
        Positioned(
          bottom: 30,
          child: Text(
            "Best Doctor\n Appointment App",
            style: textStyle32.copyWith(height: 1.4),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
