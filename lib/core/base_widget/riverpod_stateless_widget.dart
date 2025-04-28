import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RiverpodStatelessWidget<T> extends ConsumerWidget {
  const RiverpodStatelessWidget({
    super.key,
    required this.provider,
    required this.child,
    this.errorWidget,
    this.loading,
  });

  final AutoDisposeFutureProvider<T> provider;
  final Widget Function(T) child;
  final Widget Function(Object, StackTrace)? errorWidget;
  final Widget Function()? loading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(provider);
    return state.when(
      data: child,
      loading:
          loading ?? () => const Center(child: CircularProgressIndicator()),
      error: errorWidget ??
          (error, stackTrace) => Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Failed to load movies: ${(error as GenericError).cause}'),
                      ElevatedButton(
                        onPressed: () => ref.refresh(provider),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}
