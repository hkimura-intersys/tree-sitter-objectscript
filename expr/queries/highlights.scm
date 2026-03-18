(pattern_expression) @string.regexp

[
  (json_number_literal)
  (numeric_literal)
] @number

[
  (json_null_literal)
  (json_string_literal)
  (string_literal)
] @string

[
  (keyword_pound_pound_super)
  (keyword_pound_pound_class)
] @keyword.directive

(system_defined_variable) @variable.builtin

(system_defined_function) @function.builtin

(sql_field_modifier) @keyword.modifier

[
  (property_name)
  (parameter_name)
] @variable.member

(method_name) @function.method

(class_name) @type

(macro) @constant

[
  (routine_ref)
  (sql_field_identifier)
  (lvn)
  (gvn)
  (ssvn)
  (objectscript_identifier)
] @variable

(instance_variable) @variable.member

(method_arg) @variable.parameter

; I didn't include ( or ) in this, because they are often grouped
; as part of a sequence that gets turned into a single token, so they
; don't get matched, and one ends up getting colored differently than the other.
[
  "_"
  ","
  ":"
  ".."
  "..."
  "'["
  "']"
  "']]"
  "\""
  "\"\""
  "["
  "]"
  "]]"
  "{"
  "}"
  "/"
  "\\"
  "#"
  "|"
  "||"
  "$$"
] @punctuation.delimiter

[
  "'&"
  "&"
  "&&"
  "'<"
  "'="
  "'>"
  "^"
  "-"
  "^$"
  "+"
  "<"
  "<="
  "="
  ">"
  ">="
  "@"
  "*"
  "**"
  "'"
  "'!"
  "'?"
  "!"
  "?"
] @operator

(json_boolean_literal) @boolean

(bracket) @punctuation.bracket
