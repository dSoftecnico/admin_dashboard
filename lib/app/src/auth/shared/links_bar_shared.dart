import 'package:admin_dashboard/exports/exports_packages.dart';
import 'package:admin_dashboard/exports/exports_widgets.dart';

class LinksBarShared extends StatelessWidget {
  const LinksBarShared({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      color: const Color(0xFF181818).withOpacity(.8),
      height: size.height * .05,
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          const LinkCopyr(text: '© 2022 Softecnico'),
          // const SizedBox(width: 50.0),
          LinkText(text: 'Términos y Condiciones', onPressed: () {}),
          LinkText(text: 'Políticas de Privacidad', onPressed: () {}),
          LinkText(text: '¿Quienes somos?', onPressed: () {}),
          LinkText(text: 'Contacto', onPressed: () {}),
        ],
      ),
    );
  }
}
