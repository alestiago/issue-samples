import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// {@template avoid_g_prefixed_variables}
/// A lint rule that enforces that variables do not start with "g".
/// {@endtemplate}
class AvoidGPrefixedVariables extends DartLintRule {
  /// {@macro avoid_g_prefixed_variables}
  AvoidGPrefixedVariables() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_g_prefixed_variables',
    problemMessage: 'Variables should not start with "g".',
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
      if (name.startsWith('g')) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
