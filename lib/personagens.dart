import 'package:flutter/material.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Ninho App',
			theme: ThemeData(
				primarySwatch: Colors.green,
			),
			home: const HomePage(),
		);
	}
}

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
				child: Container(
					color: const Color(0xFF89B29E),
					child: Column(
						children: <Widget>[
							const SizedBox(height: 50),
							Container(
								width: double.infinity,
								padding: const EdgeInsets.symmetric(vertical: 15.0),
								decoration: const BoxDecoration(
									color: Color(0xFFE0FFFC),
								),
								child: const Text(
									'Personagens',
									textAlign: TextAlign.center,
									style: TextStyle(
										color: Colors.black,
										fontSize: 20,
										fontFamily: 'Itim',
										fontWeight: FontWeight.bold,
									),
								),
							),
							Expanded(
								child: ListView.builder(
									padding: EdgeInsets.zero,
									itemCount: 6,
									itemBuilder: (context, index) {
										return Container(
											height: 60,
											margin: const EdgeInsets.symmetric(
												horizontal: 0.0, vertical: 0.0),
											decoration: const BoxDecoration(
												border: Border(
													bottom:
														BorderSide(color: Color(0xFF2E4238), width: 1.0),
												),
											),
											child: Center(
												child: Text(
													'Personagem ${index + 1}',
													style: TextStyle(color: Colors.black),
												),
											),
										);
									},
								),
							),
							Padding(
								padding: const EdgeInsets.all(16.0),
								child: SizedBox(
									width: double.infinity,
									child: ElevatedButton(
										onPressed: () {
											Navigator.pop(context);
										},
										style: ElevatedButton.styleFrom(
											backgroundColor: const Color(0xFFE0FFFC),
											shape: RoundedRectangleBorder(
												borderRadius: BorderRadius.circular(15.0),
											),
											padding: const EdgeInsets.symmetric(vertical: 15.0),
										),
										child: const Text(
											'Voltar',
											style: TextStyle(
												fontSize: 18,
												color: Color(0xFF2E4238),
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
										text: const TextSpan(
											style: TextStyle(
												fontSize: 16,
												fontFamily: 'Itim',
												color: Colors.black,
												height: 1.5,
											),
											children: <TextSpan>[],
										),
									),
									const SizedBox(height: 30),
									Center(
										child: SizedBox(
											width: 180,
											child: ElevatedButton(
												onPressed: () {
													print('Botão Começar pressionado!');
													Navigator.push(
														context,
														MaterialPageRoute(
																builder: (context) => const Personagens()),
													);
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

class Personagens extends StatelessWidget {
	const Personagens({super.key});

	@override
	Widget build(BuildContext context) {
		final List<String> characterImages = [
			'assets/images/personagem1.png',
			'assets/images/personagem2.png',
			'assets/images/personagem3.png',
			'assets/images/personagem4.png',
			'assets/images/personagem5.png',
			'assets/images/personagem6.png',
		];

		return Scaffold(
			appBar: AppBar(
				backgroundColor: const Color(0xFF2E4238),
				elevation: 0,
				leading: IconButton(
					icon: const Icon(Icons.arrow_back, color: Colors.white),
					onPressed: () {
						Navigator.pop(context);
					},
				),
				title: const Center(
					child: Text(
						'Personagens',
						style: TextStyle(
							fontFamily: 'BrittanySignature',
							fontSize: 30,
							fontWeight: FontWeight.normal,
							color: Colors.white,
						),
					),
				),
				actions: const [
					SizedBox(width: 50),
				],
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
						padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
						child: Container(
							padding: const EdgeInsets.all(20.0),
							decoration: BoxDecoration(
								color: const Color(0xFFE0FFFF).withOpacity(0.9),
								borderRadius: BorderRadius.circular(10.0),
							),
							child: Column(
								crossAxisAlignment: CrossAxisAlignment.stretch,
								children: [
									Container(
										width: double.infinity,
										padding: const EdgeInsets.symmetric(vertical: 15.0),
										decoration: const BoxDecoration(
											color: Color(0xFFE0FFFC),
										),
										child: const Text(
											'Selecione um Personagem',
											textAlign: TextAlign.center,
											style: TextStyle(
												color: Colors.black,
												fontSize: 20,
												fontFamily: 'Itim',
												fontWeight: FontWeight.bold,
											),
										),
									),
									const SizedBox(height: 10),
									for (int i = 0; i < characterImages.length; i++)
										Column(
											children: [
												Container(
													height: 100,
                          width: 300,
													decoration: BoxDecoration(
														color: Colors.white.withOpacity(0.8),
														border: Border.all(
																color: const Color(0xFF2E4238), width: 1.0),
													),
													child: Image.asset(
														characterImages[i],
														fit: BoxFit.cover,
													),
												),
												const SizedBox(height: 10),
											],
										),
									Padding(
										padding: const EdgeInsets.only(top: 16.0),
										child: SizedBox(
											width: double.infinity,
											child: ElevatedButton(
												onPressed: () {
													Navigator.pop(context);
												},
												style: ElevatedButton.styleFrom(
													backgroundColor: const Color(0xFF89B29E),
													shape: RoundedRectangleBorder(
														borderRadius: BorderRadius.circular(15.0),
													),
													padding: const EdgeInsets.symmetric(vertical: 15.0),
												),
												child: const Text(
													'Voltar',
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