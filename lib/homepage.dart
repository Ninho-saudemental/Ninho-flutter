import 'package:flutter/material.dart';
import 'package:ninho_em_flutter/personagens.dart'; // Make sure this path is correct for your Personagens widget

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E4238),
        elevation: 0,
        leading: Builder(
          builder: (BuildContext innerContext) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(innerContext).openDrawer();
              },
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text(
                'Ninho',
                style: TextStyle(
                  fontFamily: 'BrittanySignature',
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF2E4238),
              ),
              child: Text(
                'Opções do Ninho',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Itim',
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Início'),
              onTap: () {
                // If you are already on HomePage, just close the drawer.
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                  'Personagens'), // Assuming you want this to lead to Personagens.dart
              onTap: () {
                Navigator.pop(context); // Close the drawer first
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Personagens()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () {
                Navigator.pop(context); // Close the drawer first
                // You would typically push a new SettingsPage here
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SettingsPage()),
                // );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Sair'),
              onTap: () {
                Navigator.pop(context); // Close the drawer first
                // Implement your logout logic here, e.g., navigate to login screen
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(
                left: 10.0, top: 5.0, bottom: 5.0, right: 10.0),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: const Color(0xFFE0FFFC).withOpacity(0.9),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Itim',
                        color: Colors.black,
                        height: 1.5,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text:
                              'O Ninho é um espaço seguro onde você pode encontrar apoio emocional, mental e físico através de ',
                        ),
                        TextSpan(
                          text: 'companheiros virtuais inteligentes',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        const TextSpan(
                          text:
                              '. Nossos personagens, guiados por IA, estão aqui para ouvir, conversar e ajudar você a refletir — como um diálogo com sua própria mente, mas com um toque de ',
                        ),
                        TextSpan(
                          text: 'magia digital',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        const TextSpan(
                          text: '.\n\n',
                        ),
                        TextSpan(
                          text: '✨ Como funciona?\n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Personagens únicos',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        const TextSpan(
                          text:
                              ': Converse com avatares criados para oferecer ',
                        ),
                        TextSpan(
                          text: 'empatia, insights e até desafios saudáveis',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        const TextSpan(
                          text: '.\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Suporte 24/7',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        const TextSpan(
                          text: ': Esteja onde estiver, ',
                        ),
                        TextSpan(
                          text: 'seu companheiro virtual estará disponível',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        const TextSpan(
                          text: '.\n',
                        ),
                        TextSpan(
                          text: '• ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: 'Privacidade garantida',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        const TextSpan(
                          text: ': Todas as interações são ',
                        ),
                        TextSpan(
                          text: 'seguras e não julgadoras',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        const TextSpan(
                          text: '. Queremos que você se sinta ',
                        ),
                        TextSpan(
                          text:
                              'acolhido(a), entendido(a) e um pouco mais leve',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        const TextSpan(
                          text: ' a cada conversa.',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: SizedBox(
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Botão Começar pressionado!');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF89B29E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                        ),
                        child: const Text(
                          'Começar',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'Itim',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
