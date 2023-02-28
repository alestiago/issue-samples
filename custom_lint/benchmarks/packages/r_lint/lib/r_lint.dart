import 'package:r_lint/rules/rules.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// Entry point for the lint plugin.
PluginBase createPlugin() => _RLint();

class _RLint extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        AvoidRPrefixedVariables(),
      ];
}
