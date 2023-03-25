import 'package:flutter/material.dart';
import 'package:mock_google_doc/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mock_google_doc/repository/auth_repository.dart';
import 'package:mock_google_doc/screens/home_screen.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  void signInWithGoogle(WidgetRef ref, BuildContext context) async {
    final sMessenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final errorModel =
        await ref.read(authRepositoryProvider).signInWithGoogle();
    if (errorModel.error == null) {
      ref.read(userProvider.notifier).update((state) => errorModel.data);
      navigator
          .push(MaterialPageRoute(builder: (context) => const HomeScreen()));
    } else {
      sMessenger.showSnackBar(
        SnackBar(
          content: Text(errorModel.error!),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Center(
            child: ElevatedButton.icon(
                onPressed: () => signInWithGoogle(ref, context),
                icon: Image.asset(
                  'assets/images/g-logo.png',
                  height: 20,
                ),
                label: const Text('Sign in with Google',
                    style: TextStyle(color: kBlackColor)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: kWhiteColor,
                  minimumSize: const Size(150, 50),
                ))));
  }
}
