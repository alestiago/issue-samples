import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// {@template avoid_l_prefixed_variables}
/// A lint rule that enforces that variables do not start with "l".
/// {@endtemplate}
class AvoidLPrefixedVariables extends DartLintRule {
  /// {@macro avoid_l_prefixed_variables}
  AvoidLPrefixedVariables() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_l_prefixed_variables',
    problemMessage: 'Variables should not start with "l".',
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
      if (name.startsWith('l')) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
