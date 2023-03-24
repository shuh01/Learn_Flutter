import 'package:flutter/material.dart';
import 'package:mock_google_doc/colors.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mock_google_doc/repository/auth_repository.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  void signInWithGoogle(WidgetRef ref) {
    ref.read(authRepositoryProvider).signInWithGoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Center(
            child: ElevatedButton.icon(
                onPressed: () => signInWithGoogle(ref),
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
