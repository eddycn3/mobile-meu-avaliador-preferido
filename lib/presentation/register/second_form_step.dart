part of 'register_form.dart';

class SecondFormStep extends StatelessWidget {
  const SecondFormStep({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        TextFormField(
          cursorColor: Colors.green,
          decoration: InputDecoration(
            hintText: "NOME COMPLETO",
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
        TextFormField(
          cursorColor: Colors.green,
          decoration: InputDecoration(
            hintText: "EMPRESA",
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
        TextFormField(
          cursorColor: Colors.green,
          decoration: InputDecoration(
            hintText: "SITE",
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
        TextFormField(
          keyboardType: TextInputType.phone,
          cursorColor: Colors.green,
          decoration: InputDecoration(
            hintText: "TELEFONE",
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
