import 'package:firebase_auth/firebase_auth.dart';
import 'package:loja_virtual/models/user.dart';
import 'package:loja_virtual/models/user_manager.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual/helpers/validators.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child:Consumer<UserManager>(
              builder: (_,userManager,__) {
              return ListView(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              children: <Widget>[
                TextFormField(
                  controller: emailController,
                  enabled: !userManager.loading,
                  decoration: const InputDecoration(hintText: 'E-mail'),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  validator: (email) {
                    if (!emailValid(email)) return 'E-mail inválido';
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: passController,
                  enabled: !userManager.loading,
                  decoration: const InputDecoration(hintText: 'Senha'),
                  autocorrect: false,
                  obscureText: true,
                  validator: (pass) {
                    if (pass.isEmpty || pass.length < 6)
                      return 'Senha inválida';
                    return null;
                  },
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    child: Text('Esqueci minha senha'),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                /*  Container( // KEVIN: inserir container quando estiver na duvida onde encontrar este widget
                  color: Colors.amber,
                  child: const SizedBox(
                    height: 16,
                    child: Icon(Icons.ac_unit_outlined),
                  ),
                ), */
                SizedBox(
                  height: 44,
                  child: RaisedButton(
                    onPressed: userManager.loading ? null : () {
                      if (formKey.currentState.validate()) {                        context.read<UserManager>().signIn(
                              user: User(
                                email: emailController.text,
                                password: passController.text,
                              ),
                              onFail: (e) {
                                scaffoldKey.currentState.showSnackBar(SnackBar(
                                  content: Text('Falha ao entrar: $e'),
                                  backgroundColor: Colors.red,
                                )
                                );
                              },
                              onSuccess: () {
                                // TODO : FECHAR TELA DE LOGIN
                                /*     print ('Sucesso'); */
                              },
                            );
                        // foi apagado na aula o codigo abaixo
                        /* FirebaseAuth.instance.signInWithEmailAndPassword(
                email: null, password: null); */
                      }
                    },
                    color: Theme.of(context).primaryColor,
                    disabledColor: Theme.of(context).primaryColor
                    .withAlpha(100),
                    textColor: Colors.white,
                    child: userManager.loading ?
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ) :
                     const Text(
                      'Entrar',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
          );
            },),
        ),
      ),
    )
    );
  }
}
