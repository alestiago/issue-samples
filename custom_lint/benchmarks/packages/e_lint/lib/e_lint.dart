import 'package:e_lint/rules/rules.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// Entry point for the lint plugin.
PluginBase createPlugin() => _ELint();

class _ELint extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        AvoidEPrefixedVariables(),
      ];
}
