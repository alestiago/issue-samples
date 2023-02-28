import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// {@template avoid_k_prefixed_variables}
/// A lint rule that enforces that variables do not start with "k".
/// {@endtemplate}
class AvoidKPrefixedVariables extends DartLintRule {
  /// {@macro avoid_k_prefixed_variables}
  AvoidKPrefixedVariables() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_k_prefixed_variables',
    problemMessage: 'Variables should not start with "k".',
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
      if (name.startsWith('k')) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
