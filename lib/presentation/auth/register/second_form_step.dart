part of 'register_form.dart';

class SecondFormStep extends StatelessWidget {
  const SecondFormStep({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        final _registerBloc = BlocProvider.of<RegisterBloc>(context);
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextFormField(
              onChanged: (value) {
                //_registerBloc.add(RegisterEvent.nomeUsuarioChanged(value));
              },
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText: "NOME COMPLETO",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            TextFormField(
              onChanged: (value) {
                //_registerBloc.add(RegisterEvent.empresaChanged(value));
              },
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText: "EMPRESA",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            TextFormField(
              onChanged: (value) {
                //_registerBloc.add(RegisterEvent.siteChanged(value));
              },
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText: "SITE",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            TextFormField(
              onChanged: (value) {
                //_registerBloc.add(RegisterEvent.telefoneChanged(value));
              },
              keyboardType: TextInputType.phone,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText: "TELEFONE",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        );
      },
    );
  }
}
