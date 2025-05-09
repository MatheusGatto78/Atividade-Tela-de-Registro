import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _aceitaTermos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF9F7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAF9F7),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Transform.translate(
                  offset: const Offset(0, -8),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.yellow[700],
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                Text(
                  "Inscreva-se",
                  style: GoogleFonts.roboto(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF454136),
                  ),
                ),
              ],
            ),
            Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 37,
                    color: Color(0xFF454136),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Transform.translate(
          offset: const Offset(0, -25),
          child: Container(
            width: 350,
            height: 750,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _inputLabel('Nome'),
                    _inputField(),
                    const SizedBox(height: 16),
                    _inputLabel('Email'),
                    _inputField(),
                    const SizedBox(height: 16),
                    _inputLabel('Senha'),
                    _inputField(),
                    const SizedBox(height: 24),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _inputLabel('CEP'),
                              _inputField(),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _inputLabel('Número'),
                              _inputField(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _inputLabel('Rua'),
                    _inputField(),
                    const SizedBox(height: 16),
                    _inputLabel('Cidade'),
                    _inputField(),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Theme(
                          data: Theme.of(context).copyWith(
                            unselectedWidgetColor: const Color(0xFFD1CDC5),
                          ),
                          child: Checkbox(
                            value: _aceitaTermos,
                            checkColor: const Color(0xFFFAF9F7),
                            activeColor: const Color(0xFFFFBB12),
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            visualDensity: VisualDensity.compact,
                            side: const BorderSide(
                                color: Color(0xFFD1CDC5), width: 2),
                            onChanged: (bool? value) {
                              setState(() {
                                _aceitaTermos = value ?? false;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Concordo com os Termos e Condições',
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: const Color(0xFF454136),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // ação do botão
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFBB12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Cadastrar Conta',
                          style: GoogleFonts.roboto(
                            color: const Color(0xFF784601),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
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
      ),
    );
  }

  Widget _inputLabel(String text) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: const Color(0xFF454136),
      ),
    );
  }

  Widget _inputField() {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFFAF9F7),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFD1CDC5), width: 2),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFFFBB12), width: 2),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
