import 'package:doctor_app/featured/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routing_name.dart';

class SignupBlocListener extends StatelessWidget {
  final Widget child;

  const SignupBlocListener({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) async {
        if (!context.mounted) return;

        state.whenOrNull(
          /// LOADING
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },

          /// SUCCESS
          success: (data) async {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Signup Success"),
              ),
            );

            await Future.delayed(
              const Duration(milliseconds: 600),
            );

            if (context.mounted) {
              context.go(
                RoutingName.kHomeScreen,
              );
            }
          },

          /// FAILURE
          failure: (error) {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
              ),
            );
          },
        );
      },

      child: child,
    );
  }
}