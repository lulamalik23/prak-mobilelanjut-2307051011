import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const String route = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Latar belakang abu-abu muda
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0), // Jarak dari tepi layar
        children: [
          // --- Teks Sapaan ---
          const Text(
            'Selamat Datang,',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const Text(
            'Lula Malikatul Fajri',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // --- Kartu Informasi Saldo ---
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF1E88FF), Color(0xFF207DFF)],
              ),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                 color: Colors.black.withValues(alpha: 0.1),

                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Judul saldo
                Row(
                  children: const [
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Saldo Saat Ini',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'Rp 2.349.500',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),

                // Tombol lihat detail transaksi
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF1E88FF),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text('Lihat Detail Transaksi'),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // --- Menu Cepat ---
          const Text(
            'Menu Cepat',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildQuickAction(Icons.send, 'Transfer'),
              _buildQuickAction(Icons.add_card, 'Top Up'),
              _buildQuickAction(Icons.shopping_cart, 'Belanja'),
              _buildQuickAction(Icons.settings, 'Pengaturan'),
            ],
          ),

          const SizedBox(height: 20),

          // --- Transaksi Terbaru ---
          const Text(
            'Transaksi Terbaru',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const ListTile(
            leading: Icon(Icons.arrow_upward, color: Colors.red),
            title: Text('Transfer ke Adit'),
            trailing: Text('- Rp 100.000'),
          ),
          const ListTile(
            leading: Icon(Icons.arrow_downward, color: Colors.green),
            title: Text('Top Up Dana'),
            trailing: Text('+ Rp 200.000'),
          ),
          const ListTile(
            leading: Icon(Icons.shopping_cart, color: Colors.blue),
            title: Text('Beli Pulsa'),
            trailing: Text('- Rp 50.000'),
          ),
        ],
      ),
    );
  }

  // --- Widget kecil untuk Menu Cepat ---
  static Widget _buildQuickAction(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: const Color(0xFF1E88FF),
          child: Icon(icon, color: Colors.white, size: 28),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
