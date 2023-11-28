import 'package:mason/mason.dart';

void run(
  HookContext context, {
  String msg = 'hello',
}) {
  context.logger.info(msg);
}
