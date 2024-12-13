import 'package:flutter/material.dart';
import 'package:asistencia_escuela_deportes/components/navbar.dart';
import 'package:asistencia_escuela_deportes/components/primary_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _switchValue1 = true;
  bool _switchValue2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAF9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage:  AssetImage('assets/images/google.png'),
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          'Nombre de Usuario',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Estudiante',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      child: PrimaryButton(
                        buttonText: 'Editar',
                        onPressed: () {
                          // Acción para editar
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                _buildCardSection(
                  title: 'Cuenta',
                  rows: [
                    _buildRow(
                      icon: Icons.person_pin_circle_outlined,
                      title: 'Datos personales',
                      onTap: () {},
                    ),
                    _buildRow(
                      icon: Icons.receipt_long_rounded,
                      title: 'Logros',
                      onTap: () {},
                    ),
                    _buildRow(
                      icon: Icons.pie_chart_outline_rounded,
                      title: 'Historial de asistencias',
                      onTap: () {},
                    ),
                    _buildRow(
                      icon: Icons.insert_chart_outlined_rounded,
                      title: 'Workout Progress',
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildCardSection(
                  title: 'Notificaciones',
                  rows: [
                    _buildSwitchRow(
                      icon: Icons.notifications_none,
                      title: 'Notificaciones Emergentes',
                      value: _switchValue1,
                      onChanged: (newValue) {
                        setState(() {
                          _switchValue1 = newValue;
                        });
                      },
                    ),
                    _buildSwitchRow(
                      icon: Icons.mark_email_unread_outlined,
                      title: 'Notificaciones por Email',
                      value: _switchValue2,
                      onChanged: (newValue) {
                        setState(() {
                          _switchValue2 = newValue;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildCardSection(
                  title: 'Otros',
                  rows: [
                    _buildRow(
                      icon: Icons.contact_support_outlined,
                      title: 'Contáctanos',
                      onTap: () {},
                    ),
                    _buildRow(
                      icon: Icons.privacy_tip_outlined,
                      title: 'Políticas de Privacidad',
                      onTap: () {},
                    ),
                    _buildRow(
                      icon: Icons.settings_outlined,
                      title: 'Ajustes',
                      onTap: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Navbar(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/camera'); // Reemplazar con ruta de cámara
          } else if (index == 2) {
            Navigator.pushNamed(context, '/profile');
          }
        },
      ),
    );
  }

  Widget _buildCardSection({required String title, required List<Widget> rows}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        color: Colors.transparent,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                ...rows,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow({required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF9DCEFF)),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
      trailing: const Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    );
  }

  Widget _buildSwitchRow({
    required IconData icon,
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return SwitchListTile(
      activeColor: const Color(0xFF84468E),
      secondary: Icon(icon, color: const Color(0xFF7B6F72)),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
      value: value,
      onChanged: onChanged,
    );
  }
}
