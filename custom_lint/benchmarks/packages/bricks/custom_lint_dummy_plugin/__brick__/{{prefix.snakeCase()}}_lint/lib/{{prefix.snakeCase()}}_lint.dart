import 'package:{{prefix.snakeCase()}}_lint/rules/rules.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// Entry point for the lint plugin.
PluginBase createPlugin() => _{{prefix.pascalCase()}}Lint();

class _{{prefix.pascalCase()}}Lint extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        Avoid{{prefix.pascalCase()}}PrefixedVariables(),
      ];
}
