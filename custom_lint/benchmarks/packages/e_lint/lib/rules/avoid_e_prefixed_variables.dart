import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// {@template avoid_e_prefixed_variables}
/// A lint rule that enforces that variables do not start with "e".
/// {@endtemplate}
class AvoidEPrefixedVariables extends DartLintRule {
  /// {@macro avoid_e_prefixed_variables}
  AvoidEPrefixedVariables() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_e_prefixed_variables',
    problemMessage: 'Variables should not start with "e".',
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
      if (name.startsWith('e')) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
