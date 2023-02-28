import 'package:n_lint/rules/rules.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// Entry point for the lint plugin.
PluginBase createPlugin() => _NLint();

class _NLint extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        AvoidNPrefixedVariables(),
      ];
}
