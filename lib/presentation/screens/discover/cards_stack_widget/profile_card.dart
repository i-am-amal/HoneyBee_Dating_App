// import 'package:flutter/material.dart';
// import 'package:honeybee/presentation/widgets/fonts/fonts.dart';
// import 'profile_model.dart';

// class ProfileCard extends StatelessWidget {
//   const ProfileCard({super.key, required this.profile});

//   final Profile profile;

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Container(
//       height: height * 0.65,
//       width: width * 0.8,
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Stack(
//         children: [
//           Positioned.fill(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Image.network(
//                 profile.profileImage,
//                 fit: BoxFit.cover,
//                 errorBuilder: (context, error, stackTrace) {
//                   return Image.asset(
//                     'assets/images/profile.jpg',
//                     fit: BoxFit.cover,
//                   );
//                 },
//                 loadingBuilder: (context, child, loadingProgress) {
//                   if (loadingProgress == null) {
//                     return child;
//                   }
//                   return const CircularProgressIndicator();
//                 },
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             child: Container(
//               height: height * 0.09,
//               width: width * 0.99,
//               decoration: ShapeDecoration(
//                 color: Colors.white,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 shadows: <BoxShadow>[
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.05),
//                     blurRadius: 8,
//                   ),
//                 ],
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       profile.name,
//                       style: const TextStyle(
//                         fontFamily: CustomFont.headTextFont,
//                         fontWeight: FontWeight.w800,
//                         fontSize: 21,
//                       ),
//                     ),
//                     Text(
//                       profile.age,
//                       style: const TextStyle(
//                         fontFamily: CustomFont.headTextFont,
//                         fontWeight: FontWeight.w400,
//                         fontSize: 14,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:honeybee/domain/models/discover_response_model/discover_response_model.dart';
import 'package:honeybee/presentation/widgets/fonts/fonts.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.profile});

  final   DiscoverResponseModel profile;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.65,
      width: width * 0.8,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                profile.profilePic!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/images/profile.jpg',
                    fit: BoxFit.cover,
                  );
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return const Center(child:  CircularProgressIndicator());
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * 0.09,
              width: width * 0.99,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                shadows: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      profile.fullName!,
                      style: const TextStyle(
                        fontFamily: CustomFont.headTextFont,
                        fontWeight: FontWeight.w800,
                        fontSize: 21,
                      ),
                    ),
                    Text(
                      profile.age.toString(),
                      style: const TextStyle(
                        fontFamily: CustomFont.headTextFont,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
