import 'package:admin_dashboard/exports/exports_packages.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Image.asset(
            'lib/assets/icons/test.png',
            width: 100.0,
            height: 100.0,
          ),
          const SizedBox(height: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Los Piñeros en Línea',
                  style: GoogleFonts.orbitron(
                    color: Colors.green,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'Movimiento Político afiliado al P.R.M.',
                  style: GoogleFonts.montserratAlternates(
                    color: const Color.fromARGB(255, 26, 94, 241),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
