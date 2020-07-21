part of 'register_form.dart';

class FirstFormStep extends StatelessWidget {
  const FirstFormStep({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        final _registerBloc = BlocProvider.of<RegisterBloc>(context);
        return Column(
          children: <Widget>[
            const SizedBox(height: 20),
            TextFormField(
              onChanged: (e) {
                _registerBloc.add(RegisterEvent.emailChanged(e));
              },
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText: "E-MAIL",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              onChanged: (s) {
                _registerBloc.add(RegisterEvent.passwordChanged(s));
              },
              obscureText: true,
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText: "SENHA",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        );
      },
    );
  }
}
