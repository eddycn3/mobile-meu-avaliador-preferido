part of 'register_form.dart';

class FirstFormStep extends StatelessWidget {
  const FirstFormStep({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 20),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          cursorColor: Colors.green,
          decoration: InputDecoration(
            hintText: "E-MAIL",
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 20),
        TextFormField(
          obscureText: true,
          cursorColor: Colors.green,
          decoration: InputDecoration(
            hintText: "SENHA",
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
