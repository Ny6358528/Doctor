import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routing_name.dart';
import '../../logic/cubit/login_cubit.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading ||
          current is Success ||
          current is Failure,

      listener: (context, state) {
        state.whenOrNull(

          /// Loading
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return PopScope(
                  canPop: false,
                  child: Dialog(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 28,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [

                          CircularProgressIndicator(),

                          SizedBox(height: 20),

                          Icon(
                            Icons.lock_outline_rounded,
                            size: 40,
                            color: Colors.blue,
                          ),

                          SizedBox(height: 12),

                          Text(
                            "Logging in...",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight:
                                  FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },

          /// Success
          success: (data) {

            /// Close Loading Dialog
            context.pop();

            /// Success Snackbar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  children: const [
                    Icon(
                      Icons.check_circle,
                      color: Colors.white,
                    ),

                    SizedBox(width: 12),

                    Text("Login Success"),
                  ],
                ),

                backgroundColor: Colors.green,

                behavior:
                    SnackBarBehavior.floating,

                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(14),
                ),

                margin: const EdgeInsets.all(16),
              ),
            );

            /// Navigate To Home
            context.go(RoutingName.kHomeScreen);
          },

          /// Failure
          failure: (error) {

            /// Close Loading Dialog
            context.pop();

            /// Error Dialog
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20),
                  ),

                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 28,
                    ),

                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min,

                      children: [

                        /// Error Icon
                        Container(
                          padding:
                              const EdgeInsets.all(
                            16,
                          ),

                          decoration: BoxDecoration(
                            color: Colors.red
                                .withOpacity(.1),

                            shape: BoxShape.circle,
                          ),

                          child: const Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 45,
                          ),
                        ),

                        const SizedBox(height: 20),

                        /// Title
                        const Text(
                          "Login Failed",

                          style: TextStyle(
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 12),

                        /// Message
                        Text(
                          error,

                          textAlign:
                              TextAlign.center,

                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),

                        const SizedBox(height: 24),

                        /// Button
                        SizedBox(
                          width: double.infinity,

                          child: ElevatedButton(
                            onPressed: () {
                              context.pop();
                            },

                            style: ElevatedButton
                                .styleFrom(
                            

                              shape:
                                  RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius
                                        .circular(
                                  14,
                                ),
                              ),
                            ),

                            child: const Text(
                              "Try Again",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },

      child: const SizedBox.shrink(),
    );
  }
}