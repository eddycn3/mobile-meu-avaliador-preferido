// part of 'register_form.dart';

// class FirstFormStep extends StatelessWidget {
//   final TextEditingController userC, passC;
//   FirstFormStep({
//     Key key,
//     this.userC,
//     this.passC,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizedBox(height: 20),
//         TextFormField(
//           controller: userC,
//           validator: (value) {
//             if (value.isEmpty) {
//               return "entre com um e-mail";
//             }
//             if (!RegexUtils.isEmail(value.trim())) {
//               return "entre com um e-mail válido";
//             }
//             return null;
//           },
//           keyboardType: TextInputType.emailAddress,
//           cursorColor: Colors.green,
//           decoration: InputDecoration(
//             hintText: "E-MAIL",
//             hintStyle: TextStyle(color: Colors.grey),
//           ),
//         ),
//         SizedBox(height: 20),
//         TextFormField(
//           controller: passC,
//           validator: (value) {
//             if (value.isEmpty) {
//               return "entre com uma senha";
//             }
//             return null;
//           },
//           obscureText: true,
//           cursorColor: Colors.green,
//           decoration: InputDecoration(
//             hintText: "SENHA",
//             hintStyle: TextStyle(color: Colors.grey),
//           ),
//         ),
//       ],
//     );
//   }
// }
