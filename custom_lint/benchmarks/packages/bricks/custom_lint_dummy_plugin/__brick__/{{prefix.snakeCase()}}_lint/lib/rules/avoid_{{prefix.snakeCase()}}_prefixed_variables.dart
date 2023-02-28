import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// {@template avoid_{{prefix.snakeCase()}}_prefixed_variables}
/// A lint rule that enforces that variables do not start with "{{prefix.snakeCase()}}".
/// {@endtemplate}
class Avoid{{prefix.pascalCase()}}PrefixedVariables extends DartLintRule {
  /// {@macro avoid_{{prefix.snakeCase()}}_prefixed_variables}
  Avoid{{prefix.pascalCase()}}PrefixedVariables() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_{{prefix.snakeCase()}}_prefixed_variables',
    problemMessage: 'Variables should not start with "{{prefix.snakeCase()}}".',
  );

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addVariableDeclaration((node) {
      final element = node.declaredElement;
      if (element == null) return;

      final name = element.name;
      if (name.startsWith('{{prefix.snakeCase()}}')) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
