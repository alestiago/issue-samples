import 'package:analyzer/error/listener.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// {@template avoid_d_prefixed_variables}
/// A lint rule that enforces that variables do not start with "d".
/// {@endtemplate}
class AvoidDPrefixedVariables extends DartLintRule {
  /// {@macro avoid_d_prefixed_variables}
  AvoidDPrefixedVariables() : super(code: _code);

  static const _code = LintCode(
    name: 'avoid_d_prefixed_variables',
    problemMessage: 'Variables should not start with "d".',
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
      if (name.startsWith('d')) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }
}
