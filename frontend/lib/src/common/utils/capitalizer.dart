// extension Extension on String {
//   String capitalize() {
//     var output = '';
//     try {
//       output = split(' ')
//           .map((word) => '${word[0].toUpperCase()}${word.substring(1)}')
//           .join(' ');
//     } on Error {
//       return this;
//     }
//     return output;
//   }
// }

extension Capitalizer on String {
  String capitalize() => this;
      //(split(' ').map((e) => e[0].toUpperCase() + e.substring(1))).join(' ');
}
