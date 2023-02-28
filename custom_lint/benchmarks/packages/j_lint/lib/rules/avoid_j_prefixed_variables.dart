import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// {@template avoid_j_prefixed_variables}
/// A lint rule that enforces that variables do not start with "j".
/// {@endtemplate}
class AvoidJPrefixedVariables extends DartLintRule {
  /// {@macro avoid_j_prefixed_variables}
  AvoidJPrefixedVariables() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_j_prefixed_variables',
    problemMessage: 'Variables should not start with "j".',
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
      if (name.startsWith('j')) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
