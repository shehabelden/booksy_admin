// import 'package:booksy/presentation/auth/cubit/cubit.dart';
// import 'package:flutter/material.dart';
// class DropDownSubUserTypeButton extends StatelessWidget {
//   final String? dropdownValue;
//   final List<String>? list;
//   final AuthCubit fun;
//   final double? width;
//   final String? value;
//   const DropDownSubUserTypeButton({
//     super.key,
//     required this.list,
//     required this.dropdownValue,
//     required this.fun,
//     required this.value,
//     required this.width,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 50,
//       width: width!,
//       decoration: BoxDecoration(
//         border: Border.all(width: .8),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: DropdownButton<String>(
//         isExpanded: true,
//         hint: Text(fun.userType),
//         // value: fun.userType,
//         padding: const EdgeInsets.only(left: 20),
//         underline: const SizedBox(
//           height: 0,
//           width: 0,
//         ),
//         icon: const Icon(Icons.arrow_drop_down),
//         elevation: 16,
//         style: const TextStyle(color: Colors.black),
//         onChanged: (String? value) {
//           fun.userTypeCubit(value);
//         },
//         items: list!.map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }