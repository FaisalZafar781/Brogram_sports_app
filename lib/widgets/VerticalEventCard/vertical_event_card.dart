import 'package:brogam/services/constants/constants.dart';
import 'package:brogam/widgets/CustomRoundedContainer/custom_rounded_container.dart';
import 'package:flutter/material.dart';

class VerticalEventCard extends StatelessWidget {
  const VerticalEventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: CustomRoundedContainer(
              // Same content
              width: screenWidth, //card width
              backgroundColor: AppColors.white,
              radius: 12,
              borderColor: AppColors.lighyGreyColor1,
              showBorder: true,
              //image and texts
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      width: screenWidth * 0.32,
                      height: screenHeight * 0.12,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/card2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomRoundedContainer(
                            height: screenHeight * 0.022,
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 5),
                            backgroundColor: AppColors.fill.withOpacity(1),
                            radius: 25,
                            child: Text(
                              'Swimming',
                              style: TextStyle(
                                fontFamily: AppFontsFamily.poppins,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color:
                                    AppColors.secondaryColor.withOpacity(0.8),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.005),
                          Text(
                            'Swimming Competition',
                            style: TextStyle(
                                fontFamily: AppFontsFamily.poppins,
                                fontSize: AppFontSizes.body,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                                letterSpacing: 0.5),
                          ),
                          SizedBox(height: screenHeight * 0.005),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColors.secondaryColor,
                                size: AppFontSizes.body,
                              ),
                              SizedBox(width: screenWidth * 0.010),
                              Text(
                                'Florida, USA',
                                style: TextStyle(
                                  fontFamily: AppFontsFamily.poppins,
                                  fontSize: AppFontSizes.small,
                                  color: AppColors.IconColors,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.030),
                              Icon(
                                Icons.calendar_month,
                                color: AppColors.secondaryColor,
                                size: AppFontSizes.small,
                              ),
                              SizedBox(width: screenWidth * 0.010),
                              Text(
                                '25 Dec, 24',
                                style: TextStyle(
                                  fontFamily: AppFontsFamily.poppins,
                                  fontSize: AppFontSizes.small,
                                  color: AppColors.IconColors,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '\$20',
                                  style: TextStyle(
                                      fontFamily: AppFontsFamily.poppins,
                                      fontSize: AppFontSizes.body,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.secondaryColor),
                                ),
                                TextSpan(
                                  text: '/person',
                                  style: TextStyle(
                                    fontFamily: AppFontsFamily.poppins,
                                    fontSize: AppFontSizes.body,
                                    color: AppColors.secondaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
