import 'package:k_lint/rules/rules.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// Entry point for the lint plugin.
PluginBase createPlugin() => _KLint();

class _KLint extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        AvoidKPrefixedVariables(),
      ];
}
