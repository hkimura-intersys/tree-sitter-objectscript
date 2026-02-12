(pattern_expression) @string.regex
(numeric_literal) @number
(string_literal) @string

(system_defined_variable
  _ @variable.special)

(dollarsf
  .
  _ @variable.special)

(dollar_function
  .
  _ @variable.special)

(built_in_functions_with_optional_args
  .
  _ @variable.special)

operator: (_) @operator

(dollarsf "." @punctuation.special)
(json_boolean_literal) @boolean
