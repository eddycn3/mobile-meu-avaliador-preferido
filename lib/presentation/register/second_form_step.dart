// part of 'register_form.dart';

// class SecondFormStep extends StatelessWidget {
//   final TextEditingController nomeC, empresaC, siteC, telefoneC;
//   SecondFormStep({
//     Key key,
//     this.nomeC,
//     this.empresaC,
//     this.siteC,
//     this.telefoneC,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         TextFormField(
//           controller: nomeC,
//           validator: (value) {
//             if (value.isEmpty) {
//               return "entre com seu nome";
//             }
//             return null;
//           },
//           cursorColor: Colors.green,
//           decoration: InputDecoration(
//             hintText: "NOME COMPLETO",
//             hintStyle: TextStyle(color: Colors.grey),
//           ),
//         ),
//         TextFormField(
//           controller: empresaC,
//           cursorColor: Colors.green,
//           decoration: InputDecoration(
//             hintText: "EMPRESA",
//             hintStyle: TextStyle(color: Colors.grey),
//           ),
//         ),
//         TextFormField(
//           controller: siteC,
//           cursorColor: Colors.green,
//           decoration: InputDecoration(
//             hintText: "SITE",
//             hintStyle: TextStyle(color: Colors.grey),
//           ),
//         ),
//         TextFormField(
//           controller: telefoneC,
//           validator: (value) {
//             if (value.isEmpty) {
//               return "entre com o telefone";
//             }
//             return null;
//           },
//           keyboardType: TextInputType.phone,
//           cursorColor: Colors.green,
//           decoration: InputDecoration(
//             hintText: "TELEFONE",
//             hintStyle: TextStyle(color: Colors.grey),
//           ),
//         ),
//       ],
//     );
//   }
// }
