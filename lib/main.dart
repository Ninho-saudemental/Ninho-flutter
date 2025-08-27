import 'package:flutter/material.dart';
import 'package:ninho_em_flutter/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ninho Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // Adicione a fonte 'Itim' aqui para ser global se ainda não o fez no pubspec.yaml
        fontFamily: 'Itim',
      ),
      routes: {
        '/': (context) => const LoginPage(), // Rota inicial
        '/home': (context) => const HomePage(), // Rota para a HomePage
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false, // Opcional: remove a faixa de "DEBUG"
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  @override
  void dispose() {
    _userController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E4238),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              color: const Color(0xFFE0FFFC),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                    'Ninho',
                    style: TextStyle(
                      fontFamily: 'BrittanySignature',
                      fontSize: 90,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            // Login form section
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  _buildTextField(
                    controller: _userController,
                    hintText: 'Telefone, nome de usuário ou email',
                    fontFamily: 'Itim',
                    fontSize: 16.0,
                    fontColor: Colors.white,
                    hintColor: const Color(0xFFCDCDCD),
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    controller: _senhaController,
                    hintText: 'Senha',
                    obscureText: true,
                    fontFamily: 'Itim',
                    fontSize: 16.0,
                    fontColor: Colors.white,
                    hintColor: const Color(0xFFCDCDCD),
                  ),
                  const SizedBox(height: 50),
                  SizedBox(
                    width: 180,
                    child: ElevatedButton(
                      onPressed: () {
                        print('User: ${_userController.text}');
                        print('Senha: ${_senhaController.text}');

                        // AÇÃO DO BOTÃO: Navegar para a rota nomeada '/home'
                        Navigator.pushNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF89B29E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                      ),
                      child: const Text(
                        'Entrar',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: 'Itim',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      print('Esqueci a senha tocado');
                    },
                    child: const Text(
                      'Esqueci a senha',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Itim',
                      ),
                    ),
                  ),
                  const SizedBox(height: 90),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF7C7979),
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                          color: const Color(0xFF1E1E1E), width: 5.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Caso não tiver conta, ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Itim',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            print('Cadastre-se tocado');
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            'Cadastre-se',
                            style: TextStyle(
                              color: Color(0xFF89B29E),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Itim',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String hintText,
    bool obscureText = false,
    String? fontFamily,
    double? fontSize,
    Color? fontColor,
    Color? hintColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF7C7979),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: const Color(0xFF1E1E1E), width: 5.0),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(
          color: fontColor,
          fontFamily: fontFamily,
          fontSize: fontSize,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintColor,
            fontFamily: fontFamily,
            fontSize: fontSize,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
