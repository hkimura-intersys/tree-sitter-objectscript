(pattern_expression) @string.regex
(numeric_literal) @number
(string_literal) @string

(keyword_pound_pound_class) @variable.special

(system_defined_variable) @variable.special
(system_defined_function) @variable.special


; I didn't include ( or ) in this, because they are often grouped 
; as part of a sequence that gets turned into a single token, so they 
; don't get matched, and one ends up getting colored differently than the other.
[
  "_"
  "-"
  ","
  ":"
  "!"
  "?"
  "."
  ".."
  "..."
  "'"
  "'!"
  "'?"
  "'["
  "']"
  "']]"
  "'&"
  "'<"
  "'="
  "'>"
  "\""
  "\"\""
  "["
  "]"
  "]]"
  "{"
  "}"
  "@"
  "*"
  "**"
  "/"
  "\\"
  "&"
  "&&"
  "#"
  "^"
  "^$"
  "+"
  "<"
  "<="
  "="
  ">"
  ">="
  "|"
  "||"
] @punctuation

(json_boolean_literal) @boolean
