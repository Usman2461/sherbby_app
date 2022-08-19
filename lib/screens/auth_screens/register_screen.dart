import 'package:flutter/material.dart';
import 'package:sherbby_app/providers/theme_provider.dart';
import 'package:sherbby_app/screens/auth_screens/register_option.dart';
import 'package:sherbby_app/screens/auth_screens/registeration_confirmation.dart';
import 'package:sherbby_app/widgets/button_widget.dart';
import 'package:provider/provider.dart';
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      //   leading: Builder(
      //     builder: (context) {
      //       return IconButton(
      //           onPressed: () => Scaffold.of(context).openDrawer(),
      //           icon: Icon(
      //             Icons.arrow_back_outlined,
      //             color: Colors.grey,
      //           ));
      //     },
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //
      //         ThemeProvider themeProvider = Provider.of<ThemeProvider>(context, listen: false);
      //         if( themeProvider.themeMode==ThemeMode.light) {
      //           themeProvider.changeTheme(ThemeMode.dark);
      //         } else {
      //           themeProvider.changeTheme(ThemeMode.light);
      //         }
      //
      //       },
      //       icon: ImageIcon(
      //         AssetImage("assets/images/moon.png"),
      //         color: Colors.grey,
      //       ),
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: ImageIcon(
      //         AssetImage("assets/images/help.png"),
      //         color: Colors.grey,
      //       ),
      //     ),
      //   ],
      // ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       SizedBox(height: 10,),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text("Bienvenue sur Binance", style: TextStyle(
      //                 color: Colors.black,
      //                 fontSize: 24,
      //                 fontWeight: FontWeight.bold),),
      //             SizedBox(height: 5.0,),
      //             Text(
      //               "Rejoignez la plus grande plateforme d'echange de cryptos au monde",
      //               style: TextStyle(color: Colors.grey, fontSize: 16,),),
      //             SizedBox(height: 15.0,),
      //             Container(
      //               width: MediaQuery.of(context).size.width,
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //                 children: [
      //                   Expanded(
      //                     child: ButtonWidget(onTap: () {
      //                       Navigator.of(context).push(MaterialPageRoute(
      //                           builder: (context) => RegisterConfirmation()));
      //                     }, title: "S'inscrire", colors: Colors.grey.shade200),
      //                   ),
      //                   SizedBox(width: 20.0,),
      //                   Expanded(
      //                     child: ButtonWidget(onTap: () {},
      //                       title: "Se connecter",
      //                       colors: Colors.amberAccent,),
      //                   )
      //                 ],
      //               ),
      //             ),
      //             SizedBox(height: 20,),
      //             Divider(),
      //             SizedBox(height: 15,),
      //           ],
      //         ),
      //       ),
      //
      //       Container(
      //           padding: EdgeInsets.all(6),
      //           width: double.infinity,
      //           child: Image(image: AssetImage("assets/images/sherbbycom.png"),
      //             fit: BoxFit.contain,)),
      //       SizedBox(height: 20,),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Veuillez ne pas communiquer les codes d'authentication SMS et Google a qui que ce soit, y compris au service d'assistance client de Binance",
      //           style: TextStyle(color: Colors.grey, fontSize: 16,),),
      //       ),
      //       SizedBox(height: 50,),
      //     ],
      //
      //   ),
      // ),
    );
  }
}
